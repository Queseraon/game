package com.game.mapper;

import java.util.List;

import com.game.vo.BoardInfoVO;
import com.game.vo.ClassInfoVO;

public interface ClassInfoMapper {
	List<ClassInfoVO> getClassInfos(ClassInfoVO classInfo);
	ClassInfoVO getClassInfo(String ciNum);
	int insertClassInfo(BoardInfoVO classInfo);
	int updateClassInfo(BoardInfoVO classInfo);
	int deleteClassInfo(String ciNum);
}
