package com.playscent.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.playscent.db.SqlSessionManager;


public class UserDAO {
	   // 세션을 생성해 줄 수 있는 Factory 생성
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		
	
		// 네이버 로그인 유저정보 저장 기능.
		public int insertUserInfo(NaverUserInfo userDto) {
			// connection, close, sql문 실행...
			// 모든 메서드마다 아래 이문장이 꼭 들어가야함!!
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			int cnt = 0;
			
			try { 
				cnt = sqlSession.insert("joinMember", userDto);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return cnt;
		}
	
		
		//회원 아이디 있는 체크 기능.
		public boolean checkId (String user_id) {
			// connection, close, sql문 실행... 
			// 모든 메서드마다 아래 이문장이 꼭 들어가야함!!
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			boolean checkE = false;
			
			try { 
			   checkE = sqlSession.selectOne("joinMember", user_id);
			} catch (Exception e) {
				
			}finally {
				sqlSession.close();
			}
			return checkE; // true or false
		}
		

}

