package dreamer.website.dao;

import dreamer.website.pojo.Account;

public interface AccountMapper {
    int deleteByPrimaryKey(String accibsn);

    int insert(Account record);

    int insertSelective(Account record);

    Account selectByPrimaryKey(String accibsn);

    int updateByPrimaryKeySelective(Account record);

    int updateByPrimaryKey(Account record);
}