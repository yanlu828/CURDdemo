package com.silverdawn.curddemo.vo;

public class JsonResponse<T> {
    private T result;
    private String message;
    private boolean flag;
    public T getResult() {
        return result;
    }

    public void setResult(T result) {
        this.result = result;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public JsonResponse(boolean flag) {
        this.flag = flag;
    }

    public JsonResponse(boolean flag, String message, T result) {
        this.result = result;
        this.message = message;
        this.flag = flag;
    }

    public JsonResponse() {
    }

    public JsonResponse(boolean flag, String message) {
        this.message = message;
        this.flag = flag;
    }
}
