package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.Merchant;
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
}