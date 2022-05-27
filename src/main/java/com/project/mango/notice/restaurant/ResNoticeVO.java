package com.project.mango.notice.restaurant;

import java.util.List;

import com.project.mango.board.BoardVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class ResNoticeVO extends BoardVO{

	private Long restaurantNum;

	
	private List<ResFilesVO> filesVOs;

}
