package dreamer.website.service;

import dreamer.website.dao.BusinessMapper;
import dreamer.website.pojo.Business;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author AnneRose
 * @date 2022/6/10 7:07
 * @Version v1.0
 */
@Service
public class BusinessService implements BusinessServiecImpl {

    @Resource
    BusinessMapper businessMapper;
    @Override
    public void insertTransaction(Business bs) {
        businessMapper.insert(bs);
    }

    @Override
    public List<Business> selectAll() {
        List<Business> bsList = businessMapper.selectAll();
        return bsList;
    }
}
