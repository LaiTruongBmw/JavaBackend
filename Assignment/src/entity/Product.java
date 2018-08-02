package entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Products")
public class Product {
	
	@Id
	@GeneratedValue
	private int Id;
	 private String Name,image;
	 private Float Price;
	 private Date date;
	 //
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Float getPrice() {
		return Price;
	}
	public void setPrice(Float price) {
		Price = price;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	 
}
