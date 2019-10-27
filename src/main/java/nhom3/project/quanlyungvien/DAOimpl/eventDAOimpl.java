package nhom3.project.quanlyungvien.DAOimpl;


import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import nhom3.project.quanlyungvien.DAO.eventDAO;
import nhom3.project.quanlyungvien.model.Event;

@Repository
@Transactional
public class eventDAOimpl implements eventDAO {


	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public List<Event> getAllEvent() {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.getCurrentSession();
		List<Event> listEvent=session.createQuery("from Event").list();
		
		return listEvent;
	}

	public Event getEvent(int id) {
		// TODO Auto-generated method stub
		return (Event)sessionFactory.getCurrentSession().get(Event.class, id);
	}

	public void addEvent(Event ev) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		session.save(ev);
		
	}

	public void updateEvent(Event ev) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		
		Event event=new Event();
		Date date=new Date();
		Query query= session.createQuery("from Event e where e.course_Code = :event_id ");
		query.setParameter("event_id", ev.getCourse_Code()); // set primary
		event = (Event)query.list().get(0);
		
		event.setSite(ev.getSite());
		//event.setCourse_Code(ev.getCourse_Code());
		event.setCourse_Name(ev.getCourse_Name());
		event.setSubject_Type(ev.getSubject_Type());
		event.setSub_Subject_Type(ev.getSub_Subject_Type());
		event.setFormat_Type(ev.getFormat_Type());
		event.setSupplier_Partner(ev.getSupplier_Partner());
		event.setPlanned_Start_date(date);
		event.setPlanned_End_Date(date);
		event.setPlanned_Learning_Time(ev.getPlanned_Learning_Time());
		event.setPlanned_number_of_students(ev.getPlanned_number_of_students());
		event.setPlanned_Expense("Null");
		event.setBudget_code("Null");
		event.setActual_Start_Date(date);
		event.setActual_End_Date(date);
		event.setActual_Learning_Time(ev.getActual_Learning_Time());
		event.setActual_Number_of_trainees(ev.getActual_Number_of_trainees());
		event.setNumber_of_enrolled_students(ev.getNumber_of_enrolled_students());
		event.setNumber_of_Certified_Students(ev.getNumber_of_Certified_Students());
		event.setActual_Expense("Null");
		event.setTraining_feedback("Null");
		event.setTraining_feedback_Content("Null");
		event.setTraining_feedback_Teacher("Null");
		event.setTraining_feedback_Organization("Null");
		event.setUpdated_by("Null");
		event.setUpdated_date(date);
		event.setNote("Null");
		event.setStart_date(date);
		event.setEnd_date(date);
		event.setLearning_time(ev.getLearning_time());
		event.setNumber_of_Students(ev.getNumber_of_Students());
		event.setExpense(ev.getExpense());
		event.setCourse_status(ev.getCourse_status());
		event.setStart_Year(ev.getStart_Year());
		event.setStart_Month(ev.getStart_Month());
		event.setEnd_Year(ev.getEnd_Year());
		event.setEnd_Month(ev.getEnd_Month());
		event.setStudent_list_check(ev.isStudent_list_check());
		event.setCreate_Code01(ev.getCreate_Code01());
		event.setCreate_Code02(ev.getCreate_Code02());
		event.setCreate_Code03(ev.getCreate_Code03());
		event.setCreate_Code04(ev.getCreate_Code04());
		event.setCreate_Code05(ev.getCreate_Code05());
		event.setYear_19(ev.getYear_19());
		event.setStart_class_0(ev.getStart_class_0());
		event.setStart_class_Formular(ev.getStart_class_Formular());

		session.update(event);
		
	}

	/*
	 * public void deleteEvent(int id) { // TODO Auto-generated method stub Session
	 * session=this.sessionFactory.getCurrentSession(); Event
	 * ev=(Event)sessionFactory.getCurrentSession().load(Event.class, id);
	 * session.delete(ev); }
	 */
	
	
	
	
	
}
