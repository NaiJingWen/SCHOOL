package util;

import java.io.UnsupportedEncodingException;
public class Validate {
	// 是否为数字和英文验证
	public int getIntAndChar(String str){
		char c;
		int i;
		for (i=0; i<str.length(); i++){
			c = str.charAt(i);
			if(!((c>='0' && c<='9') || (c>='a' && c<='z') || (c>='A' && c<='Z'))){
				break;
			}
		}
		if(i < str.length()){
			return -1;
		}else{
			return 0;
		}
	}
	//是否为整数验证
	public int getInt(String str){
		char c;
		int i;
		for(i=0; i<str.length(); i++){
			c = str.charAt(i);
			if(!(c>='0' && c<='9')){
				break;
			}
		} 
		if(i < str.length()){
			return -1;
		}else{
			return 0;
		}
	}
	//是否为非法字符验证
	public boolean getLawlessChar(String str){
		boolean flag = false;
		char c;
		for(int i = 0;i<str.length();i++){
			c=str.charAt(i);
			switch(c){
			case '<' : flag = true;break;
			case '>' : flag = true;break;
			case '"' : flag = true;break;
			case '&' : flag = true;break;
			case ' ' : flag = true;break;
			}
		}
		return flag;
	}
	//中文转换，将改变gb2312换成unicode
	public String getUnicode(String str){
		if(str != null){
			try{
				return new String(str.getBytes("iso8859_1"),"gb2312");
			}catch(UnsupportedEncodingException e){
				e.printStackTrace();
				return str;
			}
		}else{
			return null;
		}
	}
	//中文转换，将Unicode换成gb2312
	public String getGb2312(String str){
		if(str != null){
			try{
				return new String(str.getBytes("gb2312"),"iso8859_1");
			}catch(UnsupportedEncodingException e){
				e.printStackTrace();
				return str;
			}
		}else{
			return null;
		}
	}
}

