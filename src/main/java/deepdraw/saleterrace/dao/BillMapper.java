package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.Bill;

public interface BillMapper {
    /**
     *
     * @mbggenerated 2018-10-25
     */
    int deleteByPrimaryKey(Long merchantId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insert(Bill record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insertSelective(Bill record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    Bill selectByPrimaryKey(Long merchantId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKeySelective(Bill record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKey(Bill record);
}