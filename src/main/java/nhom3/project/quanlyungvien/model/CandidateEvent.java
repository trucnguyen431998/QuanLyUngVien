package nhom3.project.quanlyungvien.model;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "candidate_event")
public class CandidateEvent {
	
	
	
	@Id
	@Column(name="national_id")
	@Basic(optional = false)
	private int natioanl_ID;
	
	
	@Column(name="account")
	private String account;
	
	@Column(name="name")
	private String name;
	
	@Column(name="university")
	private String university;
	
	@Column(name="faculty")
	private String faculty;
	
	@Column(name="dob")
	private int dob;
	
	@Column(name="gender")
	private boolean gender;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="facebook")
	private String faceBook;
	
	@Column(name="uni_graduation_date")
	private Date unniversity_graduation_date;
	
	@Column(name="full_time_working_available_date")
	private Date fullTime_working;
	
	@Column(name="site")
	private String site;
	
	@Column(name="course_code")
	private String course_Code;
	
	@Column(name="course_name")
	private String course_Name;
	
	@Column(name="subject_type")
	private String subject_type;
	
	@Column(name="sub_subject_type")
	private String sub_subject_type;
	
	@Column(name="format_type")
	private String fomat_Type;
	
	@Column(name="from_date")
	private Date from_Date;
	
	@Column(name="to_date")
	private Date toDate;
	
	@Column(name="status")
	private String status;
	
	@Column(name="final_grade")
	private double final_grade;
	
	@Column(name="completion_level")
	private String completion_level;
	
	@Column(name="certificate_id")
	private String certificate_ID;
	
	@Column(name="updated_by")
	private String updated_by;
	
	@Column(name="updated_date")
	private Date updated_date;
	
	@Column(name="note01")
	private String note01;
	
	
	@Column(name="recer")
	private String recer;
	
	@Column(name="rec_status")
	private String rec_status;
	
	@Column(name="rec_detail_note")
	private Date rec_detail_note;
	
	@Column(name="cv_number")
	private int cv_number;
	
	@Column(name="st_contract_type")
	private String oneSt_contract_type;
	
	@Column(name="uni_hot_key")
	private String uni_Hot_Key;
	
	@Column(name="tier")
	private int tier;
	
	@Column(name="type_of_activity")
	private String type_of_activity;
	
	@Column(name="event_name")
	private String even_name;
	
	@Column(name="skill")
	private String skill;
	
	@Column(name="mail_merge")
	private String mail_Merge;
	
	@Column(name="feedback_status")
	private String feedback_Status;
	
	@Column(name="gpa")
	private double gpa;
	
	@Column(name="note02")
	private String note02;

	public int getNatioanl_ID() {
		return natioanl_ID;
	}

	public void setNatioanl_ID(int natioanl_ID) {
		this.natioanl_ID = natioanl_ID;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public int getDob() {
		return dob;
	}

	public void setDob(int dob) {
		this.dob = dob;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
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

	public String getFaceBook() {
		return faceBook;
	}

	public void setFaceBook(String faceBook) {
		this.faceBook = faceBook;
	}

	public Date getUnniversity_graduation_date() {
		return unniversity_graduation_date;
	}

	public void setUnniversity_graduation_date(Date unniversity_graduation_date) {
		this.unniversity_graduation_date = unniversity_graduation_date;
	}

	public Date getFullTime_working() {
		return fullTime_working;
	}

	public void setFullTime_working(Date fullTime_working) {
		this.fullTime_working = fullTime_working;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getCourse_Code() {
		return course_Code;
	}

	public void setCourse_Code(String course_Code) {
		this.course_Code = course_Code;
	}

	public String getCourse_Name() {
		return course_Name;
	}

	public void setCourse_Name(String course_Name) {
		this.course_Name = course_Name;
	}

	public String getSubject_type() {
		return subject_type;
	}

	public void setSubject_type(String subject_type) {
		this.subject_type = subject_type;
	}

	public String getSub_subject_type() {
		return sub_subject_type;
	}

	public void setSub_subject_type(String sub_subject_type) {
		this.sub_subject_type = sub_subject_type;
	}

	public String getFomat_Type() {
		return fomat_Type;
	}

	public void setFomat_Type(String fomat_Type) {
		this.fomat_Type = fomat_Type;
	}

	public Date getFrom_Date() {
		return from_Date;
	}

	public void setFrom_Date(Date from_Date) {
		this.from_Date = from_Date;
	}

	public Date getToDate() {
		return toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getFinal_grade() {
		return final_grade;
	}

	public void setFinal_grade(double final_grade) {
		this.final_grade = final_grade;
	}

	public String getCompletion_level() {
		return completion_level;
	}

	public void setCompletion_level(String completion_level) {
		this.completion_level = completion_level;
	}

	
	public String getUpdated_by() {
		return updated_by;
	}

	public void setUpdated_by(String updated_by) {
		this.updated_by = updated_by;
	}

	public Date getUpdated_date() {
		return updated_date;
	}

	public void setUpdated_date(Date updated_date) {
		this.updated_date = updated_date;
	}

	public String getNote01() {
		return note01;
	}

	public void setNote01(String note01) {
		this.note01 = note01;
	}

	public String getRecer() {
		return recer;
	}

	public void setRecer(String recer) {
		this.recer = recer;
	}

	public String getRec_status() {
		return rec_status;
	}

	public void setRec_status(String rec_status) {
		this.rec_status = rec_status;
	}

	public Date getRec_detail_note() {
		return rec_detail_note;
	}

	public void setRec_detail_note(Date rec_detail_note) {
		this.rec_detail_note = rec_detail_note;
	}

	public int getCv_number() {
		return cv_number;
	}

	public void setCv_number(int cv_number) {
		this.cv_number = cv_number;
	}

	public String getOneSt_contract_type() {
		return oneSt_contract_type;
	}

	public void setOneSt_contract_type(String oneSt_contract_type) {
		this.oneSt_contract_type = oneSt_contract_type;
	}

	public String getUni_Hot_Key() {
		return uni_Hot_Key;
	}

	public void setUni_Hot_Key(String uni_Hot_Key) {
		this.uni_Hot_Key = uni_Hot_Key;
	}

	public int getTier() {
		return tier;
	}

	public void setTier(int tier) {
		this.tier = tier;
	}

	public String getType_of_activity() {
		return type_of_activity;
	}

	public void setType_of_activity(String type_of_activity) {
		this.type_of_activity = type_of_activity;
	}

	public String getEven_name() {
		return even_name;
	}

	public void setEven_name(String even_name) {
		this.even_name = even_name;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getMail_Merge() {
		return mail_Merge;
	}

	public void setMail_Merge(String mail_Merge) {
		this.mail_Merge = mail_Merge;
	}

	public String getFeedback_Status() {
		return feedback_Status;
	}

	public void setFeedback_Status(String feedback_Status) {
		this.feedback_Status = feedback_Status;
	}

	public double getGpa() {
		return gpa;
	}

	public void setGpa(double gpa) {
		this.gpa = gpa;
	}

	public String getNote02() {
		return note02;
	}

	public void setNote02(String note02) {
		this.note02 = note02;
	}

	
	public String getCertificate_ID() {
		return certificate_ID;
	}

	public void setCertificate_ID(String certificate_ID) {
		this.certificate_ID = certificate_ID;
	}
	
	

	public CandidateEvent(int natioanl_ID, String account, String name, String university, String faculty, int dob,
			boolean gender, String email, String phone, String faceBook, Date unniversity_graduation_date,
			Date fullTime_working, String site, String course_Code, String course_Name, String subject_type,
			String sub_subject_type, String fomat_Type, Date from_Date, Date toDate, String status, double final_grade,
			String completion_level, String certificate_ID, String updated_by, Date updated_date, String note01,
			String recer, String rec_status, Date rec_detail_note, int cv_number, String oneSt_contract_type,
			String uni_Hot_Key, int tier, String type_of_activity, String even_name, String skill, String mail_Merge,
			String feedback_Status, double gpa, String note02) {
		super();
		this.natioanl_ID = natioanl_ID;
		this.account = account;
		this.name = name;
		this.university = university;
		this.faculty = faculty;
		this.dob = dob;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.faceBook = faceBook;
		this.unniversity_graduation_date = unniversity_graduation_date;
		this.fullTime_working = fullTime_working;
		this.site = site;
		this.course_Code = course_Code;
		this.course_Name = course_Name;
		this.subject_type = subject_type;
		this.sub_subject_type = sub_subject_type;
		this.fomat_Type = fomat_Type;
		this.from_Date = from_Date;
		this.toDate = toDate;
		this.status = status;
		this.final_grade = final_grade;
		this.completion_level = completion_level;
		this.certificate_ID = certificate_ID;
		this.updated_by = updated_by;
		this.updated_date = updated_date;
		this.note01 = note01;
		this.recer = recer;
		this.rec_status = rec_status;
		this.rec_detail_note = rec_detail_note;
		this.cv_number = cv_number;
		this.oneSt_contract_type = oneSt_contract_type;
		this.uni_Hot_Key = uni_Hot_Key;
		this.tier = tier;
		this.type_of_activity = type_of_activity;
		this.even_name = even_name;
		this.skill = skill;
		this.mail_Merge = mail_Merge;
		this.feedback_Status = feedback_Status;
		this.gpa = gpa;
		this.note02 = note02;
	}

	public CandidateEvent() {
		super();
	}
	
	
	

}
