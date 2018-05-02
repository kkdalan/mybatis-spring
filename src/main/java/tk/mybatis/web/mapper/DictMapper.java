package tk.mybatis.web.mapper;

import java.util.List;

import tk.mybatis.web.model.SysDict;

public interface DictMapper {

	public SysDict selectByPrimaryKey(Long id);

	public List<SysDict> selectBySysDict(SysDict sysDict);
	
	public int insert(SysDict sysDict);

	public int updateById(SysDict sysDict);
 
	public int deleteById(Long id);
}
