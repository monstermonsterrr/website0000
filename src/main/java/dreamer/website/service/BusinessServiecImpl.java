package dreamer.website.service;

import dreamer.website.pojo.Business;

import java.util.List;

/**
 * @author AnneRose
 * @date 2022/6/10 7:05
 * @Version v1.0
 */
public interface BusinessServiecImpl {

    void insertTransaction(Business bs);

    List<Business> selectAll();
}
