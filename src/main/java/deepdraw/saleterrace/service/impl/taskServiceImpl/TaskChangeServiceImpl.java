package deepdraw.saleterrace.service.impl.taskServiceImpl;/**
 * Created by hasee on 2018/11/8.
 */

import deepdraw.saleterrace.dao.TaskChangeMapper;
import deepdraw.saleterrace.entity.shop.TaskChange;
import deepdraw.saleterrace.service.taskService.TaskChangeService;

/**
 * @author
 * @create 2018-11-08 10:21
 **/
public class TaskChangeServiceImpl implements TaskChangeService{


    private TaskChangeMapper taskChangeMapper;

    @Override
    public String addTaskChange(TaskChange taskChange) {
        taskChangeMapper.insertSelective(taskChange);
        return null;
    }
}
