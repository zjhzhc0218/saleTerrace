package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.TaskValueaddedservices;

public interface TaskValueaddedservicesMapper {
    /**
     *
     * @mbggenerated 2018-11-26
     */
    int deleteByPrimaryKey(Long taskValueid);

    /**
     *
     * @mbggenerated 2018-11-26
     */
    int insert(TaskValueaddedservices record);

    /**
     *
     * @mbggenerated 2018-11-26
     */
    int insertSelective(TaskValueaddedservices record);

    /**
     *
     * @mbggenerated 2018-11-26
     */
    TaskValueaddedservices selectByPrimaryKey(Long taskValueid);

    /**
     *
     * @mbggenerated 2018-11-26
     */
    int updateByPrimaryKeySelective(TaskValueaddedservices record);

    /**
     *
     * @mbggenerated 2018-11-26
     */
    int updateByPrimaryKey(TaskValueaddedservices record);
}