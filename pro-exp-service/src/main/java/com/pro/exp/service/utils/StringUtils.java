package com.pro.exp.service.utils;

import com.google.common.base.Splitter;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class StringUtils extends org.apache.commons.lang3.StringUtils {
    private static final char SEPARATOR = '_';
    private static final String UTF_8 = StandardCharsets.UTF_8.name();

    public static byte[] getBytes(String str)
    {
        if (str != null) {
            try
            {
                return str.getBytes(UTF_8);
            }
            catch (UnsupportedEncodingException e)
            {
                return null;
            }
        }
        return null;
    }

    public static String toString(byte[] bytes)
    {
        try
        {
            return new String(bytes, UTF_8);
        }
        catch (UnsupportedEncodingException e) {}
        return "";
    }

    public static boolean inString(String str, String... strs)
    {
        if (str != null) {
            for (String s : strs) {
                if (str.equals(s.trim())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String replaceHtml(String html)
    {
        if (isBlank(html)) {
            return "";
        }
        String regEx = "<.+?>";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(html);
        String s = m.replaceAll("");
        return s;
    }

    public static Double toDouble(Object val)
    {
        if (val == null) {
            return Double.valueOf(0.0D);
        }
        try
        {
            return Double.valueOf(trim(val.toString()));
        }
        catch (Exception e) {}
        return Double.valueOf(0.0D);
    }

    public static Float toFloat(Object val)
    {
        return Float.valueOf(toDouble(val).floatValue());
    }

    public static Long toLong(Object val)
    {
        return Long.valueOf(toDouble(val).longValue());
    }

    public static Integer toInteger(Object val)
    {
        return Integer.valueOf(toLong(val).intValue());
    }

    public static String toCamelCase(String s)
    {
        if (s == null) {
            return null;
        }
        s = s.toLowerCase();

        StringBuilder sb = new StringBuilder(s.length());
        boolean upperCase = false;
        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
            if (c == '_')
            {
                upperCase = true;
            }
            else if (upperCase)
            {
                sb.append(Character.toUpperCase(c));
                upperCase = false;
            }
            else
            {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    public static String toCapitalizeCamelCase(String s)
    {
        if (s == null) {
            return null;
        }
        s = toCamelCase(s);
        return s.substring(0, 1).toUpperCase() + s.substring(1);
    }

    public static String toUnderScoreCase(String s)
    {
        if (s == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean upperCase = false;
        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);

            boolean nextUpperCase = true;
            if (i < s.length() - 1) {
                nextUpperCase = Character.isUpperCase(s.charAt(i + 1));
            }
            if ((i > 0) && (Character.isUpperCase(c)))
            {
                if ((!upperCase) || (!nextUpperCase)) {
                    sb.append('_');
                }
                upperCase = true;
            }
            else
            {
                upperCase = false;
            }
            sb.append(Character.toLowerCase(c));
        }
        return sb.toString();
    }

    public static void setValueIfNotBlank(String target, String source)
    {
        if (isNotBlank(source)) {
            target = source;
        }
    }

    public static String jsGetVal(String objectString)
    {
        StringBuilder result = new StringBuilder();
        StringBuilder val = new StringBuilder();
        String[] vals = split(objectString, ".");
        for (int i = 0; i < vals.length; i++)
        {
            val.append("." + vals[i]);
            result.append("!" + val.substring(1) + "?'':");
        }
        result.append(val.substring(1));
        return result.toString();
    }

    public static String listToString(List<String> list, String separator)
    {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append((String)list.get(i)).append(separator);
        }
        return sb.toString().substring(0, sb.toString().length() - 1);
    }

    public static String encodeHtml(String html)
    {
        String retStr = html;
        retStr = retStr.replaceAll("&", "&amp;");
        retStr = retStr.replaceAll("<", "&lt;");
        retStr = retStr.replaceAll(">", "&gt;");
        retStr = retStr.replaceAll("/", "&#47;");

        retStr = retStr.replaceAll("\"", "&quot;");
        return retStr;
    }

    public static String stringFilter(String str)
    {
        String regex = "[^a-zA-Z0-9��-��]*";
        Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(str);
        return m.replaceAll("").trim();
    }

    public static boolean isMobile(String str)
    {
        Pattern p = null;
        Matcher m = null;
        boolean b = false;
        p = Pattern.compile("^[1][3,4,5,6,7,8,9][0-9]{9}$");
        m = p.matcher(str);
        b = m.matches();
        return b;
    }

    public static boolean isPhone(String str)
    {
        Pattern p1 = null;Pattern p2 = null;
        Matcher m = null;
        boolean b = false;
        p1 = Pattern.compile("^[0][1-9]{2,3}-[0-9]{5,10}$");
        p2 = Pattern.compile("^[1-9]{1}[0-9]{5,8}$");
        if (str.length() > 9)
        {
            m = p1.matcher(str);
            b = m.matches();
        }
        else
        {
            m = p2.matcher(str);
            b = m.matches();
        }
        return b;
    }

    public static String getUUID()
    {
        UUID uuid = UUID.randomUUID();
        String newuuid = String.valueOf(uuid).replace("-", "");
        return newuuid;
    }

    public static boolean paramLength(String param)
    {
        return (param != null) && (param.split(",").length > 1);
    }

    public static boolean contains(String strlist, String target)
    {
        boolean flag = false;
        if (isNotEmpty(strlist))
        {
            List<String> list = Splitter.on(",").trimResults().splitToList(strlist);
            flag = list.contains(target);
        }
        return flag;
    }

    public static String getRandomString(int length)
    {
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < length; i++)
        {
            int number = random.nextInt(3);
            long result = 0L;
            switch (number)
            {
                case 0:
                    result = Math.round(Math.random() * 25.0D + 65.0D);

                    sb.append(String.valueOf((char)(int)result));
                    break;
                case 1:
                    result = Math.round(Math.random() * 25.0D + 97.0D);
                    sb.append(String.valueOf((char)(int)result));
                    break;
                case 2:
                    sb.append(
                            String.valueOf(new Random().nextInt(10)));
            }
        }
        return sb.toString();
    }

    public static boolean isValidPassword(String password)
    {
        String regex = "[a-zA-Z0-9]{6,20}";
        if (password == null) {
            return false;
        }
        if (password.matches(regex)) {
            return true;
        }
        return false;
    }
}
