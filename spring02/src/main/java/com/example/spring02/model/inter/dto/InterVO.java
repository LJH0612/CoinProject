package com.example.spring02.model.inter.dto;

public class InterVO {
	private int interId;//�������� ��ȣ
	private String userId;//����� ���̵�
	private String userName;//����� �̸�
	private int coinId;//���� ��ȣ
	private String coinName;//���� �̸�
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getCoinId() {
		return coinId;
	}
	public void setCoinId(int coinId) {
		this.coinId = coinId;
	}
	public int getInterId() {
		return interId;
	}
	public void setInterId(int interId) {
		this.interId = interId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCoinName() {
		return coinName;
	}
	public void setCoinName(String coinName) {
		this.coinName = coinName;
	}
	@Override
	public String toString() {
		return "InterVO [interId=" + interId + ", userId=" + userId + ",userName=" + userName + ","
				+ "coinId=" + coinId + ", coinName=" + coinName + "]";
	}
}
