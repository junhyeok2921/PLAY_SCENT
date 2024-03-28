package com.playscent.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.playscent.db.SqlSessionManager;


public class CartDAO {
	// 세션을 생성해 줄 수 있는 Factory 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 장바구니 추가 기능
	public int addCart(CartDTO cdto) {
		// connection, close, sql문 실행...
		// 모든 메서드마다 아래 이문장이 꼭 들어가야함!!
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
 
		int cnt = 0;
		try {
			cnt = sqlSession.insert("addCart", cdto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return cnt;
	}

	
	// 향수식별자로 향수 제품 데이터 뽑아오기 기능.
	public CartPerfumeDTO selectPerfume(int perfumeIDX) { 
		// connection, close, sql문 실행...
		// 모든 메서드마다 아래 이문장이 꼭 들어가야함!! 
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		CartPerfumeDTO CartPerfume = null;

		try {
			CartPerfume = sqlSession.selectOne("selectPerfume", perfumeIDX);
			CartPerfume.setPf_idx(perfumeIDX); // 향수 식별자까지 셋팅해줘서 내보냄.
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return CartPerfume; // CartPerfumeDTO 뱉어냄.
	}
	
	
	// 현재 회원의 저장된 장바구니 모든 정보 가져오기.
	public ArrayList<CartDTO> allCartList(String user_id) {
		// 쿼리를 실행 했을때 결과과 없을 수도 있으므로.
		// 전체 테이블중 이부분만 확인할수 있는 selectOne() 사용!.
		SqlSession sqlSession = sqlSessionFactory.openSession(true);  //세션 열어줌.
		ArrayList<CartDTO> AllCartList = new ArrayList<CartDTO>();
		System.out.println("cartDAO 안에 들어옴. ");
		// 현재 회원의 저장된 장바구니 모든 정보 가져오기.
		try {
			AllCartList = (ArrayList)sqlSession.selectList("allCartList", user_id); // 리턴이 selectList => List 형태로 뱉어줌.
			
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			sqlSession.close(); // 빌려온 sqlSession반납해준다. 세션문 닫아준다.
		}		

		return AllCartList;
	}
	
	
	// 장바구니에서 해당상품 수량 변경시 update기능\
	/*
	 * public int updateQuantity(Member updateMember) { int cnt = 0; try { cnt =
	 * sqlSession.update("updateQuantity", updateMember); } catch (Exception e) { //
	 * TODO: handle exception }finally { sqlSession.close(); } return cnt; }
	 */
	
	
	// 장바구니 해당상품만 삭제 기능.
	public int deleteCart(int fav_idx) {
		// connection, close, sql문 실행...
		// 모든 메서드마다 아래 이문장이 꼭 들어가야함!!
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = 0;

		try {
			cnt = sqlSession.delete("deleteCart", fav_idx);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close(); // 세션문 닫아주고.
		}

		return cnt;
	}
	
	
	// 주문 결제 테이블에 최종 주문할 목록 저장.
	public int totalOrderAdd(OrderPfDTO ordto) {
		 System.out.println("결제 db저장 메서드 들어옴.");
		// connection, close, sql문 실행...
		// 모든 메서드마다 아래 이문장이 꼭 들어가야함!!
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
 
		int cnt = 0;
		try {
			cnt = sqlSession.insert("totalOrderAdd", ordto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return cnt;
	}
	
	
	
	
	
	
	
	

}
