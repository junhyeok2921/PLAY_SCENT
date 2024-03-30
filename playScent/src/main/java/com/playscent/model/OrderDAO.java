package com.playscent.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.playscent.db.SqlSessionManager;


public class OrderDAO {

	// 세션을 생성해 줄 수 있는 Factory 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	

	// 현재 회원의 선택한 진짜 결제할 상품 목록들 가져오기.
	public ArrayList<OrderPfDTO> allUserOrderList(String user_id) {
		// 쿼리를 실행 했을때 결과과 없을 수도 있으므로.
		// 전체 테이블중 이부분만 확인할수 있는 selectOne() 사용!.
		SqlSession sqlSession = sqlSessionFactory.openSession(true); // 세션 열어줌.
		
		ArrayList<OrderPfDTO> allUserOrderList = new ArrayList<OrderPfDTO>();
		System.out.println("cartDAO 안에 들어옴. ");
		// 현재 회원의 저장된 장바구니 모든 정보 가져오기.
		try {
			allUserOrderList = (ArrayList) sqlSession.selectList("allUserOrderList", user_id); // 리턴이 selectList => List형태로 뱉어줌.

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close(); // 빌려온 sqlSession반납해준다. 세션문 닫아준다.
		}

		return allUserOrderList;
	}
	
	
	
	
	
	

}
