package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.TaskBrowseorder;

public interface TaskBrowseorderMapper {
    /**
     *
     * @mbggenerated 2018-11-07
     */
    int deleteByPrimaryKey(Long browseorderId);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int insert(TaskBrowseorder record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int insertSelective(TaskBrowseorder record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    TaskBrowseorder selectByPrimaryKey(Long browseorderId);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int updateByPrimaryKeySelective(TaskBrowseorder record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int updateByPrimaryKey(TaskBrowseorder record);
}