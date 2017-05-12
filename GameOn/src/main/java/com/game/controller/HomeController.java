package com.game.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	public HomeController() {
		//super();
		// TODO Auto-generated constructor stub
		System.out.println("inside controller");
	}
@RequestMapping("/")
	public String gotoHome()
	{
		return "Index";
	}

@RequestMapping("/Index")
public String gotoHome1()
{
	return "Index";
}

@RequestMapping("/Login")
public String gotoHome2()
{
	return "Login";
}

@RequestMapping("/About")
public String gotoHome3()
{
	return "About";
}

@RequestMapping("/Carousel")
public String gotoHome4()
{
	return "Carousel";
}

@RequestMapping("/Join")
public String gotoHome5()
{
	return "Join";
}

@RequestMapping("loginm")
public String loginm(@RequestParam(value="error",required=false) String error,
	@RequestParam(value="logout",required=false)String logout,Model model){
	if(error!=null)
model.addAttribute("error","Invaild username & Password.. Please enter correct detail");

if(logout!=null)
	model.addAttribute("logout","Logged out Successfully...");
return "loginm";
}

@RequestMapping(value="checklogin",method=RequestMethod.POST)
public void validateLogin(HttpServletRequest request,HttpServletRequest response,ServletRequest req,ServletResponse res)throws ServletException,IOException
{
 String u=request.getParameter("inputUsername");
 String p=request.getParameter("inputPassword");
  LoginCredential obj=new LoginCredential();
   obj.setUname(u); 
   obj.setPasswd(p);
  
   if(obj.checklogin())
   {
    RequestDispatcher dispatch=request.getRequestDispatcher("Index");
    dispatch.forward(req, res);
   }
   else
   {
    RequestDispatcher dispatch=request.getRequestDispatcher("Login");
    dispatch.forward(req, res);
   }
}
}

