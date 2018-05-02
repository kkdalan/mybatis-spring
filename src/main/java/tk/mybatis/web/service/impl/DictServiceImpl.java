package tk.mybatis.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.mybatis.web.mapper.DictMapper;
import tk.mybatis.web.model.SysDict;
import tk.mybatis.web.service.DictService;

@Service
public class DictServiceImpl implements DictService {

	@Autowired
	private DictMapper dictMapper;

	public SysDict findById(Long id) {
		SysDict sysDict = null;
		if (id != null) {
			sysDict = dictMapper.selectByPrimaryKey(id);
		}
		return sysDict;
	}

	public List<SysDict> findBySysDict(SysDict sysDict, Integer offset, Integer limit) {
		return dictMapper.selectBySysDict(sysDict);
	}

	public boolean saveOrUpdate(SysDict sysDict) {
		if (sysDict.getId() == null) {
			return dictMapper.insert(sysDict) == 1;
		} else {
			return dictMapper.updateById(sysDict) == 1;
		}
	}

	public boolean deleteById(Long id) {
		return dictMapper.deleteById(id) == 1;
	}

}
