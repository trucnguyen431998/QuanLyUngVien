package nhom3.project.quanlyungvien.controller;

import nhom3.project.quanlyungvien.DAO.eventDAO;
import nhom3.project.quanlyungvien.model.CandidateEvent;
import nhom3.project.quanlyungvien.model.Event;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class FileUploadAndImportToDB {

	/*
	 * @Autowired private static eventDAO eventDAO;
	 * 
	 * private static String fileLocation; //private String fileLocation;
	 * 
	 * @RequestMapping(method = RequestMethod.POST, value = "/uploadExcelFile")
	 * public String uploadFile(Model model, MultipartFile file) throws IOException
	 * { InputStream in = file.getInputStream(); File currDir = new File(".");
	 * String path = currDir.getAbsolutePath(); fileLocation = path.substring(0,
	 * path.length() - 1) + file.getOriginalFilename(); FileOutputStream f = new
	 * FileOutputStream(fileLocation); int ch = 0; while ((ch = in.read()) != -1) {
	 * f.write(ch); } f.flush(); f.close(); model.addAttribute("message", "File: " +
	 * file.getOriginalFilename() + " has been uploaded successfully!"); return
	 * "excel"; }
	 * 
	 * public static String castToString(Cell cell){ String string;
	 * if(cell.getCellTypeEnum() == CellType.STRING){
	 * 
	 * string = cell.getStringCellValue(); }else{ string =
	 * (double)cell.getNumericCellValue() + ""; } return string; }
	 * 
	 * public static double castToNumber(Cell cell){ double number =
	 * cell.getNumericCellValue(); return number; }
	 * 
	 * public static Date castToDate(Cell cell){ Date date =
	 * cell.getDateCellValue(); return date; }
	 * 
	 * public static <Email> Email castToEmail(Cell cell){
	 * 
	 * @SuppressWarnings("unchecked") Email email = (Email)
	 * cell.getStringCellValue(); return email; }
	 * 
	 * public static boolean castToBool(Cell cell){ boolean bool =
	 * cell.getBooleanCellValue(); return bool; }
	 * 
	 * public static int castToInt(Cell cell){ int in = (int)
	 * cell.getNumericCellValue(); return in; }
	 * 
	 * 
	 * //Ä�á»�c file Excel á»Ÿ sheet event public static XSSFSheet
	 * readXSSFWorkbookEvent(String fileLocation){
	 * 
	 * XSSFWorkbook workbook = null; try { FileInputStream fis; fis = new
	 * FileInputStream(new File(fileLocation)); XSSFSheet sheet; CandidateEvent
	 * event; workbook = new XSSFWorkbook(fis); sheet = workbook.getSheetAt(1);
	 * //Ä‘á»�c sheet event return sheet; } catch (FileNotFoundException e1) {
	 * e1.printStackTrace(); } catch(Exception ex){ System.out.println(ex); }finally
	 * { if (workbook != null) { try { workbook.close(); } catch (IOException e) {
	 * e.printStackTrace(); } } } return null; }
	 * 
	 * //Ä�á»�c file Excel á»Ÿ sheet candidate theo event public XSSFSheet
	 * readXSSFWorkbookCandidateByEvent(){
	 * 
	 * XSSFWorkbook workbook = null; try { FileInputStream fis; fis = new
	 * FileInputStream(new File(fileLocation)); XSSFSheet sheet; CandidateEvent
	 * event; workbook = new XSSFWorkbook(fis); sheet = workbook.getSheetAt(2);
	 * //Ä‘á»�c sheet candidate theo event return sheet; } catch
	 * (FileNotFoundException e1) { e1.printStackTrace(); } catch(Exception ex){
	 * System.out.println(ex); }finally { if (workbook != null) { try {
	 * workbook.close(); } catch (IOException e) { e.printStackTrace(); } } } return
	 * null; }
	 * 
	 * //Ä�á»�c file Excel á»Ÿ sheet candidate gá»­i CV public XSSFSheet
	 * readXSSFWorkbookCandidateByCV(){
	 * 
	 * XSSFWorkbook workbook = null; try { FileInputStream fis; fis = new
	 * FileInputStream(new File(fileLocation)); XSSFSheet sheet; CandidateEvent
	 * event; workbook = new XSSFWorkbook(fis); sheet = workbook.getSheetAt(3);
	 * //Ä‘á»�c sheet candidate gá»­i CV return sheet; } catch
	 * (FileNotFoundException e1) { e1.printStackTrace(); } catch(Exception ex){
	 * System.out.println(ex); }finally { if (workbook != null) { try {
	 * workbook.close(); } catch (IOException e) { e.printStackTrace(); } } } return
	 * null; }
	 * 
	 * 
	 * //Ä‘á»�c sheet event vÃ  chá»©a vÃ o eventList public static List<Event>
	 * getEventList(String fileLocation){ List<Event> eventList = new
	 * ArrayList<Event>(); Event event = new Event(); XSSFSheet sheet =
	 * readXSSFWorkbookEvent(fileLocation); //for (int i = sheet.getFirstRowNum(); i
	 * <= sheet.getLastRowNum(); i++) { for (int i = 3; i <= sheet.getLastRowNum();
	 * i++) { //Ä‘á»�c tá»« dÃ²ng thá»© 3 event = new Event(); XSSFRow row =
	 * sheet.getRow(i); if (row != null) { int j=0;
	 * event.setSite(row.getCell(j)!=null? castToString(row.getCell(j)):new
	 * String()); event.setCourse_Code(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setCourse_Name(row.getCell(j++)!=null?
	 * castToString(row.getCell(j++)):new String());
	 * event.setSubject_Type(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setSub_Subject_Type(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setFormat_Type(row.getCell(j++)!=null? castToString(row.getCell(j)):new
	 * String()); event.setSupplier_Partner(row.getCell(j++)!=null ?
	 * castToString(row.getCell(j)):new String());
	 * event.setPlanned_Start_date(row.getCell(j++)!=null ?
	 * castToDate(row.getCell(j)):new Date());
	 * event.setPlanned_End_Date(row.getCell(j++)!=null?
	 * castToDate(row.getCell(0)):new Date());
	 * event.setPlanned_Learning_Time(row.getCell(j++)!=null?
	 * castToInt(row.getCell(j)): new String());
	 * event.setPlanned_number_of_students(row.getCell(j++)!=null?
	 * castToInt(row.getCell(j)):new String());
	 * event.setPlanned_Expense(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setBudget_code(row.getCell(j++)!=null? castToString(row.getCell(j)):new
	 * String()); event.setActual_Start_Date(row.getCell(j++)!=null?
	 * castToDate(row.getCell(j)):new Date());
	 * event.setActual_End_Date(row.getCell(j++)!=null?
	 * castToDate(row.getCell(j)):new Date());
	 * event.setActual_Learning_Time(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setActual_Number_of_trainees(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setNumber_of_Certified_Students(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setActual_Expense(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setTraining_feedback(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setTraining_feedback_Content(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setTraining_feedback_Teacher(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setTraining_feedback_Organization(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setUpdated_by(row.getCell(j++)!=null? castToString(row.getCell(j)):new
	 * String()); event.setNote(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setStart_date(row.getCell(j++)!=null? castToDate(row.getCell(j)):new
	 * Date()); event.setEnd_date(row.getCell(j++)!=null?
	 * castToDate(row.getCell(j)):new Date());
	 * event.setLearning_time(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setNumber_of_Students(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setExpense(row.getCell(j++)!=null? castToString(row.getCell(j)):new
	 * String()); event.setCourse_status(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setStart_Year(row.getCell(j++)!=null? castToString(row.getCell(j)):new
	 * String()); event.setStart_Month(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setEnd_Year(row.getCell(j++)!=null? castToString(row.getCell(j)):new
	 * String()); event.setStudent_list_check(row.getCell(j++)!=null?
	 * castToBool(row.getCell(j)):new String());
	 * event.setCreate_Code00(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setCreate_Code01(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setCreate_Code02(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setCreate_Code03(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setCreate_Code04(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setYear_19(row.getCell(j++)!=null? castToString(row.getCell(j)):new
	 * String()); event.setStart_class_0(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String());
	 * event.setStart_class_Formular(row.getCell(j++)!=null?
	 * castToString(row.getCell(j)):new String()); } eventList.add(event); } return
	 * eventList; }
	 * 
	 * 
	 * //Ä‘á»�c sheet candidate theo event vÃ  chá»©a vÃ o candidateList public
	 * static List<CandidateEvent> getCandidateListByEvent(String fileLocation){
	 * List<CandidateEvent> candidateEventList = new ArrayList<CandidateEvent>();
	 * CandidateEvent candidateEvent = new CandidateEvent(); XSSFSheet sheet =
	 * readXSSFWorkbookEvent(fileLocation);
	 * 
	 * for (int i = 3; i <= sheet.getLastRowNum(); i++) { //Ä‘á»�c tá»« dÃ²ng thá»©
	 * 3 candidateEvent = new CandidateEvent(); XSSFRow row = sheet.getRow(i); if
	 * (row != null) { int j=0; //candidateEvent.setSite(row.getCell(j)!=null?
	 * castToString(row.getCell(j)):new String()); //ghi tÆ°Æ¡ng tá»± nhÆ° eventList
	 * nha Quyá»�n !!! } candidateEventList.add(candidateEvent); } return
	 * candidateEventList; }
	 * 
	 * //Ä‘á»�c sheet candidate theo CV vÃ  chá»©a vÃ o candidateList public static
	 * List<CandidateEvent> getCandidateListByCV(String fileLocation){
	 * List<CandidateEvent> candidateEventList = new ArrayList<CandidateEvent>();
	 * CandidateEvent candidateEvent = new CandidateEvent(); XSSFSheet sheet =
	 * readXSSFWorkbookEvent(fileLocation);
	 * 
	 * for (int i = 2; i <= sheet.getLastRowNum(); i++) { //Ä‘á»�c tá»« dÃ²ng thá»©
	 * 2 candidateEvent = new CandidateEvent(); XSSFRow row = sheet.getRow(i); if
	 * (row != null) { int j=0; //candidateEvent.setSite(row.getCell(j)!=null?
	 * castToString(row.getCell(j)):new String()); //ghi tÆ°Æ¡ng tá»± nhÆ° eventList
	 * nha Quyá»�n !!! } candidateEventList.add(candidateEvent); } return
	 * candidateEventList; }
	 * 
	 * //ghi dá»¯ liá»‡u vÃ o database public static void importToDatabase(){
	 * List<Event> eventList = getEventList(fileLocation); for (Event
	 * event:eventList) { eventDAO.addEvent(event); } List<CandidateEvent>
	 * candidateEventList = getCandidateListByEvent(fileLocation); for (Event
	 * event:eventList) { //eventDAO.addEvent(event); } }
	 */








}
