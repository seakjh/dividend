package com.baedang.view.common.exception;

public class DataNotFoundException extends RuntimeException{
	public DataNotFoundException(String msg) {
		super(msg);
	}
	public DataNotFoundException(Throwable e) {
		super(e);
	}
	public DataNotFoundException(String msg, Throwable e) {
		super(msg, e);
	}
}
