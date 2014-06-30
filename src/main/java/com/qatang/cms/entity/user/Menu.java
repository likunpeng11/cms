package com.qatang.cms.entity.user;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by likunpeng on 2014/6/25.
 */
@Entity
@Table(name = "c_menu")
@DynamicInsert
@DynamicUpdate
public class Menu {
	@Id
	@GeneratedValue
	private Long id;
	private String name;
	private String url;
	private Integer orderView;
	private Integer valid;
	private String memo;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getOrderView() {
		return orderView;
	}

	public void setOrderView(Integer orderView) {
		this.orderView = orderView;
	}

	public Integer getValid() {
		return valid;
	}

	public void setValid(Integer valid) {
		this.valid = valid;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}
}
