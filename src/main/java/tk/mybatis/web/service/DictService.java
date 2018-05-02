package tk.mybatis.web.service;

import java.util.List;

import tk.mybatis.web.model.SysDict;

public interface DictService {

	public SysDict findById(Long id);

	public List<SysDict> findBySysDict(SysDict sysDict, Integer offset, Integer limit);

	public boolean saveOrUpdate(SysDict sysDict);

	public boolean deleteById(Long id);

}
