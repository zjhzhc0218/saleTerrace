package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.GeneratedTask;
import org.springframework.stereotype.Component;

@Component
public interface GeneratedTaskMapper {
    /**
     *
     * @mbggenerated 2018-10-25
     */
    int deleteByPrimaryKey(Long taskId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insert(GeneratedTask record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insertSelective(GeneratedTask record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    GeneratedTask selectByPrimaryKey(Long taskId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKeySelective(GeneratedTask record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKey(GeneratedTask record);
}