package org.hui.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.hui.entity.Job;

import java.util.List;

public interface JobDao {
    List<Job> selectAll();

    //删除一条就业信息
    @Delete("delete from lh_job where id = #{id}")
    int deleteId(int id);

    //插入一条就业信息
    int insertOne(@Param("name") String name, @Param("major") String major,@Param("company") String company,@Param("salary") String salary,@Param("jobinfo") String jobinfo,@Param("fileName") String fileName);
}
