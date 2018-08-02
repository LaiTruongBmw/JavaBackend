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
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Depart;
import entity.Staff;

@Transactional
@SuppressWarnings("unchecked")
@Controller
@RequestMapping("admin")
public class AdminController {

	@Autowired
	SessionFactory factory;

	// Show data phong ban
	@RequestMapping("phongban")
	public String showdataD(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Depart";
		Query query = session.createQuery(hql);
		List<Depart> list = query.list();
		model.addAttribute("listD", list);

		return "admin/phongban";

	}

	// // show data Nhan vien
	@RequestMapping("nhanvien")
	public String showdataEmpt(ModelMap model) {

		Session session = factory.getCurrentSession();
		String hql = "FROM Staff";
		Query query = session.createQuery(hql);
		List<Staff> list = query.list();
		String hql2 = "FROM Depart";
		Query query2 = session.createQuery(hql2);
		List<Depart> list2 = query2.list();
		model.addAttribute("listD", list2);
		model.addAttribute("list_empt", list);
//		System.out.println(list2.size());
		return "admin/nhanvien";

	}

	public List<Staff> getStaffs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Staff";
		Query query = session.createQuery(hql);
		List<Staff> list = query.list();
		return list;
	}

	@RequestMapping(value = "edit")
	public String edit(ModelMap model, @RequestParam("id") int id) {
		Session session = factory.getCurrentSession();
		Staff staffs = (Staff) session.get(Staff.class, id);
		String hql2 = "FROM Depart";
		Query query2 = session.createQuery(hql2);
		List<Depart> list2 = query2.list();
		model.addAttribute("listD", list2);
		model.addAttribute("emp_edit", staffs);
		model.addAttribute("list_empt", getStaffs());
		return "admin/nhanvien";
	}

	// Delete Emp
	@RequestMapping(value = "btndelEmp")
	public String delete(@RequestParam("idEmp") int id, HttpServletRequest request) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		// System.out.println("thatbai"+id);
		try {

			Staff staff = new Staff();
			staff.setId(id);
			session.delete(staff);
			t.commit();
			System.out.println("Successful");
			return "redirect:nhanvien.htm";
		} catch (Exception ex) {
			System.out.println("Error: " + ex);
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:nhanvien.htm";
	}

	//
	@RequestMapping(value = "btnUpdate")
	public String update(ModelMap model, HttpServletRequest request) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Depart dept = new Depart();
		// int id=Interger.request.getParameter("id");
		String deptname = request.getParameter("department");
		try {
			String birth = request.getParameter("birthday");
			
			SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
			Date d = format.parse("15-02-1997");
			Staff staff = new Staff();
			staff.setId(Integer.parseInt(request.getParameter("id")));
			staff.setName(request.getParameter("name"));
			staff.setBirthday(d);
			staff.setGender(Boolean.parseBoolean(request.getParameter("gender")));
			staff.setEmail(request.getParameter("email"));
			staff.setUsername(request.getParameter("username"));
			staff.setSalary(Float.parseFloat(request.getParameter("salary")));

			staff.setDepart(new Depart(deptname));
			staff.setRole(request.getParameter("role"));
			staff.setPhone(request.getParameter("phone"));
			staff.setPhoto(request.getParameter("photo"));
			session.update(staff);
			t.commit();
			
			model.addAttribute("message", "Update successfully!");
		} catch (Exception e) {
			model.addAttribute("message", "Update fails!" + e);
			System.out.println(deptname);
			t.rollback();
			
		} finally {
			session.close();
		}
		return "redirect:nhanvien.htm";
	}

	@RequestMapping(value = "insert_emp")
	public String insert(ModelMap model, HttpServletRequest request) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			Staff staff = new Staff();
			staff.setName(request.getParameter("name"));
			staff.setBirthday(new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("birthday")));
			staff.setGender(Boolean.parseBoolean(request.getParameter("gender")));
			staff.setEmail(request.getParameter("email"));
			staff.setUsername(request.getParameter("username"));
			staff.setSalary(Float.parseFloat(request.getParameter("salary")));
			// staff.setDepart(request.getParameter("department"));
			// staff.setDepart(request.getParameter("department"));
			// st.setMajorId(request.getParameter("txtmajor"));
			session.save(staff);
			t.commit();

			model.addAttribute("message", "Thêm mới Staff thành công !");
			return "redirect:admin/phongban.htm";
		} catch (Exception e) {

			t.rollback();
			model.addAttribute("message", "Thêm mới Staffs thất bại !");
			e.printStackTrace();
		} finally {
			session.close();
		}
		return "admin/phongban";
	}
}
