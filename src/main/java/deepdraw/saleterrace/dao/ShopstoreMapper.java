package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.Shopstore;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface ShopstoreMapper {
    /**
     *
     * @mbggenerated 2018-10-25
     */
    int deleteByPrimaryKey(@Param("id")Long shopId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insert(Shopstore record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insertSelective(Shopstore record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    Shopstore selectByPrimaryKey(@Param("id") Long id);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKeySelective(Shopstore record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKey(Shopstore record);


    List<Shopstore> getShopRecords(@Param("shopShopkeeper") Long shopShopkeeper);
}