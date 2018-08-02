package poly.controller;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Depart;
import entity.Staff;
@Transactional
@Controller
@RequestMapping("emp")
public class EmpController {
		
	@Autowired
	SessionFactory factory;

//	@RequestMapping(value = "insert_emp")
//	public String insert(ModelMap model, HttpServletRequest request) {
//		Session session = factory.openSession();
//		Transaction t = session.beginTransaction();
//
//		try {
//			Staff staff=new Staff();
//			staff.setName(request.getParameter("name"));
//			staff.setBirthday(new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("birthday")));
//			staff.setGender(Boolean.parseBoolean(request.getParameter("gender")));
//			staff.setEmail(request.getParameter("email"));
//			staff.setUsername(request.getParameter("username"));
//			staff.setSalary(Float.parseFloat(request.getParameter("salary")));
////			staff.setDepart(request.getParameter("department"));
////			staff.setDepart(request.getParameter("department"));
////			st.setMajorId(request.getParameter("txtmajor"));
//			session.save(staff);
//			t.commit();
//		
//			model.addAttribute("message", "Thêm mới Staff thành công !");
//			return "redirect:admin/phongban.htm";
//		} catch (Exception e) {
//
//			t.rollback();
//			model.addAttribute("message", "Thêm mới Staffs thất bại !");
//			e.printStackTrace();
//		} finally {
//			session.close();
//		}
//		return "admin/phongban";
//	}
//	//Delete Emp
//			@RequestMapping(value="btndelEmp")
//			public String delete(@RequestParam("idEmp") int id, HttpServletRequest request) {
//				Session session=factory.openSession();
//				Transaction t=session.beginTransaction();
//				try {
//					
//					Staff staff=new Staff();
//					staff.setId(id);
//					session.delete(staff);
//					t.commit();
//					System.out.println("Successful");
//					return"redirect:admin/nhanvien.htm";
//				}catch(Exception ex) {
//					System.out.println("Error: "+ex);
//					t.rollback();
//				}finally {
//					session.close();
//				}
//				return "redirect:admin/nhanvien.htm";
//			}
	
//	// show data Nhan vien
//		@RequestMapping("nhanvien")
//		public String showdataEmpt(ModelMap model){
//			Session session = factory.getCurrentSession();
//			String hql="FROM Staff";
//			Query query = session.createQuery(hql);
//			List<Staff> list = query.list();
//			model.addAttribute("list_empt", list);
//			
//			return"redirect:nhanvien.htm";	
//			
//		}

	
	// Edit emp
//	@RequestMapping(value="nhanvien{id}")
//	public String edit(ModelMap model, @RequestParam("id") int id) {
//		Session session = factory.getCurrentSession();
//		Staff staffs = (Staff) session.get(Staff.class, id);
////		String hql="FROM Staff s where s.Id=:id";
////		Query query=session.createQuery(hql);
////		query.setParameter("id", id);
////		List<Staff> ds=query.list();
//		model.addAttribute("emp_edit", staffs);
//		model.addAttribute("emp_edits", getStaff());
//		return "redirect:admin/nhanvien.htm";
//	}


}
