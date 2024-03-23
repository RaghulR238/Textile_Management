package net.javaguides.textilemanagement.model;


public class Textile {
   String date;
   String yarn_details;
   String brand_name;
   String quality;
   double kg;
   
   String warp_details;
   double warp_meter;
   
   String meter_details;
   double meter;
   double pic;
   double pic_rate;
   
   int t_id;
   double update_kg;
   
   int t_id_warp;
   double update_warp;
   String warpChange;
   
   int t_id_meter;
   double update_meter;
   double update_pic;
   double update_pic_rate;
   
   String start_date;
   String end_date;
   
   public String getStart_date() {
	return start_date;
}
public void setStart_date(String start_date) {
	this.start_date = start_date;
}
public String getEnd_date() {
	return end_date;
}
public void setEnd_date(String end_date) {
	this.end_date = end_date;
}
public Textile(String start_date, String end_date) {
	super();
	this.start_date = start_date;
	this.end_date = end_date;
}
public int getT_id_meter() {
	return t_id_meter;
}
public void setT_id_meter(int t_id_meter) {
	this.t_id_meter = t_id_meter;
}
public double getUpdate_meter() {
	return update_meter;
}
public void setUpdate_meter(double update_meter) {
	this.update_meter = update_meter;
}
public double getUpdate_pic() {
	return update_pic;
}
public void setUpdate_pic(double update_pic) {
	this.update_pic = update_pic;
}
public double getUpdate_pic_rate() {
	return update_pic_rate;
}
public void setUpdate_pic_rate(double update_pic_rate) {
	this.update_pic_rate = update_pic_rate;
}
public Textile(int t_id_meter, double update_meter, double update_pic, double update_pic_rate) {
	super();
	this.t_id_meter = t_id_meter;
	this.update_meter = update_meter;
	this.update_pic = update_pic;
	this.update_pic_rate = update_pic_rate;
}
public int getT_id_warp() {
	return t_id_warp;
}
public void setT_id_warp(int t_id_warp) {
	this.t_id_warp = t_id_warp;
}
public double getUpdate_warp() {
	return update_warp;
}
public void setUpdate_warp(double update_warp) {
	this.update_warp = update_warp;
}
public String getWarpChange() {
	return warpChange;
}
public void setWarpChange(String warpChange) {
	this.warpChange = warpChange;
}
public Textile(int t_id_warp, double update_warp, String warpChange) {
	super();
	this.t_id_warp = t_id_warp;
	this.update_warp = update_warp;
	this.warpChange = warpChange;
}
public int getT_id() {
	return t_id;
}
public void setT_id(int t_id) {
	this.t_id = t_id;
}
public double getUpdate_kg() {
	return update_kg;
}
public void setUpdate_kg(double update_kg) {
	this.update_kg = update_kg;
}
public Textile(int t_id, double update_kg) {
	super();
	this.t_id = t_id;
	this.update_kg = update_kg;
}
public String getMeter_details() {
	return meter_details;
}
public void setMeter_details(String meter_details) {
	this.meter_details = meter_details;
}
public double getMeter() {
	return meter;
}
public void setMeter(double meter) {
	this.meter = meter;
}
public double getPic() {
	return pic;
}
public void setPic(double pic) {
	this.pic = pic;
}
public double getPic_rate() {
	return pic_rate;
}
public void setPic_rate(double pic_rate) {
	this.pic_rate = pic_rate;
}
public Textile(String date, String meter_details, double meter, double pic, double pic_rate) {
	super();
	this.date = date;
	this.meter_details = meter_details;
	this.meter = meter;
	this.pic = pic;
	this.pic_rate = pic_rate;
}
public String getWarp_details() {
	return warp_details;
}
public void setWarp_details(String warp_details) {
	this.warp_details = warp_details;
}
public double getWarp_meter() {
	return warp_meter;
}
public void setWarp_meter(double warp_meter) {
	this.warp_meter = warp_meter;
}
public Textile(String date, String warp_details, double warp_meter) {
	super();
	this.date = date;
	this.warp_details = warp_details;
	this.warp_meter = warp_meter;
}
   
public Textile(String date, String yarn_details, String brand_name, String quality, double kg) {
	super();
	this.date = date;
	this.yarn_details = yarn_details;
	this.brand_name = brand_name;
	this.quality = quality;
	this.kg = kg;
}
public String getDate() {
	return date;
}
public void setData(String date) {
	this.date = date;
}
public String getYarn_details() {
	return yarn_details;
}
public void setYarn_details(String yarn_details) {
	this.yarn_details = yarn_details;
}
public String getBrand_name() {
	return brand_name;
}
public void setBrand_name(String brand_name) {
	this.brand_name = brand_name;
}
public String getQuality() {
	return quality;
}
public void setQuality(String quality) {
	this.quality = quality;
}
public double getKg() {
	return kg;
}
public void setKg(double kg) {
	this.kg = kg;
}
   
}