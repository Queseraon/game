package com.game.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.game.common.MyBatisSqlSessionFactory;
import com.game.mapper.ClassInfoMapper;
import com.game.service.ClassInfoService;
import com.game.vo.ClassInfoVO;

public class ClassInfoServiceImpl implements ClassInfoService {
	private SqlSessionFactory ssf = MyBatisSqlSessionFactory.getSqlSessionFactory();

	@Override
	public List<ClassInfoVO> getClassInfos(ClassInfoVO classInfo) {
		try(SqlSession session = ssf.openSession()){
			ClassInfoMapper ciMapper = session.getMapper(ClassInfoMapper.class);
			return ciMapper.getClassInfos(classInfo);
		}catch(Exception e) {
			throw e;
		}
	}

	@Override
	public ClassInfoVO getClassInfo(String ciNum) {
		return null;
	}

	@Override
	public int insertClassInfo(ClassInfoVO board) {
		return 0;
	}

	@Override
	public int updateClassInfo(ClassInfoVO board) {
		return 0;
	}

	@Override
	public int deleteClassInfo(String ciNum) {
		return 0;
	}

}
