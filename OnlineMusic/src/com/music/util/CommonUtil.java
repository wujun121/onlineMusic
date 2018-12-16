package com.music.util;

import java.util.UUID;

public class CommonUtil {
	
	public static String getUid(){
		return UUID.randomUUID().toString().replace("-", "");
	}
}
