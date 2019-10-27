package nhom3.project.quanlyungvien.DAO;

import nhom3.project.quanlyungvien.model.Admin;

public interface loginDAO {
	
	public boolean getAdmin(String userName, String password);
	public Admin getId(String username);

}
