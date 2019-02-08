package com.pro.exp.service.utils;

import java.security.SecureRandom;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BCryptPasswordEncoder implements PasswordEncoder {
    private Pattern BCRYPT_PATTERN = Pattern.compile("\\A\\$2a?\\$\\d\\d\\$[./0-9A-Za-z]{53}");
    private final Logger logger = LoggerFactory.getLogger(getClass());
    private final int strength;
    private final SecureRandom random;

    public BCryptPasswordEncoder()
    {
        this(-1);
    }

    public BCryptPasswordEncoder(int strength)
    {
        this(strength, null);
    }

    public BCryptPasswordEncoder(int strength, SecureRandom random)
    {
        if ((strength != -1) && ((strength < 4) || (strength > 31))) {
            throw new IllegalArgumentException("Bad strength");
        }
        this.strength = strength;
        this.random = random;
    }

    public String encode(CharSequence rawPassword)
    {
        String salt;
        if (this.strength > 0)
        {
            if (this.random != null) {
                salt = BCrypt.gensalt(this.strength, this.random);
            } else {
                salt = BCrypt.gensalt(this.strength);
            }
        }
        else
        {
            salt = BCrypt.gensalt();
        }
        return BCrypt.hashpw(rawPassword.toString(), salt);
    }

    public boolean matches(CharSequence rawPassword, String encodedPassword)
    {
        if ((encodedPassword == null) || (encodedPassword.length() == 0))
        {
            this.logger.warn("Empty encoded password");
            return false;
        }
        if (!this.BCRYPT_PATTERN.matcher(encodedPassword).matches())
        {
            this.logger.warn("Encoded password does not look like BCrypt");
            return false;
        }
        return BCrypt.checkpw(rawPassword.toString(), encodedPassword);
    }
}
