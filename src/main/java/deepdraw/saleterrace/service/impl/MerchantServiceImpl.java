package deepdraw.saleterrace.service.impl;/**
 * Created by hasee on 2018/10/26.
 */

import deepdraw.saleterrace.dao.MerchantMapper;
import deepdraw.saleterrace.entity.shop.Merchant;
import deepdraw.saleterrace.exception.GlobalException;
import deepdraw.saleterrace.service.MerchantService;
import deepdraw.saleterrace.util.CodeMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * 商家表关联表处理
 * @author zyw
 * @create 2018-10-26 15:31
 **/
@Component
public class MerchantServiceImpl implements MerchantService{

    @Autowired
    private MerchantMapper merchantMapper;

    /**
     * 通过账号去查询对应数据 (1.是判断是否存在该用户【新增时候判断是否重复】
     *  2.是判断登录时候带回对应的用户数据放到session中 )
     * @param id 用户id（手机号）
     * @return
     */
    @Override
    public Map<String, Object> selectMerchantUser(String id) {
        Map<String,Object> map =   new HashMap<>();
        Merchant merchant = merchantMapper.selectByPrimaryKey(id);
        if(merchant == null){
            throw new GlobalException(CodeMsg.USER_NULL_ERROR);
        }else{
            if(merchant.getMerchantBan()==2){
                throw new GlobalException(CodeMsg.USER_BAN_ERROR);
            }
            if(merchant.getMerchantBan()==3){
                throw new GlobalException(CodeMsg.USER_BAN_CANCELLATION);
            }
            /*进行登录记录的更新*/
//            Integer y = merchantMapper.updataUser(merchant);
            map.put("message","查询成功，返回用户信息");
            map.put("merchantUser",merchant);
            return map;
        }
    }

    /**
     * 增加对应的商业用户实体数据 这里的商家id或许要考虑对应的生成算法规则
     * @param merchant 商家用户实体
     * @return
     */
    @Override
    public String addMerchant(Merchant merchant) {
        Merchant merchantC = merchantMapper.selectByPrimaryKey(merchant.getMerchantAccount());
        if(merchantC==null){
            /*这里要对首次的数据进行处理*/
            /*对于商家id 进行一个创建  是数字类 规则我觉得是前缀xx 然后是年月日                 然后是 我们内部排序 这个后加的数字可以是我们数据库中的总数量 TODO*/
            merchantMapper.insertSelective(merchant);
            return null;
        }else{
            throw new GlobalException(CodeMsg.USER_ADD_ERROR);
        }
    }

    /**
     * 改变商家表具体数据的状态
     * @param id 用户账号
     * @param ban
     * @return
     */
    @Override
    public String banChange(String id, Integer ban) {
        Merchant merchantC = merchantMapper.selectByPrimaryKey(id);
        merchantC.setMerchantBan(ban);
        merchantMapper.updataUser(merchantC);
        return null;
    }

    /**
     * 修改商家表数据
     * @param merchant
     * @return
     */
    @Override
    public String  update(Merchant merchant){
        merchantMapper.updataUser(merchant);
        return null;
    }

    @Override
    public Integer updataUserCode(Merchant merchant) {
        return merchantMapper.updataUserCode(merchant);
    }


}
