package com.game.service;

import java.util.List;

import com.game.vo.ClassInfoVO;

public interface ClassInfoService {
	List<ClassInfoVO> getClassInfos(ClassInfoVO classInfo);
	ClassInfoVO getClassInfo(String ciNum);
	int insertClassInfo(ClassInfoVO classInfo);
	int updateClassInfo(ClassInfoVO classInfo);
	int deleteClassInfo(String ciNum);
}
