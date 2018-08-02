package poly.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Depart;
import entity.Staff;

@Controller
public class DeptController {
	
	@Autowired
	SessionFactory factory;
	
//	@RequestMapping(value="btnAddDept", method=RequestMethod.GET)
//	public String insert(ModelMap model) {
//		
//		model.addAttribute("list_dept", new Depart());
//		return"phongban";
//	}
//	//Show data Deprt
//		@RequestMapping("phongban")
//		public String showdataD(ModelMap model){
//			Session session = factory.getCurrentSession();
//			String hql="FROM Depart";
//			Query query = session.createQuery(hql);
//			List<Depart> list = query.list();
//			model.addAttribute("listD", list);
//			
//			return"admin/phongban";	
//			
//		}
		// Insert Deprt
	@RequestMapping(value = "btnAddDept")
	public String insert(ModelMap model, HttpServletRequest request) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		try {
			Depart dept = new Depart();
			dept.setId(id);
			dept.setName(name);
			session.save(dept);
			t.commit();
//			System.out.println(id);
			model.addAttribute("message", "Thêm mới thành công !");
			return "redirect:admin/phongban.htm";
		} catch (Exception e) {

			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
			e.printStackTrace();
		} finally {
			session.close();
		}
		return "admin/phongban";
	}
	// Delete Deprt
	@RequestMapping(value="btndelDept")
	public String delete(@RequestParam("idDel") String id, HttpServletRequest request) {
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		try {
			
			Depart dept=new Depart();
			dept.setId(id);
			session.delete(dept);
			t.commit();
			System.out.println("Successful");
			return"redirect:admin/phongban.htm";
		}catch(Exception ex) {
			System.out.println("Error: "+ex);
			t.rollback();
		}finally {
			session.close();
		}
		return "redirect:admin/phongban.htm";
	}
	// Update
	@RequestMapping(value="btnEditDept")
	public String update(HttpServletRequest request) {
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		try {
			Depart dept=new Depart();
			dept.setId(id);
			dept.setName(name);
			
			session.update(dept);
			t.commit();
			System.out.println("Successful");
			return "redirect:admin/phongban.htm";
		}catch(Exception ex) {
			t.rollback();
			System.out.println("Error:"+ex);
		}finally {
			session.close();
		}
//		request.setAttribute("chucnang", null);
		return "redirect:admin/phongban.htm";
	}
}
