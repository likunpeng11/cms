package com.qatang.cms.service.user;

import com.qatang.cms.entity.user.Menu;
import com.qatang.cms.entity.user.User;

import java.util.List;

/**
 * Created by likunpeng on 2014/6/24.
 */
public interface MenuService {

	/**
	 *菜单列表
	 * @return
	 */
	public List<Menu> getList();

	/**
	 * 根据菜单id查询
	 * @param id
	 * @return
	 */
	public Menu get(Long id);

	/**
	 * 保存
	 * @param menu
	 * @return
	 */
	public Menu save(Menu menu);

	/**
	 * 删除
	 * @param id
	 */
	public void delete(Long id);
}
