package com.mz2b.framework.exception;

public class IllegalAccessException extends Exception {
	private static final long serialVersionUID = 1L;

	public IllegalAccessException(){
		super();
	}
	
    public IllegalAccessException(String message) {
    	super(message);
    }
    
    public IllegalAccessException(String message, Throwable cause) {
        super(message, cause);
    }
    
    public IllegalAccessException(Throwable cause) {
        super(cause);
    }
}
