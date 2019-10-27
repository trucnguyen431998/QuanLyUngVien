package nhom3.project.quanlyungvien.model;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "event")
public class Event {
	
	
	@Id
	@Column(name="event_id")
	@Basic(optional = false)
	private int event_id;
	
	
	@Column(name="site")
    private String site;
	
	
	@Column(name="course_code")
    private String course_Code;
	
	@Column(name="course_name")
    private String course_Name;
	
	@Column(name="subject_type")
    private String subject_Type;
	
	@Column(name="sub_subject_type")
    private String sub_Subject_Type;
	
	@Column(name="format_type")
    private String format_Type;
	
	@Column(name="supplier_partner")
    private String supplier_Partner;
	
	
	@Column(name="planned_start_date")
    private Date planned_Start_date;
	
	@Column(name="planned_end_date")
    private Date planned_End_Date;
	
	@Column(name="planned_learning_time")
    private int planned_Learning_Time;
	
	@Column(name="planned_number_of_student")
    private int planned_number_of_students;
	
	@Column(name="planned_expense")
    private String planned_Expense;
	
	@Column(name="budget_code")
    private String budget_code;
	
	@Column(name="actual_start_date")
    private Date actual_Start_Date;
	
	@Column(name="actual_end_date")
    private Date actual_End_Date;
	
	@Column(name="actual_learning_time")
    private int actual_Learning_Time;
	
	@Column(name="actual_number_of_trainees")
    private int actual_Number_of_trainees;
	
	@Column(name="number_of_enrolled_students")
    private int number_of_enrolled_students;
	
	@Column(name="number_of_certified_students")
    private int number_of_Certified_Students;
	
	@Column(name="actual_expense")
    private String actual_Expense;
	
	@Column(name="training_feedback")
    private String training_feedback;
	
	@Column(name="training_feedback_content")
    private String training_feedback_Content;
	
	@Column(name="training_feedback_teacher")
    private String training_feedback_Teacher;
	
	@Column(name="training_feedback_organization")
    private String training_feedback_Organization;
	
	@Column(name="updated_by")
    private String updated_by;
	
	@Column(name="updated_date")
    private Date updated_date;
	
	@Column(name="note")
    private String note;
	
	@Column(name="start_date")
    private Date start_date;
	
	@Column(name="end_date")
    private Date end_date;
	
	@Column(name="learning_time")
    private int learning_time;
	
	@Column(name="number_of_students")
    private int number_of_Students;
	
	@Column(name="expense")
    private String expense;
	
	@Column(name="course_status")
    private String course_status;
	
	@Column(name="start_year")
    private int start_Year;
	
	@Column(name="start_month")
    private int start_Month;
	
	@Column(name="end_year")
    private int end_Year;
	
	@Column(name="end_month")
    private int end_Month;
	
	@Column(name="student_list_check")
    private boolean student_list_check;
	
	@Column(name="create_code_01")
    private String create_Code01;
	
	@Column(name="create_code_02")
    private String create_Code02;
	
	@Column(name="create_code_03")
    private String create_Code03;
	
	@Column(name="create_code_04")
    private String create_Code04;
	
	@Column(name="create_code_05")
    private String create_Code05;
	
	@Column(name="year")
    private int year_19;
	
	@Column(name="start")
    private int start_class_0;
	
	@Column(name="formular")
    private String start_class_Formular;

	
	public int getEvent_id() {
		return event_id;
	}

	public void setEvent_id(int event_id) {
		this.event_id = event_id;
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

	public String getSubject_Type() {
		return subject_Type;
	}

	public void setSubject_Type(String subject_Type) {
		this.subject_Type = subject_Type;
	}

	public String getSub_Subject_Type() {
		return sub_Subject_Type;
	}

	public void setSub_Subject_Type(String sub_Subject_Type) {
		this.sub_Subject_Type = sub_Subject_Type;
	}

	public String getFormat_Type() {
		return format_Type;
	}

	public void setFormat_Type(String format_Type) {
		this.format_Type = format_Type;
	}

	public String getSupplier_Partner() {
		return supplier_Partner;
	}

	public void setSupplier_Partner(String supplier_Partner) {
		this.supplier_Partner = supplier_Partner;
	}

	public Date getPlanned_Start_date() {
		return planned_Start_date;
	}

	public void setPlanned_Start_date(Date planned_Start_date) {
		this.planned_Start_date = planned_Start_date;
	}

	public Date getPlanned_End_Date() {
		return planned_End_Date;
	}

	public void setPlanned_End_Date(Date planned_End_Date) {
		this.planned_End_Date = planned_End_Date;
	}

	public int getPlanned_Learning_Time() {
		return planned_Learning_Time;
	}

	public void setPlanned_Learning_Time(int planned_Learning_Time) {
		this.planned_Learning_Time = planned_Learning_Time;
	}

	public int getPlanned_number_of_students() {
		return planned_number_of_students;
	}

	public void setPlanned_number_of_students(int planned_number_of_students) {
		this.planned_number_of_students = planned_number_of_students;
	}

	public String getPlanned_Expense() {
		return planned_Expense;
	}

	public void setPlanned_Expense(String planned_Expense) {
		this.planned_Expense = planned_Expense;
	}

	public String getBudget_code() {
		return budget_code;
	}

	public void setBudget_code(String budget_code) {
		this.budget_code = budget_code;
	}

	public Date getActual_Start_Date() {
		return actual_Start_Date;
	}

	public void setActual_Start_Date(Date actual_Start_Date) {
		this.actual_Start_Date = actual_Start_Date;
	}

	public Date getActual_End_Date() {
		return actual_End_Date;
	}

	public void setActual_End_Date(Date actual_End_Date) {
		this.actual_End_Date = actual_End_Date;
	}

	public int getActual_Learning_Time() {
		return actual_Learning_Time;
	}

	public void setActual_Learning_Time(int actual_Learning_Time) {
		this.actual_Learning_Time = actual_Learning_Time;
	}

	public int getActual_Number_of_trainees() {
		return actual_Number_of_trainees;
	}

	public void setActual_Number_of_trainees(int actual_Number_of_trainees) {
		this.actual_Number_of_trainees = actual_Number_of_trainees;
	}

	public int getNumber_of_enrolled_students() {
		return number_of_enrolled_students;
	}

	public void setNumber_of_enrolled_students(int number_of_enrolled_students) {
		this.number_of_enrolled_students = number_of_enrolled_students;
	}

	public int getNumber_of_Certified_Students() {
		return number_of_Certified_Students;
	}

	public void setNumber_of_Certified_Students(int number_of_Certified_Students) {
		this.number_of_Certified_Students = number_of_Certified_Students;
	}

	public String getActual_Expense() {
		return actual_Expense;
	}

	public void setActual_Expense(String actual_Expense) {
		this.actual_Expense = actual_Expense;
	}

	public String getTraining_feedback() {
		return training_feedback;
	}

	public void setTraining_feedback(String training_feedback) {
		this.training_feedback = training_feedback;
	}

	public String getTraining_feedback_Content() {
		return training_feedback_Content;
	}

	public void setTraining_feedback_Content(String training_feedback_Content) {
		this.training_feedback_Content = training_feedback_Content;
	}

	public String getTraining_feedback_Teacher() {
		return training_feedback_Teacher;
	}

	public void setTraining_feedback_Teacher(String training_feedback_Teacher) {
		this.training_feedback_Teacher = training_feedback_Teacher;
	}

	public String getTraining_feedback_Organization() {
		return training_feedback_Organization;
	}

	public void setTraining_feedback_Organization(String training_feedback_Organization) {
		this.training_feedback_Organization = training_feedback_Organization;
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

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public int getLearning_time() {
		return learning_time;
	}

	public void setLearning_time(int learning_time) {
		this.learning_time = learning_time;
	}

	public int getNumber_of_Students() {
		return number_of_Students;
	}

	public void setNumber_of_Students(int number_of_Students) {
		this.number_of_Students = number_of_Students;
	}

	public String getExpense() {
		return expense;
	}

	public void setExpense(String expense) {
		this.expense = expense;
	}

	public String getCourse_status() {
		return course_status;
	}

	public void setCourse_status(String course_status) {
		this.course_status = course_status;
	}

	public int getStart_Year() {
		return start_Year;
	}

	public void setStart_Year(int start_Year) {
		this.start_Year = start_Year;
	}

	public int getStart_Month() {
		return start_Month;
	}

	public void setStart_Month(int start_Month) {
		this.start_Month = start_Month;
	}

	public int getEnd_Year() {
		return end_Year;
	}

	public void setEnd_Year(int end_Year) {
		this.end_Year = end_Year;
	}

	public int getEnd_Month() {
		return end_Month;
	}

	public void setEnd_Month(int end_Month) {
		this.end_Month = end_Month;
	}

	public boolean isStudent_list_check() {
		return student_list_check;
	}

	public void setStudent_list_check(boolean student_list_check) {
		this.student_list_check = student_list_check;
	}

	public String getCreate_Code01() {
		return create_Code01;
	}

	public void setCreate_Code01(String create_Code01) {
		this.create_Code01 = create_Code01;
	}

	public String getCreate_Code02() {
		return create_Code02;
	}

	public void setCreate_Code02(String create_Code02) {
		this.create_Code02 = create_Code02;
	}

	public String getCreate_Code03() {
		return create_Code03;
	}

	public void setCreate_Code03(String create_Code03) {
		this.create_Code03 = create_Code03;
	}

	public String getCreate_Code04() {
		return create_Code04;
	}

	public void setCreate_Code04(String create_Code04) {
		this.create_Code04 = create_Code04;
	}

	public String getCreate_Code05() {
		return create_Code05;
	}

	public void setCreate_Code05(String create_Code05) {
		this.create_Code05 = create_Code05;
	}

	public int getYear_19() {
		return year_19;
	}

	public void setYear_19(int year_19) {
		this.year_19 = year_19;
	}

	public int getStart_class_0() {
		return start_class_0;
	}

	public void setStart_class_0(int start_class_0) {
		this.start_class_0 = start_class_0;
	}

	public String getStart_class_Formular() {
		return start_class_Formular;
	}

	public void setStart_class_Formular(String start_class_Formular) {
		this.start_class_Formular = start_class_Formular;
	}

	public Event() {
		super();
	}

	public Event(int event_id, String site, String course_Code, String course_Name, String subject_Type,
			String sub_Subject_Type, String format_Type, String supplier_Partner, Date planned_Start_date,
			Date planned_End_Date, int planned_Learning_Time, int planned_number_of_students, String planned_Expense,
			String budget_code, Date actual_Start_Date, Date actual_End_Date, int actual_Learning_Time,
			int actual_Number_of_trainees, int number_of_enrolled_students, int number_of_Certified_Students,
			String actual_Expense, String training_feedback, String training_feedback_Content,
			String training_feedback_Teacher, String training_feedback_Organization, String updated_by,
			Date updated_date, String note, Date start_date, Date end_date, int learning_time, int number_of_Students,
			String expense, String course_status, int start_Year, int start_Month, int end_Year, int end_Month,
			boolean student_list_check, String create_Code01, String create_Code02, String create_Code03,
			String create_Code04, String create_Code05, int year_19, int start_class_0, String start_class_Formular) {
		super();
		this.event_id = event_id;
		this.site = site;
		this.course_Code = course_Code;
		this.course_Name = course_Name;
		this.subject_Type = subject_Type;
		this.sub_Subject_Type = sub_Subject_Type;
		this.format_Type = format_Type;
		this.supplier_Partner = supplier_Partner;
		this.planned_Start_date = planned_Start_date;
		this.planned_End_Date = planned_End_Date;
		this.planned_Learning_Time = planned_Learning_Time;
		this.planned_number_of_students = planned_number_of_students;
		this.planned_Expense = planned_Expense;
		this.budget_code = budget_code;
		this.actual_Start_Date = actual_Start_Date;
		this.actual_End_Date = actual_End_Date;
		this.actual_Learning_Time = actual_Learning_Time;
		this.actual_Number_of_trainees = actual_Number_of_trainees;
		this.number_of_enrolled_students = number_of_enrolled_students;
		this.number_of_Certified_Students = number_of_Certified_Students;
		this.actual_Expense = actual_Expense;
		this.training_feedback = training_feedback;
		this.training_feedback_Content = training_feedback_Content;
		this.training_feedback_Teacher = training_feedback_Teacher;
		this.training_feedback_Organization = training_feedback_Organization;
		this.updated_by = updated_by;
		this.updated_date = updated_date;
		this.note = note;
		this.start_date = start_date;
		this.end_date = end_date;
		this.learning_time = learning_time;
		this.number_of_Students = number_of_Students;
		this.expense = expense;
		this.course_status = course_status;
		this.start_Year = start_Year;
		this.start_Month = start_Month;
		this.end_Year = end_Year;
		this.end_Month = end_Month;
		this.student_list_check = student_list_check;
		this.create_Code01 = create_Code01;
		this.create_Code02 = create_Code02;
		this.create_Code03 = create_Code03;
		this.create_Code04 = create_Code04;
		this.create_Code05 = create_Code05;
		this.year_19 = year_19;
		this.start_class_0 = start_class_0;
		this.start_class_Formular = start_class_Formular;
	}

	

   
}
