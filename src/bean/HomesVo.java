package bean;

import java.util.List;

public class HomesVo {
	
	int hSerial;
	String hEmail;
	String hName;
	String hContent;
	String hType;
	String hAddress;
	String hLocation;
	
	List<HFilesVo> fileList;
	
	float grade = 0;//평점을 위한 변수
	
	public int gethSerial() {
		return hSerial;
	}
	public void sethSerial(int hSerial) {
		this.hSerial = hSerial;
	}
	public String gethEmail() {
		return hEmail;
	}
	public void sethEmail(String hEmail) {
		this.hEmail = hEmail;
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	public String gethContent() {
		return hContent;
	}
	public void sethContent(String hContent) {
		this.hContent = hContent;
	}
	public String gethType() {
		return hType;
	}
	public void sethType(String hType) {
		this.hType = hType;
	}
	public String gethAddress() {
		return hAddress;
	}
	public void sethAddress(String hAddress) {
		this.hAddress = hAddress;
	}
	public String gethLocation() {
		return hLocation;
	}
	public void sethLocation(String hLocation) {
		this.hLocation = hLocation;
	}
	public List<HFilesVo> getFileList() {
		return fileList;
	}
	public void setFileList(List<HFilesVo> fileList) {
		this.fileList = fileList;
	}
	public float getGrade() {
		return grade;
	}
	public void setGrade(float grade) {
		this.grade = grade;
	}


}
