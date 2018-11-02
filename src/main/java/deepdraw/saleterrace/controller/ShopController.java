package deepdraw.saleterrace.controller;

import deepdraw.saleterrace.entity.shop.Shopstore;
import deepdraw.saleterrace.service.MerchantService;
import deepdraw.saleterrace.service.ShopService;
import deepdraw.saleterrace.util.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.UUID;

@RestController
public class ShopController {

    @Autowired
    private ShopService shopService;




    /**
     * 获得店铺数据
     * @return
     */
    @RequestMapping("/getShopRecords")
    public String getShopRecords(HttpServletRequest request) {

        String id = request.getParameter("id");
        return shopService.getShopRecords(id);
    }

    @RequestMapping("/saveShopRecord")
    public int saveShopRecord(HttpServletRequest request) {
        Shopstore shopstore = new Shopstore();
        String uuid =UUID.randomUUID().toString().replace("-", "").toLowerCase();
        shopstore.setShopId(uuid);
        shopstore.setShopCreationtime(new Date());
        shopstore.setShopShopkeepername(request.getParameter("shopShopkeepername"));
        shopstore.setShopImg(request.getParameter("img"));
        shopstore.setShopStorename(request.getParameter("shopStorename"));
        shopstore.setShopStoreUrl(request.getParameter("shopStoreUrl"));

        return shopService.saveShopRecord(shopstore);
    }

    @RequestMapping("/editShopRecord")
    public int editShopRecord(HttpServletRequest request) {
        Shopstore shopstore =JsonUtil.json2Object(request.getParameter("params"),Shopstore.class);
        return shopService.editShopRecord(shopstore);
    }



}

