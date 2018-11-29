package deepdraw.saleterrace.service;/**
 * Created by hasee on 2018/10/26.
 */

import deepdraw.saleterrace.entity.shop.Merchant;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * 商家部分的service
 * @author zyw
 * @create 2018-10-26 14:31
 **/
@Service
public interface MerchantService {

    /**
     * 通过账号去查询对应数据 (1.是判断是否存在该用户【新增时候判断是否重复】
     *  2.是判断登录时候带回对应的用户数据放到session中 )
     * @param id 用户id（手机号）
     * @return
     */
    Map<String,Object> selectMerchantUser(String id);

    /**
     * 新增用户
     * @param merchant 商家用户实体
     * @return
     */
    String addMerchant(Merchant merchant);

    /**
     * 修改用户登录是否禁用或者恢复启用
     * @param id 用户账号
     * @param ban
     * @return
     */
    String banChange(String id,Integer ban);

    /**
     * 修改商家表数据
     * @param merchant
     * @return
     */
    String update(Merchant merchant);

    /**
     * 修改商家表数据中的一级邀请码
     * @param merchant 对应数据
     * @return
     */
    Integer updataUserCode(Merchant merchant);

}
