package entity;

import java.util.Collection;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Staffs")
public class Staff {
	
	  @Id
	  @GeneratedValue
	    private int Id;
	    private String Name, Photo, Email, Phone, Notes,Username,Password,Role;
	    private Boolean Gender;
	    private Float Salary;
	    @Temporal(TemporalType.DATE)
	    @DateTimeFormat(pattern = "dd/MM/yyyy")
	    private Date Birthday;
	    @ManyToOne
	    @JoinColumn(name = "DepartId")
	    private  Depart depart;

	    @OneToMany(mappedBy = "staff", fetch = FetchType.EAGER)
	    private Collection<Record> record;
	    
		//Getter and Setter
		

		public String getName() {
			return Name;
		}

		public int getId() {
			return Id;
		}

		public void setId(int id) {
			Id = id;
		}

		public void setName(String name) {
			Name = name;
		}

		public String getPhoto() {
			return Photo;
		}

		public void setPhoto(String photo) {
			Photo = photo;
		}

		public String getEmail() {
			return Email;
		}

		public void setEmail(String email) {
			Email = email;
		}

		public String getPhone() {
			return Phone;
		}

		public void setPhone(String phone) {
			Phone = phone;
		}

		public String getNotes() {
			return Notes;
		}

		public void setNotes(String notes) {
			Notes = notes;
		}

		public String getUsername() {
			return Username;
		}

		public void setUsername(String username) {
			Username = username;
		}

		public String getPassword() {
			return Password;
		}

		public void setPassword(String password) {
			Password = password;
		}

		public String getRole() {
			return Role;
		}

		public void setRole(String role) {
			Role = role;
		}

		public Boolean getGender() {
			return Gender;
		}

		public void setGender(Boolean gender) {
			Gender = gender;
		}

		public Float getSalary() {
			return Salary;
		}

		public void setSalary(Float salary) {
			Salary = salary;
		}

		public Date getBirthday() {
			return Birthday;
		}

		public void setBirthday(Date birthday) {
			Birthday = birthday;
		}

		public Depart getDepart() {
			return depart;
		}

		public void setDepart(Depart depart) {
			this.depart = depart;
		}

		public Collection<Record> getRecord() {
			return record;
		}

		public void setRecord(Collection<Record> record) {
			this.record = record;
		}
	    
	

		

	    
	    
	    

}
