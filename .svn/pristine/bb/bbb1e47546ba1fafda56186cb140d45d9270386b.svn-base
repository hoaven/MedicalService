package jplus.cherry.medicalservice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jplus.cherry.medicalservice.model.Department;
import jplus.cherry.medicalservice.model.Doctor;
import jplus.cherry.medicalservice.model.History;
import jplus.cherry.medicalservice.model.Regist;
import jplus.cherry.medicalservice.model.User;
import jplus.cherry.medicalservice.service.DepartmentService;
import jplus.cherry.medicalservice.service.DoctorService;
import jplus.cherry.medicalservice.service.HistoryService;
import jplus.cherry.medicalservice.service.RegistService;
import jplus.cherry.medicalservice.service.UserService;

@Controller
@RequestMapping("assess")
public class AssessController {

	private RegistService rgistservice;
	private UserService userService;
	private DoctorService doctorservice;
	private DepartmentService departmentService;
	private HistoryService historyService;
	
	
	public HistoryService getHistoryService() {
		return historyService;
	}
	
	@Autowired
	public void setHistoryService(HistoryService historyService) {
		this.historyService = historyService;
	}

	public DepartmentService getdepartmentService() {
		return departmentService;
	}

	@Autowired
	public void setDepartmentService(DepartmentService departmentService) {
		this.departmentService = departmentService;
	}

	public UserService getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public DoctorService getDoctorservice() {
		return doctorservice;
	}

	@Autowired
	public void setDoctorservice(DoctorService doctorservice) {
		this.doctorservice = doctorservice;
	}

	public RegistService getRgistservice() {
		return rgistservice;
	}

	@Autowired
	public void setRgistservice(RegistService rgistservice) {
		this.rgistservice = rgistservice;
	}

	@RequestMapping("testlogin")
	public String testLogin(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user != null) { // 用户已登录
			if (user.getLimits() == 1) { // 患者
				return "web/view/tipinput";
			} else { // 禁用用户、医生等
				request.setAttribute("message", "<script> alert('对不起，您没有评价权限！');</script>");
				return "web/view/index";
			}
		} else {
			request.setAttribute("message", "<script> alert('对不起，您还没有登录！');</script>");
			return "web/view/index";
		}
	}

	@RequestMapping("tipinput")
	public ModelAndView tipInput(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String ghnum = request.getParameter("tip");
		if (user != null) {
			Regist regist = rgistservice.getRegistByGhnum(ghnum);
			if (regist != null) {
				User ruser = userService.selectByPrimaryKey(regist.getUserid());
				if (ruser != null) {
					if (ruser.getUsername().equals(user.getUsername())) { // 挂号号码匹配成功
						Doctor doctor = doctorservice.selectByPrimaryKey(regist.getDoctorid());
						mav.addObject("assessdoctor", doctor);
						mav.addObject("assessuser", user);
						System.out.println(doctor);
						if (doctor != null) {
							Department department = departmentService.selectByPrimaryKey(doctor.getDepartment());
							mav.addObject("assessdepartment", department);
						}
						History history = historyService.selectByUserId(user.getId());
						mav.addObject("assesshistory", history);
						System.out.println(history);
						mav.setViewName("web/view/evaluate");
					} else {
						mav.addObject("message", "<script> alert('对不起，你没有挂过此号！');</script>");
						mav.setViewName("web/view/tipinput");
					}
				} else {
					mav.addObject("message", "<script> alert('对不起，你输入的号码有误！');</script>");
					mav.setViewName("web/view/tipinput");
				}
			} else {
				mav.addObject("message", "<script> alert('对不起，你输入的号码不存在！');</script>");
				mav.setViewName("web/view/tipinput");
			}
		} else {
			mav.addObject("message", "<script> alert('对不起，你还未登录！');</script>");
			mav.setViewName("web/view/index");
		}
		return mav;
	}
}
