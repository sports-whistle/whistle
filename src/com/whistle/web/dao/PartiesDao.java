package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.Parties;

public interface PartiesDao 
{
	public int addParties(Parties parties);
	public List<Parties>getParties();
	public Parties getParty(String partyId);
	public int updateRealRegCnt(String partyId);
	public int updateClickCnt(String partyId);
}
