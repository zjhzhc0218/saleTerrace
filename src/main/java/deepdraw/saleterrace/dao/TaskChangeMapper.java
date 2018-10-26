package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.TaskChange;
import org.springframework.stereotype.Component;

@Component
public interface TaskChangeMapper {
    /**
     *
     * @mbggenerated 2018-10-25
     */
    int deleteByPrimaryKey(Long taskId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insert(TaskChange record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insertSelective(TaskChange record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    TaskChange selectByPrimaryKey(Long taskId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKeySelective(TaskChange record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKey(TaskChange record);
}