package deepdraw.saleterrace.service.taskService;/**
 * Created by hasee on 2018/11/26.
 */

import deepdraw.saleterrace.entity.shop.TaskBabysearch;

/**
 * @author
 * @create 2018-11-26 10:13
 **/
public interface TaskBabySearchService {

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
