package jplus.cherry.medicalservice.controller;

import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.org.apache.xpath.internal.operations.Bool;

import jplus.cherry.medicalservice.model.Doctor;
import jplus.cherry.medicalservice.model.News;
import jplus.cherry.medicalservice.model.Newscategory;
import jplus.cherry.medicalservice.model.User;
import jplus.cherry.medicalservice.service.DoctorService;
import jplus.cherry.medicalservice.service.UserService;
import jplus.cherry.medicalservice.util.MD5Util;

@Controller
@RequestMapping("login")
public class LoginControlle {
	private UserService userService;
	private DoctorService doctorservice;

	/**
	 * @return the userService
	 */
	public UserService getUserService() {
		return userService;
	}

	/**
	 * @param userService
	 *            the userService to set
	 */
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/**
	 * @return the doctorservice
	 */
	public DoctorService getDoctorservice() {
		return doctorservice;
	}

	/**
	 * @param doctorservice
	 *            the doctorservice to set
	 */
	@Autowired
	public void setDoctorservice(DoctorService doctorservice) {
		this.doctorservice = doctorservice;
	}

	@RequestMapping("ulogin")
	public String userLogin(HttpServletRequest request) {
		HttpSession session = request.getSession();
		try {
			User user = new User();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			System.out.println(username+MD5Util.EncoderPwdByMd5(password)+"----");
			user = userService.find(username);
			System.out.println(user.getUsername()+user.getPassword());
			if (user!= null && user.getPassword().equals(MD5Util.EncoderPwdByMd5(password))) {		//判断加密后字符串是否一致
				session.setAttribute("user", user);
				return "web/view/index";
			}else{
				request.setAttribute("message", "<script> alert('用户不存在');</script>");
				return "web/view/ulogin";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
			return "404";
		}
	}

	@RequestMapping("dlogin")
	public String doctorLogin(HttpServletRequest request) {
		HttpSession session = request.getSession();
		try {
			Doctor doctor = new Doctor();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			System.out.println(username+MD5Util.EncoderPwdByMd5(password)+"----");
			doctor = doctorservice.find(username);
			if (doctor!= null && doctor.getPassword().equals(MD5Util.EncoderPwdByMd5(password))) {
				session.setAttribute("user", doctor);
				return "web/view/index";
			}else{
				request.setAttribute("message", "<script> alert('用户不存在');</script>");
				return "web/view/dlogin";
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
			return "404";
		}
	}
	
	@RequestMapping("lout")
	public String lout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		try {
			session.removeAttribute("user");
			return "web/view/index";
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
			return "404";
		}
	}
}
