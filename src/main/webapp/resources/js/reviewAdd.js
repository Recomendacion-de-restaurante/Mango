let count = 0;


$("#clcl").click(function() {
	if (count > 3) {
		alert('최대 3개의 사진만 업로드 가능합니다.')
		return;
	}

	console.log("파파파파파파")

	let result = '';
//	result = '<div class="uploadBox">	'
	result = result + '<input type="file" name="files" class="real-upload" accept="image/*" required multiple>';


	result = result + ' <div class="upload">uplaodd</div> ';
	$(".fileResult").append(result);
	count++;
})



 function getImageFiles(e) {
      const uploadFiles = [];
      const files = e.currentTarget.files;
      const imagePreview = document.querySelector('.image-preview');
      const docFrag = new DocumentFragment();

      if ([...files].length >= 7) {
        alert('이미지는 최대 6개 까지 업로드가 가능합니다.');
        return;
      }

      // 파일 타입 검사
      [...files].forEach(file => {
        if (!file.type.match("image/.*")) {
          alert('이미지 파일만 업로드가 가능합니다.');
          return
        }

        // 파일 갯수 검사
        if ([...files].length < 7) {
          uploadFiles.push(file);
          const reader = new FileReader();
          reader.onload = (e) => {
            const preview = createElement(e, file);
            imagePreview.appendChild(preview);
          };
          reader.readAsDataURL(file);
        }
      });
    }

    function createElement(e, file) {
      const li = document.createElement('li');
      const img = document.createElement('img');
      img.setAttribute('src', e.target.result);
      img.setAttribute('data-file', file.name);
      li.appendChild(img);

      return li;
    }

  //  const realUpload = document.querySelector('.real-upload');
   // const upload = document.querySelector('.upload');

	$("#reviewpicBox").on("click",".upload",function(){
		$(this).prev().click();
	})

	$("#reviewpicBox").on("change",".real-upload",function(e){
		getImageFiles(e);
	})


		
	
    //upload.addEventListener('click', () => realUpload.click());


   // realUpload.addEventListener('change', getImageFiles);
