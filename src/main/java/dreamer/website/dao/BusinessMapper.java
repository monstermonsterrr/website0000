package dreamer.website.dao;

import dreamer.website.pojo.Business;

import java.util.List;

public interface BusinessMapper {
    int deleteByPrimaryKey(String busiid);

    int insert(Business record);

    int insertSelective(Business record);

    Business selectByPrimaryKey(String busiid);

    int updateByPrimaryKeySelective(Business record);

    int updateByPrimaryKey(Business record);

    List<Business> selectAll();
}