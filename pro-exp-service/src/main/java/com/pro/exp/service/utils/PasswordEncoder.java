package com.pro.exp.service.utils;

public interface PasswordEncoder {
    public abstract String encode(CharSequence paramCharSequence);

    public abstract boolean matches(CharSequence paramCharSequence, String paramString);
}
