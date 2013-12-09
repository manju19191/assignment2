package timetable;


import java.io.Serializable;
import java.util.ArrayList;

public class Student implements Serializable{
	

	private static final long serialVersionUID = 1L;
	    private String name;
	    private String studentNo;
	    private String courseName;
	    private String duration;
	    private String date;
	    private String time; 
	    private String repFreq; 
	    private String venue;
	    private static ArrayList<Student> studentList = new ArrayList<Student>();

	   Student(String name, String sn, String c , String d, String date, String t, String rep, String v){
	      this.name = name;
	      this.studentNo = sn;
	      this.courseName= c;
	      this.duration =d;
	      this.date =date;
	      this.time = t;
	      this.setVenue(v);
	      this.setRepFreq(rep);
	   }
	   
	   
	   public Student(){
			
			Student s1 = new Student("Jasmine", "13AGC019U", "PL3", "2 hour", "12/02/2013", "0900", "   ", "E5 Lecture Hall");
			studentList.add(s1);
		
		}

	   public String getName() {
	      return name;
	   }
	   
	   public ArrayList<Student> getStudents(){
		   return studentList;
	   }

	   public void setName(String name) {
	      this.name = name;
	   }

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
	
	public String toString(){
		return name + "\t\t" + studentNo + "\t\t" + courseName + "\t\t" + duration + "\t\t"  + date +"\t\t" + time;
	}
	public void addStudent(String studNo, String courseName, String date, String rep, String time, String dur, String venue){
			String name = "";
			Student e = null;
			for(int i =0; i< studentList.size(); i++){
				if(studentList.get(i).equals(courseName)){
					break;
				}
				if(studentList.get(i).getStudentNo().equals(studNo))
				{
					name = studentList.get(i).getName();
				}
				
				
				
			}
			e = new Student(name, studNo, courseName , dur, date, time , rep , venue);	
			studentList.add(e);
		}


	public String getRepFreq() {
		return repFreq;
	}


	public void setRepFreq(String repFreq) {
		this.repFreq = repFreq;
	}


	public String getVenue() {
		return venue;
	}


	public void setVenue(String venue) {
		this.venue = venue;
	}
		
		
		
	}

	

