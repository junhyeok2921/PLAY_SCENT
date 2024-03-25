  package com.playscent.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.playscent.db.SqlSessionManager;

public class CartDAO {
	// 세션을 생성해 줄 수 있는 Factory 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	

	// 장바구니 추가 기능
	public int addCart(SelectedProductDTO dto) {
		// connection, close, sql문 실행...
		// 모든 메서드마다 아래 이문장이 꼭 들어가야함!!
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = 0;

		try {
			cnt = sqlSession.insert("addCart", dto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return cnt;
	}
	
	
	// 향수식별자로 향수 제품 데이터 뽑아오기 기능.
	/*
	 * public int addCart(SelectedProductDTO dto) { // connection, close, sql문 실행...
	 * // 모든 메서드마다 아래 이문장이 꼭 들어가야함!! SqlSession sqlSession =
	 * sqlSessionFactory.openSession(true);
	 * 
	 * int cnt = 0;
	 * 
	 * try { cnt = sqlSession.insert("addCart", dto); } catch (Exception e) {
	 * e.printStackTrace(); } finally { sqlSession.close(); }
	 * 
	 * return cnt; }
	 */
	
	
	

}
