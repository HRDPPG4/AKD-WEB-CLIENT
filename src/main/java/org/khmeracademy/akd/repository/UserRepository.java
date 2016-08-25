package org.khmeracademy.akd.repository;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.khmeracademy.akd.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository {

	@Select(SQL.LOGIN)
	public User login(@Param("username") String username,@Param("password") String password);


	interface SQL{
		String LOGIN	="SELECT "
						+ 	"* "
						+ "FROM "
						+ 	"akd_users "
						+ "WHERE "
						+ 	"name=#{username} "
						+ "AND "
						+ 	"password=#{password}"
						;
	}







}
