package com.taek.mobile.biz.general.controller;

import java.awt.Label;
import java.util.HashMap;
import java.util.List;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController{
	@RequestMapping(value = "/")
	@Secured({"ROLE_ADMIN","ROLE_MASTER"})
	public String main(Model model) {
		String pass = "1234";
		String encodedPass = new BCryptPasswordEncoder().encode(pass);
		System.out.println(encodedPass);
		
		return "home.tiles";
	}
}