package entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = " Records")
public class Record {
	
	 @Id
	    @GeneratedValue
	    private Integer Id;
	    private Integer Type;
	    private String Reason;
	    
	    @Temporal(TemporalType.DATE)
	    @DateTimeFormat(pattern = "MM/dd/yyyy")
	    private Date Date;
	    
//	    private String staffId;

	    @ManyToOne
	    @JoinColumn(name = "StaffId")
	    private Staff staff;
	    
// 		Getter and Setter
		public Integer getId() {
			return Id;
		}

		public void setId(Integer id) {
			Id = id;
		}

		public Integer getType() {
			return Type;
		}

		public void setType(Integer type) {
			Type = type;
		}

		public String getReason() {
			return Reason;
		}

		public void setReason(String reason) {
			Reason = reason;
		}

		public Date getDate() {
			return Date;
		}

		public void setDate(Date date) {
			Date = date;
		}

		public Staff getStaff() {
			return staff;
		}

		public void setStaff(Staff staff) {
			this.staff = staff;
		}

		//
	    
}
