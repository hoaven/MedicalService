package jplus.cherry.medicalservice.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jplus.cherry.medicalservice.model.News;
import jplus.cherry.medicalservice.model.Newscategory;
import jplus.cherry.medicalservice.model.User;
import jplus.cherry.medicalservice.service.DoctorService;
import jplus.cherry.medicalservice.service.UserService;
import jplus.cherry.medicalservice.util.DateUtil;
import jplus.cherry.medicalservice.util.MD5Util;

@Controller
@RequestMapping("register")
public class RegisterController {
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

	@RequestMapping("uregister")
	public String uregister(HttpServletRequest request) {
		try {

			User u = getRequestUser(request);
			boolean t = vcheck(u);
			if (t) {
				request.setAttribute("message", "<script> alert('用户名已存在');</script>");
				return "web/view/message";
			} else {
				userService.insert(u);
				request.setAttribute("message", "<script> alert('注册成功,请登录');</script>");
				return "web/view/ulogin";
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
			return "web/view/register";
		}
	}

	private boolean vcheck(User user) {
		User u = userService.find(user.getUsername());
		if (u == null)
			return false;
		else
			return true;
	}

	private User getRequestUser(HttpServletRequest request) throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String s = request.getParameter("sex");
		String a = request.getParameter("age");
		int age = Byte.parseByte(a);
		int sex = Integer.parseInt(s);
		String email = request.getParameter("email");
		String realname = request.getParameter("realname");
		String telephone = request.getParameter("telephone");
		String address = request.getParameter("address");
		User u = new User();
		Date date = new Date(System.currentTimeMillis());
		u.setUsername(username);
		u.setPassword(MD5Util.EncoderPwdByMd5(password));		//md5加密
		u.setEmail(email);
		u.setSex(sex);
		u.setAge(age);
		u.setRealname(realname);
		u.setTelephone(telephone);
		u.setAddress(address);
		u.setRegtime(date);
		return u;
	}
}
