package com.baedang.view.common.exception;

//예외의 원인을 보다 체계적이고 직관적으로 처리하기 위해
//최상위 예외를 바로 사용하지 말고, 개발자가 예외처리 전략을 세워
//체계적인 예외에 대한 로직을 작성해보자!!
public class FileException extends RuntimeException{
	public FileException(String msg) {
		super(msg);
	}
	public FileException(Throwable e) {
		super(e);
	}
	
	public FileException(String msg, Throwable e) {
		super(msg, e);
	}
	
	
}
