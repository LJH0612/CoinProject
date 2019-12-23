package com.example.spring02.model.filtering.dto;
public class FilteringVO {
	private String date;
	private double p_low;
	private double p_high;
	private double price = 0;
	public String t_Name;
	public int yeild;
	public double buy;
	public double yeild_low;
	public double yeild_high;
	
	public String getDate() {
		if(date != null ) {
			
		}
		else {
			date = "fail";
		}
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
	public double getBuy() {
		return buy;
	}
	public void setBuy(double buy) {
		this.buy = buy;
	}
	public String getT_Name() {
		return t_Name;
	}
	public void setT_Name(String t_Name) {
		this.t_Name = t_Name;
	}
	public int getYeild() {
		return yeild;
	}
	public void setYeild(int yeild) {
		this.yeild = yeild;
	}
	public double getYeild_low() {
		return yeild_low;
	}
	public void setYeild_low(double yeild_low) {
		this.yeild_low = yeild_low;
	}
	public double getYeild_high() {
		return yeild_high;
	}
	public void setYeild_high(double yeild_high) {
		this.yeild_high = yeild_high;
	}

	
	@Override
	public String toString() {
		return "FilteringVO [date=" + date + ", p_low=" + p_low + ", p_high=" + p_high + ", price=" + price + ", buy="
				+ buy + ", t_Name=" + t_Name + ", yeild=" + yeild + ", yeild_low=" + yeild_low + ", yeild_high="
				+ yeild_high + "]";
	}
	
	
	
	
	

	
	
	
	
	

}
