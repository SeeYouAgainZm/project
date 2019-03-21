package laozheng.kt.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import laozheng.kt.ssm.domain.Classes;
import laozheng.kt.ssm.mapper.ClassesMapper;
import laozheng.kt.ssm.service.IClassesService;
@Service
public class ClassesServiceImpl implements IClassesService{
	@Autowired
	ClassesMapper mapper;
	@Override
	public List<Classes> queryAll() {
		// TODO Auto-generated method stub
		return mapper.queryAll();
	}

}
