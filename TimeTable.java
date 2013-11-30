package timetable;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
 
@Entity
public class TimeTable implements Serializable {
    private static final long serialVersionUID = 1L;
 
    // Persistent Fields:
    @Id @GeneratedValue
    Long id;
    private String name;
    private String signingDate;
    private String venue; 
    private String time; 
    private String repFeq;
    private String duration;
    private String maxAttend;
    private String compulsory;
    

    // Constructors:
    public TimeTable() {
    }
 
    public TimeTable(String name, String date, String venue, String time, String repFreq, String maxAttend, String c, String d) {
        this.name = name;
        this.signingDate = date;
        this.venue = venue; 
        this.time = time;
        this.repFeq = repFreq;
        this.maxAttend=maxAttend;
        this.compulsory = c; 
        this.duration = d;
    }
 
    // String Representation:
    @Override
    public String toString() {
        return name + "\t\t" + signingDate + "\t\t" + time + "\t\t" + duration + "\t\t" + venue + "\t" + repFeq + "\t" + maxAttend + "\t" + compulsory;
    }

	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	public String getRepFeq() {
		return repFeq;
	}

	public void setRepFeq(String repFeq) {
		this.repFeq = repFeq;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getMaxAttend() {
		return maxAttend;
	}

	public void setMaxAttend(String maxAttend) {
		this.maxAttend = maxAttend;
	}

	public String getCompulsory() {
		return compulsory;
	}

	public void setCompulsory(String compulsory) {
		this.compulsory = compulsory;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
}
