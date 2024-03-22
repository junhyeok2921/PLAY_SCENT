package com.playscent.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.playscent.db.SqlSessionManager;


public class UserDAO {
	// 세션을 생성해 줄 수 있는 Factory 생성
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		
		// connection, close, sql문 실행...
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	
		// 네이버 로그인 유저정보 저장 기능.
		public int insertUserInfo(NaverUserInfo userDto) {
			int cnt = 0;
			try { cnt = sqlSession.insert("joinMember", userDto);
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				sqlSession.close();
			}
			return cnt;
		}
	

}
