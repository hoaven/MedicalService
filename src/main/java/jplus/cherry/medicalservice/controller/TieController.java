package jplus.cherry.medicalservice.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jplus.cherry.medicalservice.dao.AnswertieMapper;
import jplus.cherry.medicalservice.dao.Tieba;
import jplus.cherry.medicalservice.dao.ZanMapper;
import jplus.cherry.medicalservice.model.Answertie;
import jplus.cherry.medicalservice.model.Department;
import jplus.cherry.medicalservice.model.Tie;
import jplus.cherry.medicalservice.model.Zan;
import jplus.cherry.medicalservice.service.TieService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("tie")
public class TieController {
	private TieService tieservice;
	private AnswertieMapper answertieMapper;
	private ZanMapper zanMapper;
	
	public ZanMapper getZanMapper() {
		return zanMapper;
	}
	@Autowired
	public void setZanMapper(ZanMapper zanMapper) {
		this.zanMapper = zanMapper;
	}
	public AnswertieMapper getAnswertieMapper() {
		return answertieMapper;
	}
	@Autowired
	public void setAnswertieMapper(AnswertieMapper answertieMapper) {
		this.answertieMapper = answertieMapper;
	}
	public TieService getTieservice() {
		return tieservice;
	}
	@Autowired
	public void setTieservice(TieService tieservice) {
		this.tieservice = tieservice;
	}
	
	@RequestMapping("add")
	public void add(HttpServletRequest request, HttpServletResponse response) throws IOException{
		Tie record = new Tie();
		Date date=new Date();
	    PrintWriter out = response.getWriter();
		String input = request.getParameter("inputTitle");
		String mysle = request.getParameter("mysle");
		String text = request.getParameter("text");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String limits = request.getParameter("limits");
		System.out.println(name);
		System.out.println(id);
		System.out.println(limits);
		System.out.println(mysle);
		System.out.println(text);
//		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String time=df.format(date);
		Department dp =tieservice.selcetreturnid(mysle);
	//	System.out.println(dp.getId()+"*****");
		record.setPubtime(date);
		record.setTitle(input);
		record.setKemu(mysle);
		record.setContent(text);
		record.setName(name);
		record.setBeizhu(String.valueOf(dp.getId()));
		record.setLimits(Integer.parseInt(limits));
		record.setAuthorid(Integer.parseInt(id));
		
			if(record!=null)
		tieservice.insertSelective(record);
		out.write("yes");
	}
	
	@RequestMapping("/sousou")
	public ModelAndView sousuo(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8"); 
		Tieba page = null;
		int key11 = 0;
		ModelAndView mav;
		response.setContentType("text/html;chatset=utf-8");
	    String pt = request.getParameter("page");//第几页
	    String key = request.getParameter("keyword");//结贴的等级（0代表不分等级,1,2,3,4:优良，一般，差）
		String key1 = request.getParameter("mysle");//不管结贴还是不结贴，代表要查找的科目的id号，0代表全部
		if(key==null||key.equals("")){
			mav = new ModelAndView("web/view/forum1");	
		}else{
			mav = new ModelAndView("web/view/forum2");	
		}
	    System.out.println(pt+"~~~~~~++++");
	    System.out.println(key+"---contro+++");
	    System.out.println(key1+"---contro+++");
	    page = tieservice.getpagesizeTiezi(pt,key1,key);
	    page.setKeyword(key);
	    page.setMySle(Integer.valueOf(key1));
	   
	    request.setAttribute("page", page);		
	 //   System.out.println(page.getTotalpage());
	  //  System.out.println(page.getRecords().toString());

		//		mav.addObject("one", map1);
//		mav.addObject("two", map2);
		 return mav;
	}
	
	@RequestMapping("/chakan")
	public ModelAndView chakan(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8"); 
		ModelAndView mav;
		response.setContentType("text/html;chatset=utf-8");
		String id = request.getParameter("id");
		String pag = request.getParameter("page");
		mav = new ModelAndView("web/view/forum_content");
		Tie tie = tieservice.selectByPrimaryKey(Integer.valueOf(id));
		Tieba page = tieservice.gethuitie(pag, Integer.valueOf(id));
//	    System.out.println(key+"---contro+++");
//	    System.out.println(key1+"---contro+++");
//	    page = tieservice.getpagesizeTiezi(pt,key1,key);
//	    page.setKeyword(key);
//	    page.setMySle(Integer.valueOf(key1));
//	   
//	    request.setAttribute("page", page);		
	 //   System.out.println(page.getTotalpage());
	  //  System.out.println(page.getRecords().toString());

		//		mav.addObject("one", map1);
//		mav.addObject("two", map2);
		List<Tie> tieba = tieservice.selectfront();
		request.setAttribute("tieba", tieba);
		request.setAttribute("tie", tie);
		System.out.println(tie.getZnumb()+"~~~~~~~~");
		request.setAttribute("page", page);	
		 return mav;
	}
	
	@RequestMapping("/huitie")
	public ModelAndView huitie(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8"); 
		Date date=new Date();
		Answertie aa = new Answertie();
		ModelAndView mav;
		response.setContentType("text/html;chatset=utf-8");
		String pid = request.getParameter("pid");//人的权限
		String id = request.getParameter("id");//帖子id
		String userid = request.getParameter("userid");//人物id
		String neirong = request.getParameter("neirong");//回帖内容
		String username = request.getParameter("username");//人物名字
		System.out.println(pid);
		System.out.println(id);
		System.out.println(userid);
		System.out.println(neirong);
		System.out.println(username);
		aa.setLimits(Integer.valueOf(pid));
		aa.setTieid(Integer.valueOf(id));
		aa.setAuthorid(Integer.valueOf(userid));
		aa.setContent(neirong);
		aa.setName(username);
		aa.setRelaytime(date);
		answertieMapper.insertSelective(aa);
		mav = new ModelAndView("web/view/forum_content");
		Tie tie = tieservice.selectByPrimaryKey(Integer.valueOf(id));
		Tieba page = tieservice.gethuitie("1", Integer.valueOf(id));
		List<Tie> tieba = tieservice.selectfront();
		request.setAttribute("tieba", tieba);
		request.setAttribute("tie", tie);
		request.setAttribute("page", page);	
		 return mav;
//	    System.out.println(pt+"~~~~~~++++");
//	    System.out.println(key+"---contro+++");
//	    System.out.println(key1+"---contro+++");
//	    page = tieservice.getpagesizeTiezi(pt,key1,key);
//	    page.setKeyword(key);
//	    page.setMySle(Integer.valueOf(key1));
//	   
//	    request.setAttribute("page", page);		
	 //   System.out.println(page.getTotalpage());
	  //  System.out.println(page.getRecords().toString());

		//		mav.addObject("one", map1);
//		mav.addObject("two", map2);
		
	}
	
	@RequestMapping("/zanzan")
	public void zanzan(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("utf-8"); 
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;chatset=utf-8");
		Zan zz  = new Zan();
		String pid = request.getParameter("pid");//人的权限
		String id = request.getParameter("id");//帖子id
		String userid = request.getParameter("userid");//人物id
		zz.setLimits(Integer.valueOf(pid));
		zz.setTieid(Integer.valueOf(id));
		zz.setAuthorid(Integer.valueOf(userid));
		Zan num = zanMapper.selectcheck(zz);
		
		if(num == null){
			zanMapper.insertSelective(zz);
			tieservice.updateznumb(Integer.valueOf(id));
		}
		else{
			System.out.println(num.toString());
			out.write("no");
		}
		System.out.println("***************");
		
	}
}
