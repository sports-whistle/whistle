package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.PartiesDao;
import com.whistle.web.vo.Parties;

public class MybatisPartiesDao implements PartiesDao
{
	@Autowired
	SqlSession session; 
	
	@Override
	public int addParties(Parties parties) 
	{
		int result = 0; 
		try
		{
			PartiesDao dao = session.getMapper(PartiesDao.class);
			result = dao.addParties(parties);
			/*session.commit();*/
		}
		finally
		{
			/*session.rollback();*/
			/*session.close();*/
		}
		return result;
	}

	@Override
	public List<Parties> getParties() 
	{
		PartiesDao dao = session.getMapper(PartiesDao.class);

		return dao.getParties();
	}
	
	@Override
	public Parties getParty(String partyId) {
		
		PartiesDao dao = session.getMapper(PartiesDao.class);

		return dao.getParty(partyId);
	}

	@Override
	public int updateRealRegCnt(String partyId){
		
		PartiesDao dao = session.getMapper(PartiesDao.class);

		return dao.updateRealRegCnt(partyId);
	}
	
	@Override
	public int updateClickCnt(String partyId) {
		
		PartiesDao dao = session.getMapper(PartiesDao.class);

		return dao.updateClickCnt(partyId);
	}

}
