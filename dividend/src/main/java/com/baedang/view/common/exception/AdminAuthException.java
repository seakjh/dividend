package com.baedang.view.common.exception;

public class AdminAuthException extends RuntimeException{
	
	public AdminAuthException(String msg) {
		super(msg);
	}
	public AdminAuthException(Throwable e) {
		super(e);
	}
	public AdminAuthException(String msg, Throwable e) {
		super(msg, e);
	}
	
}
