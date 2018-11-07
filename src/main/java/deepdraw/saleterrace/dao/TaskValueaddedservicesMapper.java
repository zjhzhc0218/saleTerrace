package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.TaskValueaddedservices;

public interface TaskValueaddedservicesMapper {
    /**
     *
     * @mbggenerated 2018-11-07
     */
    int deleteByPrimaryKey(Integer tryTheGurstTag);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int insert(TaskValueaddedservices record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int insertSelective(TaskValueaddedservices record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    TaskValueaddedservices selectByPrimaryKey(Integer tryTheGurstTag);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int updateByPrimaryKeySelective(TaskValueaddedservices record);

    /**
     *
     * @mbggenerated 2018-11-07
     */
    int updateByPrimaryKey(TaskValueaddedservices record);
}