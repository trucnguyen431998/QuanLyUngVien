package nhom3.project.quanlyungvien.DAO;

import java.util.List;

import nhom3.project.quanlyungvien.model.CandidateEvent;

public interface candidateDAO {
	
	 public List<CandidateEvent> getListCandidateEvent();
	    
	    public CandidateEvent getCandidateEvent(int account);
		
		public void addCandidateEvent(CandidateEvent cadiEnvent);

		public void updateCandidateEvent(CandidateEvent cadiEnvent);
		
	/* public void deleteCandidateEvent(int account); */

}
