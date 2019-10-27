package nhom3.project.quanlyungvien.model;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "updatedhistory")
public class UpdateHistory {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	@Basic(optional = false)
	private int id;
	
	
	@JoinColumn(name = "account", referencedColumnName = "user_name")
	@ManyToOne(targetEntity = Admin.class)
	@Basic(optional = false)
	private String account;
	
	@Column(name = "updated_date")
	private Date updated_date;
	
	@Column(name = "contents")
	private String content;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Date getUpdated_date() {
		return updated_date;
	}

	public void setUpdated_date(Date updated_date) {
		this.updated_date = updated_date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public UpdateHistory(int id, String account, Date updated_date, String content) {
		super();
		this.id = id;
		this.account = account;
		this.updated_date = updated_date;
		this.content = content;
	}

	public UpdateHistory() {
		super();
	}
	
	
	

}
