package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.BillTransaction;

public interface BillTransactionMapper {
    /**
     *
     * @mbggenerated 2018-10-25
     */
    int deleteByPrimaryKey(Long transactionSerialnumber);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insert(BillTransaction record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insertSelective(BillTransaction record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    BillTransaction selectByPrimaryKey(Long transactionSerialnumber);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKeySelective(BillTransaction record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKey(BillTransaction record);
}