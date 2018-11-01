package deepdraw.saleterrace.service.impl;

import deepdraw.saleterrace.dao.MerchantMapper;
import deepdraw.saleterrace.dao.ShopstoreMapper;
import deepdraw.saleterrace.entity.shop.Merchant;
import deepdraw.saleterrace.entity.shop.Shopstore;
import deepdraw.saleterrace.exception.GlobalException;
import deepdraw.saleterrace.service.MerchantService;
import deepdraw.saleterrace.service.ShopService;
import deepdraw.saleterrace.util.CodeMsg;
import deepdraw.saleterrace.util.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class ShopServiceImpl implements ShopService {

    @Autowired
    private ShopstoreMapper shopstoreMapper;

    @Override
    public String getShopRecords(String id) {
        List<Shopstore> shopRecords = shopstoreMapper.getShopRecords(Long.valueOf(id));
        return JsonUtil.object2Json(shopRecords);
    }
}
