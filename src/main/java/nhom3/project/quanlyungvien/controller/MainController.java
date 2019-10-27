package nhom3.project.quanlyungvien.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import nhom3.project.quanlyungvien.DAO.candidateDAO;
import nhom3.project.quanlyungvien.DAO.eventDAO;
import nhom3.project.quanlyungvien.DAO.loginDAO;
import nhom3.project.quanlyungvien.model.Admin;
import nhom3.project.quanlyungvien.model.CandidateEvent;
import nhom3.project.quanlyungvien.model.Event;

@Controller
public class MainController {


	/**
	 * @param model
	 * @return home
	 */
	
	@Autowired
	private loginDAO logindao;
	
	
	@Autowired
	private eventDAO eventdao;
	
	
	@Autowired 
	private candidateDAO candidatedao;
	
	
	@RequestMapping(value = {"/","/HomePage"})
	public String home(Model model)
	{
		model.addAttribute("datalogin", new Admin());
		return "HomePage";
	}


	/**
	 * @param model
	 * @return login
	 */
	
	
	@RequestMapping(value = "/passLogin",method = RequestMethod.POST)
	public String passLogin(Model model, @ModelAttribute("datalogin") Admin admin, HttpSession session)
	{
		
		boolean userExists=logindao.getAdmin(admin.getUser_name(), admin.getPassword());
		
		if(userExists)
		{
			model.addAttribute("datalogin", admin);
			session.setAttribute("username", logindao.getId(admin.getUser_name()).getUser_name());
			
			return "redirect:Home";
		}
		else
		{
			//model.addAttribute("datalogin", admin);
			return "redirect:HomePage";
		}
		
	}
	
	
	@RequestMapping(value = "/Home")
	public String viewList(Model model)
	{
		List<Event> list=eventdao.getAllEvent();
		for(Event ev : list)
		{
			System.out.println("emp No" + ev.getCourse_Code());
			
		}
		model.addAttribute("enven", list);
		return "Home";
			
	}
	
	@RequestMapping(value = "/logout")
	public String logout(Model model,HttpSession session)
	{
		session.removeAttribute("username");
		return "redirect:HomePage";
		
	}
	
	@RequestMapping(value = "/Candidate")
	public String showCandidate(Model model,HttpServletRequest request)
	{
		List<CandidateEvent> listCaEvent=candidatedao.getListCandidateEvent();
		for(CandidateEvent caEvent : listCaEvent)
		{
			System.out.println("emp No"+caEvent.getNatioanl_ID());
		}
		model.addAttribute("caEvent", listCaEvent);

		
		return "Candidate";
	}
	
	@RequestMapping (value = "/Update")
	public String update(Model model,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		CandidateEvent ct=candidatedao.getCandidateEvent(id);
		model.addAttribute("cadidateEvent", ct);
		
		return "Update";
	}
	
	@RequestMapping(value = "/updateCandidate",method = RequestMethod.POST)
	public String updateCandidate(@ModelAttribute("cadidateEvent") CandidateEvent cv,BindingResult result)
	{
		System.out.println("add Candidate");
		candidatedao.updateCandidateEvent(cv);
		return "redirect:/Candidate";
	}
	
	@RequestMapping(value = "/Event")
	public String event(Model model)
	{
		
		  List<Event> list=eventdao.getAllEvent(); 
		  for(Event ev : list) {
		  System.out.println("emp No" + ev.getCourse_Code());
		  
		  } 
		  model.addAttribute("eventDetail", list);
		 
		return "Event";
	}
	
	@RequestMapping (value = "/UpdateEvent")
	public String updateEvent(Model model,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		Event ct=eventdao.getEvent(id);
		model.addAttribute("dataEvent", ct);
		
		return "UpdateEvent";
	}
	@RequestMapping(value = "/passUpdate",method = RequestMethod.POST)
	public String passUpdateEvent(@ModelAttribute("dataEvent") Event event ,BindingResult result)
	{
		System.out.println("add Event");
		eventdao.updateEvent(event);
		return "redirect:/Event";
	}
	
	@RequestMapping(value = "/Statistic")
	public String showStatistic(Model model)
	{
		return "Statistic";
	}
	
	
	@RequestMapping(value = "/viewCandidate")
	private String viewCandidate(Model model,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		CandidateEvent ct=candidatedao.getCandidateEvent(id);
		model.addAttribute("cadidateEvent", ct);
		return "viewCandidate";
	}
	
	@RequestMapping(value = "/viewEvent")
	public String viewEvent(Model model,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		Event ct=eventdao.getEvent(id);
		model.addAttribute("dataEvent", ct);
		return "viewEvent";
	}
	
	
}
