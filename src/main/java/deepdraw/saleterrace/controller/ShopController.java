package deepdraw.saleterrace.controller;

import deepdraw.saleterrace.service.MerchantService;
import deepdraw.saleterrace.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

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
        shopService.getShopRecords(id);
        return null;
    }


}

