package jplus.cherry.medicalservice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jplus.cherry.medicalservice.model.News;
import jplus.cherry.medicalservice.model.Newscategory;
import jplus.cherry.medicalservice.service.HktryService;

@Controller
@RequestMapping("hktry")
public class HktryController {
	private HktryService hktryService;

	public HktryService getHktryService() {
		return hktryService;
	}
	@Autowired
	public void setHktryService(HktryService hktryService) {
		this.hktryService = hktryService;
	}
	
	@RequestMapping("index")
	public String index(HttpServletRequest request) {
		try {
			List<Newscategory> ncs =  hktryService.findNewsCategory();
			for(Newscategory nc:ncs){
				Integer ncid=nc.getId();
				List<News> ns=hktryService.findNewsBysCategory(ncid);
				request.setAttribute("ns"+ncid, ns);
			}
			return "web/view/index";
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
			return "404";
		}
	}


//	@SuppressWarnings("finally")
//	@RequestMapping("addUser")
//	public String add(User user, HttpServletRequest request) {
//		HttpSession session = request.getSession();
//
//		String rand = (String) session.getAttribute("RANDOM_IN_SESSION");
//		// System.out.println(rand+"++");
//		String inputvalue = request.getParameter("yzm");
//		// System.out.println(inputvalue+"--");
//		if (rand.equalsIgnoreCase(inputvalue)) {
//			Calendar c = Calendar.getInstance();
//			c.setTimeInMillis(new Date().getTime());
//			SimpleDateFormat dateFormat = new SimpleDateFormat(
//					"yyyy-MM-dd HH:mm:ss");
//			user.setRegtime(c.getTime());
//			user.setUserlevelId(1);// 这句话可以不用
//			user.setScores(20);
//			user.setLimits(0);
//			user.setIdentifys(0);
//			String str = userService.add(user);
//			//request.setAttribute("InfoMessage", str);// 操作消息
//			request.setAttribute("message", "恭喜你注册成功，请返回首页登录！！！");
//			return "page/message";
//
//		} else {
//			String str = "验证码输入错误";
//			request.setAttribute("InfoMessage", str);
//			return "page/jregister";
//		}
//
//	}
//
}
