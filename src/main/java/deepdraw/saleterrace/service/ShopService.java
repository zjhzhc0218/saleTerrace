package deepdraw.saleterrace.service;/**
 * Created by hasee on 2018/10/26.
 */

import org.springframework.stereotype.Service;

/**
 * 店铺
 **/
@Service
public interface ShopService {

    //根据人员id获得所有店铺信息
    String getShopRecords(String id);

}
