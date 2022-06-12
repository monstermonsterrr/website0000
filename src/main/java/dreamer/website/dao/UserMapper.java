package dreamer.website.dao;

import dreamer.website.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int deleteByPrimaryKey(String useruserid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String useruserid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    int selectByuserandpass(@Param("userusername") String userName, @Param("userpass") String userPass);
}