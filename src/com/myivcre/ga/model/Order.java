package com.myivcre.ga.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * 订单类
 * @author freepander
 *
 */
@Entity(name="orders")
public class Order {
	@Id@GeneratedValue
	private int id;
	@OneToMany
	private List<OrderItem> itemList;
	//订单编号
	private String number;
	//收货地址
	private String addressee;
	private String province;
	private String city;
	private String district;
	private String street;
	private String zipCode;
	private String telphone;
	//送货时间
	private String deliverytime;
	//买家留言
	private String userMessage;
	//原价
	private double price;
	//实付款
	private double nowPrice;
	//运费
	private double freight;
	//买家
	@ManyToOne
	private ShopUser shopUser;
	//订单状态	1->待付款		2->待发货		3->待确认收获   4->交易完成  5-》待发货  6-》待收货  7->交易完成
	private int state;
	//快递
	private String expressName;
	//快递单号
	private String expressNumber;
	//赠送积分
	private int integral;
	//下单时间
	private Date createDate;
	//支付方式
	private int payMethod;
	//支付宝交易号
	private String WIDtrade_no;
	
	public Order(){
		this.number=String.valueOf(new Date().getTime());
		this.itemList=new ArrayList<OrderItem>();
		this.deliverytime="仅工作日送货";
		this.userMessage="";
		this.price=0;
		this.nowPrice=0;
		this.freight=5;
		this.shopUser=null;
		this.state=1;
		this.expressName="";
		this.expressNumber="";
		this.integral=0;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public List<OrderItem> getItemList() {
		return itemList;
	}
	public String getWIDtrade_no() {
		return WIDtrade_no;
	}
	public void setWIDtrade_no(String wIDtrade_no) {
		WIDtrade_no = wIDtrade_no;
	}
	public void setItemList(List<OrderItem> itemList) {
		this.itemList = itemList;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getDeliverytime() {
		return deliverytime;
	}
	public void setDeliverytime(String deliverytime) {
		this.deliverytime = deliverytime;
	}
	public String getUserMessage() {
		return userMessage;
	}
	public void setUserMessage(String userMessage) {
		this.userMessage = userMessage;
	}
	public double getPrice() {
		return price;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getNowPrice() {
		return nowPrice;
	}
	public void setNowPrice(double nowPrice) {
		this.nowPrice = nowPrice;
	}
	public double getFreight() {
		return freight;
	}
	public void setFreight(double freight) {
		this.freight = freight;
	}
	public ShopUser getShopUser() {
		return shopUser;
	}
	public void setShopUser(ShopUser shopUser) {
		this.shopUser = shopUser;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getExpressName() {
		return expressName;
	}
	public void setExpressName(String expressName) {
		this.expressName = expressName;
	}
	public String getExpressNumber() {
		return expressNumber;
	}
	public void setExpressNumber(String expressNumber) {
		this.expressNumber = expressNumber;
	}
	public int getIntegral() {
		return integral;
	}
	public void setIntegral(int integral) {
		this.integral = integral;
	}
	public String getAddressee() {
		return addressee;
	}
	public void setAddressee(String addressee) {
		this.addressee = addressee;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public int getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(int payMethod) {
		this.payMethod = payMethod;
	}
	

}
