package deepdraw.saleterrace.service.impl;/**
 * Created by hasee on 2018/10/26.
 */

import deepdraw.saleterrace.entity.shop.Merchant;
import deepdraw.saleterrace.service.MerchantService;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * @author
 * @create 2018-10-26 15:31
 **/
@Component
public class MerchantServiceImpl implements MerchantService{
    @Override
    public Map<String, Object> selectMerchantUser(String id) {
        return null;
    }

    @Override
    public String addMerchant(Merchant merchant) {
        return null;
    }

    @Override
    public String banChange(String id, Integer ban) {
        return null;
    }
}
