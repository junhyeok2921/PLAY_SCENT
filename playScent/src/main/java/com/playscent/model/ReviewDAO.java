package com.playscent.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.playscent.db.SqlSessionManager;
import com.playscent.model.ReveiwDTO;

public class ReviewDAO {
	// 세션을 생성해 줄 수 있는 Factory 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// connection, close, sql문 실행...
	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	
public int sendReview(ReveiwDTO dto) {
	
SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// connection, close, sql문 실행...
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
		int result = sqlSession.insert("sendReview", dto);
		sqlSession.close();
		return result;

	}

	public ArrayList<ReveiwDTO> showReview(String review) {

		// 사용할 ArrayList 생성!

		ArrayList<ReveiwDTO> m_list = new ArrayList();

		// 1. sql 대여

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		// 2. sql 실행 -> ArrayList 타입

		// 3. 결과 처리
		m_list = (ArrayList) sqlSession.selectList("showReview", review);

		sqlSession.close();

		return m_list;
	}

	public int deletereview(int num) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.delete("deleteReview", num);
		sqlSession.close();
		return cnt;

	}

	public int deleteReviewAll(String REVIEW_CONTENT) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.delete("deleteReviewAll", REVIEW_CONTENT);
		sqlSession.close();
		return cnt;
	}

	public List<ReveiwDTO> allReviews() {

		List<ReveiwDTO> reviews = null;

		try {
			reviews = sqlSession.selectList("showReview");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return reviews;

	}

}
