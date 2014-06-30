package com.qatang.cms.validator.impl.user;

import com.qatang.cms.enums.Gender;
import com.qatang.cms.exception.validator.ValidateFailedException;
import com.qatang.cms.form.user.MenuForm;
import com.qatang.cms.form.user.UserForm;
import com.qatang.cms.validator.AbstractValidator;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

/**
 * Created by likunpeng on 2014/6/26.
 */
@Component
public class MenuValidator extends AbstractValidator<MenuForm> {

	public boolean validate(MenuForm menuForm) throws ValidateFailedException {
		logger.info("开始验证menuForm参数");
		if (menuForm == null) {
			String msg = String.format("menuForm参数不能为空");
			logger.error(msg);
			throw new ValidateFailedException(msg);
		}
		if (StringUtils.isEmpty(menuForm.getName())) {
			String msg = String.format("菜单名不能为空");
			logger.error(msg);
			throw new ValidateFailedException(msg);
		}
		if (StringUtils.isEmpty(menuForm.getUrl())) {
			String msg = String.format("url不能为空");
			logger.error(msg);
			throw new ValidateFailedException(msg);
		}
		if (StringUtils.isEmpty(menuForm.getOrderValue())) {
			String msg = String.format("菜单排序值不能为空");
			logger.error(msg);
			throw new ValidateFailedException(msg);
		}
		int orderValue = 0;
		try {
			orderValue = Integer.valueOf(menuForm.getOrderValue());
		} catch (Exception e) {
			String msg = String.format("菜单排序值字段格式不合法");
			logger.error(msg);
			throw new ValidateFailedException(msg);
		}
		if (StringUtils.isEmpty(menuForm.getValidValue())) {
			String msg = String.format("是否有效状态不能为空");
			logger.error(msg);
			throw new ValidateFailedException(msg);
		}
		int validValue = 0;
		try {
			validValue = Integer.valueOf(menuForm.getValidValue());
		} catch (Exception e) {
			String msg = String.format("是否有效字段格式不合法");
			logger.error(msg);
			throw new ValidateFailedException(msg);
		}

		return true;
	}
}
