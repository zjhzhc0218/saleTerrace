package deepdraw.saleterrace.service.taskService;/**
 * Created by hasee on 2018/11/8.
 */

import deepdraw.saleterrace.entity.shop.TaskBasic;

/**
 * @author
 * @create 2018-11-08 10:17
 **/
public interface TaskService {

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int deleteByPrimaryKey(Long taskId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insert(TaskBasic record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insertSelective(TaskBasic record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    TaskBasic selectByPrimaryKey(Long taskId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKeySelective(TaskBasic record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKey(TaskBasic record);

    /*新建一个任务基本表*/
    Long addTaskBasic(TaskBasic taskBasic);




}
