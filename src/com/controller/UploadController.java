package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.apiConnector.ApiConnector;

@Controller
public class UploadController {
@RequestMapping("upload")
public static String Upload(HttpServletRequest request, HttpServletResponse response) throws IOException {
	HttpSession session=request.getSession();
	String empcode=request.getParameter("empcode");
	String name=request.getParameter("name");
	String location=request.getParameter("location");
	String dob=request.getParameter("dob");
	String email=request.getParameter("email");
	ApiConnector.uploadEmp(name, empcode, email, dob, location);
	List<JSONObject> res=new ArrayList<>();
	res=ApiConnector.getAllEmp();
	session.setAttribute("EmpList", res);
	return "Welcome.jsp";}
}
