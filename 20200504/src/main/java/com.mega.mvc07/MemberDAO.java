package com.mega.mvc07;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	@Autowired
	SqlSessionTemplate my;

	public void insert(MemberDTO dto) {
		my.insert("member.insert", dto);
	}
	
	public void delete(MemberDTO dto) {
		my.delete("member.delete", dto);
	}
	
	public void update(MemberDTO dto) {
		my.update("member.update", dto);
	}
}
