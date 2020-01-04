package bean;

import java.util.List;

public class SearchVo {
	String findStr;
	
	//details table
	String mEmail;
	String dSelfcheckin;
	String dParking;
	String dKitchen;
	String dWasher;
	String dAc;
	String dWifi;
	String dTv;
	String dAmenity;
	String dHdrier;
	int dPeople;
	int dBedroom;
	int dBed;
	int dBathroom;
	
	//house table
	String hEmail;
	String hName;
	String hType;
	String hAddress;
	String hLocation;
	int hPrice;

	List<HFilesVo> fileList;
	
	float grade = 0;// 평점을 위한 변수

	public String getFindStr() {
		return findStr;
	}

	public void setFindStr(String findStr) {
		this.findStr = findStr;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getdSelfcheckin() {
		return dSelfcheckin;
	}

	public void setdSelfcheckin(String dSelfcheckin) {
		this.dSelfcheckin = dSelfcheckin;
	}

	public String getdParking() {
		return dParking;
	}

	public void setdParking(String dParking) {
		this.dParking = dParking;
	}

	public String getdKitchen() {
		return dKitchen;
	}

	public void setdKitchen(String dKitchen) {
		this.dKitchen = dKitchen;
	}

	public String getdWasher() {
		return dWasher;
	}

	public void setdWasher(String dWasher) {
		this.dWasher = dWasher;
	}

	public String getdAc() {
		return dAc;
	}

	public void setdAc(String dAc) {
		this.dAc = dAc;
	}

	public String getdWifi() {
		return dWifi;
	}

	public void setdWifi(String dWifi) {
		this.dWifi = dWifi;
	}

	public String getdTv() {
		return dTv;
	}

	public void setdTv(String dTv) {
		this.dTv = dTv;
	}

	public String getdAmenity() {
		return dAmenity;
	}

	public void setdAmenity(String dAmenity) {
		this.dAmenity = dAmenity;
	}

	public String getdHdrier() {
		return dHdrier;
	}

	public void setdHdrier(String dHdrier) {
		this.dHdrier = dHdrier;
	}

	public int getdPeople() {
		return dPeople;
	}

	public void setdPeople(int dPeople) {
		this.dPeople = dPeople;
	}

	public int getdBedroom() {
		return dBedroom;
	}

	public void setdBedroom(int dBedroom) {
		this.dBedroom = dBedroom;
	}

	public int getdBed() {
		return dBed;
	}

	public void setdBed(int dBed) {
		this.dBed = dBed;
	}

	public int getdBathroom() {
		return dBathroom;
	}

	public void setdBathroom(int dBathroom) {
		this.dBathroom = dBathroom;
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

	public int gethPrice() {
		return hPrice;
	}

	public void sethPrice(int hPrice) {
		this.hPrice = hPrice;
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
