package com.playscent.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.playscent.db.SqlSessionManager;

public class PerfumeDAO {
	// 세션을 생성해 줄 수 있는 Factory 생성

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	// connection, close, sql문 실행...



	public ArrayList<PerfumeDTO> allPerfumes() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<PerfumeDTO> allperfume = null;

		try {
			allperfume = (ArrayList)sqlSession.selectList("allperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return allperfume;

	}

	public ArrayList<PerfumeDTO> FloralDAO() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<PerfumeDTO> floralperfume = null;

		try {
			floralperfume = (ArrayList)sqlSession.selectList("floralperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return floralperfume;

	}

	public ArrayList<PerfumeDTO> CitrusDAO() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<PerfumeDTO> citrusperfume = null;

		try {
			citrusperfume = (ArrayList)sqlSession.selectList("citrusperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return citrusperfume;

	}

	public ArrayList<PerfumeDTO> SweetsDAO() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<PerfumeDTO> sweetsperfume = null;

		try {
			sweetsperfume = (ArrayList)sqlSession.selectList("sweetsperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return sweetsperfume;

	}

	public ArrayList<PerfumeDTO> WoodyDAO() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<PerfumeDTO> woodyperfume = null;

		try {
			woodyperfume = (ArrayList)sqlSession.selectList("woodyperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return woodyperfume;

	}

	public ArrayList<PerfumeDTO> MuskDAO() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<PerfumeDTO> muskperfume = null;

		try {
			muskperfume = (ArrayList)sqlSession.selectList("muskperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return muskperfume;

	}

	public ArrayList<PerfumeDTO> manDAO() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ArrayList<PerfumeDTO> manperfume = null;

		try {
			manperfume = (ArrayList)sqlSession.selectList("manperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return manperfume;

	}
	
	public ArrayList<PerfumeDTO> womanDAO() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<PerfumeDTO> womanperfume = null;

	      try {
	         womanperfume = (ArrayList) sqlSession.selectList("womanperfume");
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return womanperfume;

	   }

	public ArrayList<PerfumeDTO> Myperfumes() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<PerfumeDTO> Myperfumes = null;

		try {
			Myperfumes = (ArrayList)sqlSession.selectList("Myperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return Myperfumes;

	}

	public List<PerfumeDTO> Myperfume() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<PerfumeDTO> Myperfume = null;

		try {
			Myperfume = sqlSession.selectOne("Myperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return Myperfume;

	}

	public ArrayList<PerfumeDTO> showMessage(PerfumeDTO pdto) {
		// 1. sql 대여
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		// 사용할 ArrayList 생성!

		ArrayList<PerfumeDTO> pf_list = new ArrayList();

		// 2. sql 실행 -> ArrayList 타입

		// 3. 결과 처리
		pf_list = (ArrayList) sqlSession.selectList("showPerfume", pdto);

		sqlSession.close();

		System.out.println(pdto);
		System.out.println("리스트 확인" + pf_list);
		return pf_list;
	}

}
