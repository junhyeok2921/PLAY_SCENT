package com.playscent.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.playscent.db.SqlSessionManager;

public class CartDAO {
	 // 세션을 생성해 줄 수 있는 Factory 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// connection, close, sql문 실행...
	SqlSession sqlSession = sqlSessionFactory.openSession(true);


}
