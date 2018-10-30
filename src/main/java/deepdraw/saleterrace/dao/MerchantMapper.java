package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.Merchant;
import jnr.ffi.annotations.In;
import org.springframework.stereotype.Component;

@Component
public interface MerchantMapper {
    /**
     *
     * @mbggenerated 2018-10-26
     */
    int deleteByPrimaryKey(String merchantAccount);

    /**
     *
     * @mbggenerated 2018-10-26
     */
    int insert(Merchant record);

    /**
     *
     * @mbggenerated 2018-10-26
     */
    int insertSelective(Merchant record);

    /**
     *
     * @mbggenerated 2018-10-26
     */
    Merchant selectByPrimaryKey(String merchantAccount);

    /**
     *
     * @mbggenerated 2018-10-26
     */
    int updateByPrimaryKeySelective(Merchant record);

    /**
     *
     * @mbggenerated 2018-10-26
     */
    int updateByPrimaryKey(Merchant record);

    /**
     * 修改商家表数据
     * 主要是修改密码，修改支付码（这二个修改需要起那么多做判断去进行）
     * 修改qq  修改联系人电话 这部分很随意
     * 每次都会去改变登录次数以及最新登录时间 作为一次操作的记录，
     * 但是这部分并没有从表中独立出来 TODO 是否考虑需要一张操作记录表
     * @param merchant 对应数据
     * @return
     */
    Integer updataUser(Merchant merchant);

}