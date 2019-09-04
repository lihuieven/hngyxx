package org.hui.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface AdminDao {
    @Select("select count(*) from lh_admin where account = #{name} and passwd = #{password}")
    int login(@Param("name") String name,@Param("password") String password);
}
