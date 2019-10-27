package nhom3.project.quanlyungvien.model;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "candidate_scv")
public class CandidateCV {
	
	@Id
	@Column(name="id")
	@Basic(optional = false)
	private int id;
	
	
	@Column(name="no")
	private int no;
	
	
	@Column(name="date")
	private Date date;
	
	@Column(name="recer")
	private String recer;
	
	@Column(name="fullname")
	private String fullname;
	
	@Column(name="status")
	private String status;
	
	@Column(name="et_date")
	private Date et_Date;
	
	
	@Column(name="status_detail")
	private String status_Detal;
	
	
	@Column(name="skill")
	private String skill;
	
	
	@Column(name="noted")
	private String noded;
	
	
	@Column(name="email")
	private String email;
	
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="dob")
	private Date dob;
	
	
	@Column(name="university")
	private String university;
	
	@Column(name="major")
	private String major;
	
	@Column(name="gpa")
	private double gpa;
	
	
	@Column(name="graduation_date")
	private Date graduation_Date;
	
	@Column(name="rr_code")
	private String rr_Code;
	
	@Column(name="en")
	private int en;
	
	@Column(name="java_net_c")
	private int java_Net_C;
	
	@Column(name="interviewer")
	private String interviewer;
	
	@Column(name="interview_result")
	private String interview_result;
	
	
	@Column(name="source")
	private String source;
	
	@Column(name="ob_date")
	private Date ob_Date;
	
	@Column(name="note_contract")
	private String note_Contract;
	
	@Column(name="job_rank")
	private String job_Rank;
	
	@Column(name="salary")
	private String salary;
	
	@Column(name="unit")
	private String unit;
	
	@Column(name="note")
	private String note;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getRecer() {
		return recer;
	}

	public void setRecer(String recer) {
		this.recer = recer;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getEt_Date() {
		return et_Date;
	}

	public void setEt_Date(Date et_Date) {
		this.et_Date = et_Date;
	}

	public String getStatus_Detal() {
		return status_Detal;
	}

	public void setStatus_Detal(String status_Detal) {
		this.status_Detal = status_Detal;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getNoded() {
		return noded;
	}

	public void setNoded(String noded) {
		this.noded = noded;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public double getGpa() {
		return gpa;
	}

	public void setGpa(double gpa) {
		this.gpa = gpa;
	}

	public Date getGraduation_Date() {
		return graduation_Date;
	}

	public void setGraduation_Date(Date graduation_Date) {
		this.graduation_Date = graduation_Date;
	}

	public String getRr_Code() {
		return rr_Code;
	}

	public void setRr_Code(String rr_Code) {
		this.rr_Code = rr_Code;
	}

	public int getEn() {
		return en;
	}

	public void setEn(int en) {
		this.en = en;
	}

	public int getJava_Net_C() {
		return java_Net_C;
	}

	public void setJava_Net_C(int java_Net_C) {
		this.java_Net_C = java_Net_C;
	}

	public String getInterviewer() {
		return interviewer;
	}

	public void setInterviewer(String interviewer) {
		this.interviewer = interviewer;
	}

	public String getInterview_result() {
		return interview_result;
	}

	public void setInterview_result(String interview_result) {
		this.interview_result = interview_result;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public Date getOb_Date() {
		return ob_Date;
	}

	public void setOb_Date(Date ob_Date) {
		this.ob_Date = ob_Date;
	}

	public String getNote_Contract() {
		return note_Contract;
	}

	public void setNote_Contract(String note_Contract) {
		this.note_Contract = note_Contract;
	}

	public String getJob_Rank() {
		return job_Rank;
	}

	public void setJob_Rank(String job_Rank) {
		this.job_Rank = job_Rank;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public CandidateCV(int id, int no, Date date, String recer, String fullname, String status, Date et_Date,
			String status_Detal, String skill, String noded, String email, String phone, Date dob, String university,
			String major, double gpa, Date graduation_Date, String rr_Code, int en, int java_Net_C, String interviewer,
			String interview_result, String source, Date ob_Date, String note_Contract, String job_Rank, String salary,
			String unit, String note) {
		super();
		this.id = id;
		this.no = no;
		this.date = date;
		this.recer = recer;
		this.fullname = fullname;
		this.status = status;
		this.et_Date = et_Date;
		this.status_Detal = status_Detal;
		this.skill = skill;
		this.noded = noded;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.university = university;
		this.major = major;
		this.gpa = gpa;
		this.graduation_Date = graduation_Date;
		this.rr_Code = rr_Code;
		this.en = en;
		this.java_Net_C = java_Net_C;
		this.interviewer = interviewer;
		this.interview_result = interview_result;
		this.source = source;
		this.ob_Date = ob_Date;
		this.note_Contract = note_Contract;
		this.job_Rank = job_Rank;
		this.salary = salary;
		this.unit = unit;
		this.note = note;
	}

	public CandidateCV() {
		super();
	}
	

	
	
	
}
