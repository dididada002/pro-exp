package com.pro.exp.service.utils;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

public class Base64Util {
    private static final char[] base64EncodeChars = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/' };
    private static final byte[] base64DecodeChars = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1 };

    public static final String encode(String str, String charsetName)
    {
        return encode(str, charsetName, 0);
    }

    public static final String encode(String str, String charsetName, int width)
    {
        byte[] data = null;
        try
        {
            data = str.getBytes(charsetName);
        }
        catch (UnsupportedEncodingException e)
        {
            e.printStackTrace();
            return null;
        }
        int length = data.length;
        int size = (int)Math.ceil(length * 1.36D);
        int splitsize = width > 0 ? size / width : 0;
        StringBuffer sb = new StringBuffer(size + splitsize);
        int r = length % 3;
        int len = length - r;
        int i = 0;
        while (i < len)
        {
            int c = (0xFF & data[(i++)]) << 16 | (0xFF & data[(i++)]) << 8 | 0xFF & data[(i++)];

            sb.append(base64EncodeChars[(c >> 18)]);
            sb.append(base64EncodeChars[(c >> 12 & 0x3F)]);
            sb.append(base64EncodeChars[(c >> 6 & 0x3F)]);
            sb.append(base64EncodeChars[(c & 0x3F)]);
        }
        if (r == 1)
        {
            int c = 0xFF & data[(i++)];
            sb.append(base64EncodeChars[(c >> 2)]);
            sb.append(base64EncodeChars[((c & 0x3) << 4)]);
            sb.append("==");
        }
        else if (r == 2)
        {
            int c = (0xFF & data[(i++)]) << 8 | 0xFF & data[(i++)];
            sb.append(base64EncodeChars[(c >> 10)]);
            sb.append(base64EncodeChars[(c >> 4 & 0x3F)]);
            sb.append(base64EncodeChars[((c & 0xF) << 2)]);
            sb.append("=");
        }
        if (splitsize > 0)
        {
            char split = '\n';
            for (i = width; i < sb.length(); i++)
            {
                sb.insert(i, split);
                i += width;
            }
        }
        return sb.toString();
    }

    public static final String decode(String str, String charsetName)
    {
        byte[] data = null;
        try
        {
            data = str.getBytes(charsetName);
        }
        catch (UnsupportedEncodingException e)
        {
            e.printStackTrace();
            return null;
        }
        int len = data.length;
        ByteArrayOutputStream buf = new ByteArrayOutputStream((int)(len * 0.67D));

        int i = 0;
        while (i < len)
        {
            int b1;
            do
            {
                if (i >= len)
                {
                    b1 = -1;
                    break;
                }
                b1 = base64DecodeChars[data[(i++)]];
            } while ((i < len) && (b1 == -1));
            if (b1 == -1) {
                break;
            }
            int b2;
            do
            {
                if (i >= len)
                {
                    b2 = -1;
                    break;
                }
                b2 = base64DecodeChars[data[(i++)]];
            } while ((i < len) && (b2 == -1));
            if (b2 == -1) {
                break;
            }
            buf.write(b1 << 2 | (b2 & 0x30) >>> 4);
            int b3;
            do
            {
                if (i >= len)
                {
                    b3 = -1;
                    break;
                }
                b3 = data[(i++)];
                if (b3 == 61)
                {
                    b3 = -1;
                    break;
                }
                b3 = base64DecodeChars[b3];
            } while ((i < len) && (b3 == -1));
            if (b3 == -1) {
                break;
            }
            buf.write((b2 & 0xF) << 4 | (b3 & 0x3C) >>> 2);
            int b4;
            do
            {
                if (i >= len)
                {
                    b4 = -1;
                    break;
                }
                b4 = data[(i++)];
                if (b4 == 61)
                {
                    b4 = -1;
                    break;
                }
                b4 = base64DecodeChars[b4];
            } while (b4 == -1);
            if (b4 == -1) {
                break;
            }
            buf.write((b3 & 0x3) << 6 | b4);
        }
        try
        {
            return buf.toString(charsetName);
        }
        catch (UnsupportedEncodingException e)
        {
            e.printStackTrace();
        }
        return null;
    }
}
