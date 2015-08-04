package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.UserDao;
import com.whistle.web.vo.User;

public class MyBatisUserDao implements UserDao{
	//private SqlSessionFactory ssf = new SqlHayleySessionFactory().getSqlSessionFactory(); 
	
	@Autowired
	SqlSession session;
	
	@Override
	public User getUserByName(String Name) {
		User User = null;
		//SqlSession session = ssf.openSession();
		UserDao umapper = session.getMapper(UserDao.class);
	
		try{
			User = umapper.getUserByName(Name);
			
		}finally{
			//session.close();
		}
		
		
		return User;
	}

	@Override
	public User getUserByEmail(String email) {
		User User = null;
		//SqlSession session = ssf.openSession();
		UserDao umapper = session.getMapper(UserDao.class);
	
		try{
			User = umapper.getUserByEmail(email);
			
		}finally{
			//session.close();
		}
		
		
		return User;
	}

	@Override
	public User getUserByUid(int uid) {
		User User = null;
		//SqlSession session = ssf.openSession();
		UserDao umapper = session.getMapper(UserDao.class);
	
		try{
			User = umapper.getUserByUid(uid);
			
		}finally{
			//session.close();
		}
		
		
		return User;
	}

	@Override
	public List<User> getUsers() {
		List<User> ulist = null;
		//SqlSession session = ssf.openSession();
		UserDao umapper = session.getMapper(UserDao.class);
	
		try{
			ulist = umapper.getUsers();
			
		}finally{
			//session.close();
		}
		
		
		return ulist;
	}

	@Override
	public int regUser(User newUser) {
		int result = 0;
		
		//SqlSession session = ssf.openSession();
		UserDao amapper = session.getMapper(UserDao.class);
		
		try{
			result = amapper.regUser(newUser);
			
			session.commit();
		}finally{
			session.close();
		}
		
		
		return result;
	}

	@Override
	public int dropUser(User dUser) {
		int result = 0;
		
		//SqlSession session = ssf.openSession();
		UserDao amapper = session.getMapper(UserDao.class);
		
		try{
			result = amapper.dropUser(dUser);
			
			session.commit();
		}finally{
			session.close();
		}
		
		
		return result;
	}

}
