package com.pro.exp.service.exception;

public class ApiRuntimeException extends RuntimeException {
    private int httpCode;
    private String message;
    private int errorCode;

    public void setHttpCode(int httpCode)
    {
        this.httpCode = httpCode;
    }

    public void setMessage(String message)
    {
        this.message = message;
    }

    public void setErrorCode(int errorCode)
    {
        this.errorCode = errorCode;
    }

    public boolean equals(Object o)
    {
        if (o == this) {
            return true;
        }
        if (!(o instanceof ApiRuntimeException)) {
            return false;
        }
        ApiRuntimeException other = (ApiRuntimeException)o;
        if (!other.canEqual(this)) {
            return false;
        }
        if (getHttpCode() != other.getHttpCode()) {
            return false;
        }
        Object this$message = getMessage();Object other$message = other.getMessage();
        if (this$message == null ? other$message != null : !this$message.equals(other$message)) {
            return false;
        }
        return getErrorCode() == other.getErrorCode();
    }

    protected boolean canEqual(Object other)
    {
        return other instanceof ApiRuntimeException;
    }

    public int hashCode()
    {
        int PRIME = 59;int result = 1;result = result * 59 + getHttpCode();Object $message = getMessage();result = result * 59 + ($message == null ? 43 : $message.hashCode());result = result * 59 + getErrorCode();return result;
    }

    public String toString()
    {
        return "ApiRuntimeException(httpCode=" + getHttpCode() + ", message=" + getMessage() + ", errorCode=" + getErrorCode() + ")";
    }

    public int getHttpCode()
    {
        return this.httpCode;
    }

    public String getMessage()
    {
        return this.message;
    }

    public int getErrorCode()
    {
        return this.errorCode;
    }

    public ApiRuntimeException(int httpCode, int errorCode, String message)
    {
        this.httpCode = httpCode;
        this.message = message;
        this.errorCode = errorCode;
    }


}
