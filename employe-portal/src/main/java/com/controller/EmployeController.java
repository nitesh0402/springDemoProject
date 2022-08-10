package com.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dto.EmployeDto;

@Controller
public class EmployeController {

	@RequestMapping(value = "/viewform", method = RequestMethod.GET)
	public String Display(Model model) {

		model.addAttribute("empDisplay", " ");
		return "empDisplay";

	}

	@RequestMapping("viewemp")
	public String insertdata(@ModelAttribute EmployeDto em) {

		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session ss = sf.openSession();

		Transaction ts = ss.beginTransaction();

		ss.save(em);
		ts.commit();
		System.out.println("data saved");

		ss.close();
		return "redirect:/viewList";

	}

	@RequestMapping("viewList")

	public String viewEmpData(Model m) {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session ss = sf.openSession();
		Transaction ts = ss.beginTransaction();
		Query q = ss.createQuery("from EmployeDto em");
		List<EmployeDto> listemp = (List<EmployeDto>) q.list();
		System.out.println("Employee data is " + listemp);
		m.addAttribute("list", listemp);
		return "viewEmp";

	}
	
	
	@RequestMapping( value="/editeemp/{empId}")
	 public String edite(@PathVariable  int empId,Model m) 
	 {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		 Session s=sf.openSession();
		 EmployeDto emp=s.get(EmployeDto.class, (empId));
		 System.out.println("Employe id is"+emp);
		m.addAttribute("emp",emp);
				 
		 return "editeform";
		 
		 
		 
	 }
	
	
	
	@RequestMapping(value="/editeemp/editsave",method =RequestMethod.POST)

	public String update(@ModelAttribute EmployeDto emp) 
	{
		
		System.out.println("Employe datail is"+emp);
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		 Session s=sf.openSession();
			Transaction ts = s.beginTransaction();
		s.update(emp);
		ts.commit();
		System.out.println("data update");
		return  "redirect:/viewList";
	}
	
	public String hello()
	{
		
		return "hello eveyone";
	}
}
