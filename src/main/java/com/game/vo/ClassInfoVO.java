package com.game.vo;

public class ClassInfoVO {
	private int ciNum;
	private String ciName;
	private int ciAge;
	private int ciGrade;
	
	public int getCiNum() {
		return ciNum;
	}
	public void setCiNum(int ciNum) {
		this.ciNum = ciNum;
	}
	public String getCiName() {
		return ciName;
	}
	public void setCiName(String ciName) {
		this.ciName = ciName;
	}
	public int getCiAge() {
		return ciAge;
	}
	public void setCiAge(int ciAge) {
		this.ciAge = ciAge;
	}
	public int getCiGrade() {
		return ciGrade;
	}
	public void setCiGrade(int ciGrade) {
		this.ciGrade = ciGrade;
	}
	
	@Override
	public String toString() {
		return "ClassInfoVO [ciNum=" + ciNum + ", ciName=" + ciName + ", ciAge=" + ciAge + ", ciGrade=" + ciGrade + "]";
	}
}
