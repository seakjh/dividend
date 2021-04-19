package com.baedang.view.common.exception;

public class MemberAuthException extends RuntimeException{
	public MemberAuthException(String msg) {
		super(msg);
	}
	public MemberAuthException(Throwable e) {
		super(e);
	}
	public MemberAuthException(String msg, Throwable e) {
		super(msg, e);
	}	
}
