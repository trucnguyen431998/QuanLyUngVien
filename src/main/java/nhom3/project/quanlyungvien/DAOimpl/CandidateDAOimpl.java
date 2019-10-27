package nhom3.project.quanlyungvien.DAOimpl;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import nhom3.project.quanlyungvien.DAO.candidateDAO;
import nhom3.project.quanlyungvien.model.CandidateEvent;


@Repository
@Transactional
public class CandidateDAOimpl implements candidateDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<CandidateEvent> getListCandidateEvent() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		List<CandidateEvent> listCadidateEvent=session.createQuery("from CandidateEvent").list();
		
		return listCadidateEvent;
	}


	public void addCandidateEvent(CandidateEvent cadiEnvent) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		session.save(cadiEnvent);
		
	}

	public void updateCandidateEvent(CandidateEvent cadiEnvent) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		
		CandidateEvent candievent=new CandidateEvent();
		Date date=new Date();
		Query query= session.createQuery("from CandidateEvent c where c.natioanl_ID = :natioanl_ID ");
		query.setParameter("natioanl_ID", cadiEnvent.getNatioanl_ID()); // set primary
		candievent = (CandidateEvent)query.list().get(0);
			
		  candievent.setAccount(cadiEnvent.getAccount());
		  candievent.setName(cadiEnvent.getName());
		  candievent.setUniversity(cadiEnvent.getUniversity());
		  candievent.setFaculty(cadiEnvent.getFaculty());
		  candievent.setDob(cadiEnvent.getDob());
		  candievent.setGender(cadiEnvent.isGender());
		  candievent.setEmail(cadiEnvent.getEmail());
		  candievent.setPhone(cadiEnvent.getPhone()); candievent.setFaceBook("Null");
		  candievent.setUnniversity_graduation_date(date);
		  candievent.setFullTime_working(date);
		  candievent.setSite(cadiEnvent.getSite());
		  candievent.setCourse_Code(cadiEnvent.getCourse_Code());
		  candievent.setCourse_Name(cadiEnvent.getCourse_Name());
		  candievent.setSubject_type(cadiEnvent.getSubject_type());
		  candievent.setSub_subject_type(cadiEnvent.getSub_subject_type());
		  candievent.setFomat_Type(cadiEnvent.getFomat_Type());
		  candievent.setFrom_Date(date); candievent.setToDate(date);
		  candievent.setStatus(cadiEnvent.getStatus());
		  candievent.setFinal_grade(cadiEnvent.getFinal_grade());
		  candievent.setCompletion_level("Null");
		  candievent.setCertificate_ID(cadiEnvent.getCertificate_ID());
		  candievent.setUpdated_by(cadiEnvent.getUpdated_by());
		  candievent.setUpdated_date(date);
		  candievent.setNote01(cadiEnvent.getNote01());
		  candievent.setRecer(cadiEnvent.getRecer());
		  candievent.setRec_status(cadiEnvent.getRec_status());
		  candievent.setRec_detail_note(date);
		  candievent.setCv_number(cadiEnvent.getCv_number());
		  candievent.setOneSt_contract_type(cadiEnvent.getOneSt_contract_type());
		  candievent.setUni_Hot_Key(cadiEnvent.getUni_Hot_Key());
		  candievent.setTier(cadiEnvent.getTier());
		  candievent.setType_of_activity(cadiEnvent.getType_of_activity());
		  candievent.setEven_name("Code war");
		  candievent.setSkill(cadiEnvent.getSkill()); candievent.setMail_Merge("Null");
		  candievent.setFeedback_Status("Null");
		  candievent.setGpa(cadiEnvent.getGpa()); candievent.setNote02("Null");
		 
		session.update(candievent);
	}

	

	public CandidateEvent getCandidateEvent(int account) {
		// TODO Auto-generated method stub
		return (CandidateEvent)sessionFactory.getCurrentSession().get(CandidateEvent.class, account);
	}
	

}
