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
	String hLatitude; // 위도
	String hLongitude; // 경도
	String hWide; //광역자치단체
	String hBasic; //기초자치단체
	int hPrice;

	List<HFilesVo> fileList;
	List<CommentsVo> commentsList;
	DetailsVo vo;
	UserVo host;
	
	float grade = 0;// 평점을 위한 변수
	

	public void setHost(UserVo host) {
		this.host = host;
	}

	public UserVo getHost() {
		return this.host;
	}

	public int gethPrice() {
		return hPrice;
	}

	public void sethPrice(int hPrice) {
		this.hPrice = hPrice;
	}

	public DetailsVo getVo() {
		return vo;
	}

	public void setVo(DetailsVo vo) {
		this.vo = vo;
	}

	public void sethLatitude(String hLatitude) {
		this.hLatitude = hLatitude;
	}

	public String gethLatitude() {
		return hLatitude;
	}

	public String gethLongitude() {
		return hLongitude;
	}
	
	public void sethLongitude(String hLongitude) {
		this.hLongitude = hLongitude;
	}

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

	public List<CommentsVo> getCommentsList() {
		return commentsList;
	}

	public void setCommentsList(List<CommentsVo> commentsList) {
		this.commentsList = commentsList;
	}

	public float getGrade() {
		return grade;
	}

	public void setGrade(float grade) {
		this.grade = grade;
	}
}