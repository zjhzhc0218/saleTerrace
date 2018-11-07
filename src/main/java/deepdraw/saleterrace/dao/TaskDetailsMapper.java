package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.TaskDetails;

public interface TaskDetailsMapper {
    /**
     *
     * @mbggenerated 2018-11-07
     */
    int deleteByPrimaryKey(Long taskDetailsId);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int insert(TaskDetails record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int insertSelective(TaskDetails record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    TaskDetails selectByPrimaryKey(Long taskDetailsId);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int updateByPrimaryKeySelective(TaskDetails record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int updateByPrimaryKey(TaskDetails record);
}