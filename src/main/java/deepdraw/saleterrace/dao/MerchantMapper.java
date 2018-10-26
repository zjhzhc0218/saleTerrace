package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.Merchant;

public interface MerchantMapper {
    /**
     *
     * @mbggenerated 2018-10-25
     */
    int deleteByPrimaryKey(Long merchantId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insert(Merchant record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insertSelective(Merchant record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    Merchant selectByPrimaryKey(Long merchantId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKeySelective(Merchant record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKey(Merchant record);
}