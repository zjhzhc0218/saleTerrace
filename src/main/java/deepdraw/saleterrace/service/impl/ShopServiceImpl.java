package deepdraw.saleterrace.service.impl;

import deepdraw.saleterrace.dao.ShopstoreMapper;
import deepdraw.saleterrace.entity.shop.Shopstore;
import deepdraw.saleterrace.service.ShopService;
import deepdraw.saleterrace.util.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ShopServiceImpl implements ShopService {

    @Autowired
    private ShopstoreMapper shopstoreMapper;

    @Override
    public String getShopRecords(String id) {
        List<Shopstore> shopRecords = shopstoreMapper.getShopRecords(Long.valueOf(id));
        return JsonUtil.object2Json(shopRecords);
    }

    @Override
    public int saveShopRecord(Shopstore shopstore) {
        return shopstoreMapper.insert(shopstore);
    }

    @Override
    public int editShopRecord(Shopstore shopstore) {
        return shopstoreMapper.updateByPrimaryKey(shopstore);
    }
}
