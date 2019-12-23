package com.example.spring02.model.prediction.dto;

import java.sql.Date;

public class PredictionVO {
	private String date;
	private double p_low;
	private double p_high;
	private double price;
	private double close;
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getP_low() {
		return p_low;
	}
	public void setP_low(double p_low) {
		this.p_low = p_low;
	}
	public double getP_high() {
		return p_high;
	}
	public void setP_high(double p_high) {
		this.p_high = p_high;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getClose() {
		return close;
	}
	public void setClose(double close) {
		this.close = close;
	} 
	
	
}