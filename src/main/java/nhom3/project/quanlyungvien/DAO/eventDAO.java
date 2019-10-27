package nhom3.project.quanlyungvien.DAO;

import java.util.List;

import nhom3.project.quanlyungvien.model.Event;

public interface eventDAO {
    public List<Event> getAllEvent();
    
    public Event getEvent(int id);
	
	public void addEvent(Event ev);

	public void updateEvent(Event ev);
	
	/* public void deleteEvent(int id); */
}
