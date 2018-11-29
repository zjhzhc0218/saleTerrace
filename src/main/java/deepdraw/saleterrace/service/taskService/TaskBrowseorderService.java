package deepdraw.saleterrace.service.taskService;/**
 * Created by hasee on 2018/11/12.
 */

import deepdraw.saleterrace.entity.shop.TaskBrowseorder;

/**
 * 浏览下单设置
 * @author zyw
 * @create 2018-11-12 16:09
 **/
public interface TaskBrowseorderService {

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
