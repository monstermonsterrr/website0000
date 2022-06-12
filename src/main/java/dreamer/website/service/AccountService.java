package dreamer.website.service;

import dreamer.website.dao.AccountMapper;
import dreamer.website.pojo.Account;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author AnneRose
 * @date 2022/6/10 9:28
 * @Version v1.0
 */
@Service
public class AccountService implements AccountServiceImpl{

    @Resource
    AccountMapper accountMapper;
    @Override
    public void addAccount(Account account) {
        accountMapper.insert(account);
    }
}
