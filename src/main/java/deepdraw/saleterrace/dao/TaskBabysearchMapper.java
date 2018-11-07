package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.TaskBabysearch;

public interface TaskBabysearchMapper {
    /**
     *
     * @mbggenerated 2018-11-07
     */
    int deleteByPrimaryKey(Long babysearchid);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int insert(TaskBabysearch record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int insertSelective(TaskBabysearch record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    TaskBabysearch selectByPrimaryKey(Long babysearchid);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int updateByPrimaryKeySelective(TaskBabysearch record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int updateByPrimaryKey(TaskBabysearch record);
}