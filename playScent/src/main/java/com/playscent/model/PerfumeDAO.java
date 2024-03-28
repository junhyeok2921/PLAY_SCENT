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

	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	public List<PerfumeDTO> allPerfumes() {

		List<PerfumeDTO> allperfume = null;

		try {
			allperfume = sqlSession.selectList("allperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return allperfume;

	}

	public List<PerfumeDTO> FloralDAO() {

		List<PerfumeDTO> floralperfume = null;

		try {
			floralperfume = sqlSession.selectList("floralperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return floralperfume;

	}

	public List<PerfumeDTO> CitrusDAO() {

		List<PerfumeDTO> citrusperfume = null;

		try {
			citrusperfume = sqlSession.selectList("citrusperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return citrusperfume;

	}

	public List<PerfumeDTO> SweetsDAO() {

		List<PerfumeDTO> sweetsperfume = null;

		try {
			sweetsperfume = sqlSession.selectList("sweetsperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return sweetsperfume;

	}

	public List<PerfumeDTO> WoodyDAO() {

		List<PerfumeDTO> woodyperfume = null;

		try {
			woodyperfume = sqlSession.selectList("woodyperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return woodyperfume;

	}

	public List<PerfumeDTO> MuskDAO() {

		List<PerfumeDTO> muskperfume = null;

		try {
			muskperfume = sqlSession.selectList("muskperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return muskperfume;

	}

	public List<PerfumeDTO> manDAO() {

		List<PerfumeDTO> manperfume = null;

		try {
			manperfume = sqlSession.selectList("manperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return manperfume;

	}

	public List<PerfumeDTO> Myperfumes() {

		List<PerfumeDTO> Myperfumes = null;

		try {
			Myperfumes = sqlSession.selectList("Myperfume");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return Myperfumes;

	}

	public List<PerfumeDTO> Myperfume() {

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

		// 사용할 ArrayList 생성!

		ArrayList<PerfumeDTO> pf_list = new ArrayList();

		// 1. sql 대여

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		// 2. sql 실행 -> ArrayList 타입

		// 3. 결과 처리
		pf_list = (ArrayList) sqlSession.selectList("showPerfume", pdto);

		sqlSession.close();

		System.out.println(pdto);
		System.out.println("리스트 확인" + pf_list);
		return pf_list;
	}

}
