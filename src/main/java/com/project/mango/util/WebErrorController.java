/*
 * package com.project.mango.util;
 * 
 * import javax.servlet.RequestDispatcher; import
 * javax.servlet.http.HttpServletRequest;
 * 
 * import org.springframework.boot.web.servlet.error.ErrorController; import
 * org.springframework.http.HttpStatus; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.GetMapping;
 * 
 * @Controller public class WebErrorController implements ErrorController {
 * 
 * public String getErrorPath() { return null; }
 * 
 * @GetMapping("/error") public String handleError(HttpServletRequest request) {
 * Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
 * 
 * if(status != null){ int statusCode = Integer.valueOf(status.toString());
 * 
 * if(statusCode == HttpStatus.NOT_FOUND.value()) { return "error/404error"; }
 * else { return "error/error"; } }
 * 
 * return "error/error"; }
 * 
 * }
 */