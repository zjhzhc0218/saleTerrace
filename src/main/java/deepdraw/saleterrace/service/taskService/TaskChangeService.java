package deepdraw.saleterrace.service.taskService;/**
 * Created by hasee on 2018/11/8.
 */

import deepdraw.saleterrace.entity.shop.TaskChange;

/**
 * @author
 * @create 2018-11-08 10:19
 **/
public interface TaskChangeService {



    String addTaskChange(TaskChange taskChange);

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
