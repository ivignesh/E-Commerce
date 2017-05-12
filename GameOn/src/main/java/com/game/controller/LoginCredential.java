package com.game.controller;

public class LoginCredential
{
	private String uname,passwd;
	
	public boolean checklogin()
	{
	if(uname.equals("Ironman") && passwd.equals("qwerty123"))
		return true;
	else
		return false;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
}
	