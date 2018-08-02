package entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@SuppressWarnings("unchecked")
@Entity
@Table(name = "Departs")
public class Depart {
	
	@Id
	
	@Column(name="Id")
    private String id;
	@Column(name="Name")
    private String name;
    @OneToMany(mappedBy = "depart", fetch = FetchType.EAGER)
    private Collection<Staff> Staffs;
    public Depart() {
		// TODO Auto-generated constructor stub
	}
    
	public Depart(String id, String name, Collection<Staff> staffs) {
		super();
		this.id = id;
		this.name = name;
		Staffs = staffs;
	}
	
	public Depart(String name) {
		super();
		
		this.name = name;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Collection<Staff> getStaffs() {
		return Staffs;
	}
	public void setStaffs(Collection<Staff> staffs) {
		Staffs = staffs;
	}
	
    
}
