package com.pro.exp.service.utils;

import java.nio.ByteBuffer;

public class TypeConvertUtil {

	
	public static byte[] longToBytes(long value) {

		ByteBuffer buffer = ByteBuffer.allocate(Long.SIZE / Byte.SIZE);
		buffer.putLong(value);
		return buffer.array();
		}
}
