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

    @Override
    public int deleteByPrimaryKey(Long taskId) {
        return taskChangeMapper.deleteByPrimaryKey(taskId);
    }

    @Override
    public int insert(TaskChange record) {
        return taskChangeMapper.insert(record);
    }

    @Override
    public int insertSelective(TaskChange record) {
        return taskChangeMapper.insertSelective(record);
    }

    @Override
    public TaskChange selectByPrimaryKey(Long taskId) {
        return taskChangeMapper.selectByPrimaryKey(taskId);
    }

    @Override
    public int updateByPrimaryKeySelective(TaskChange record) {
        return taskChangeMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(TaskChange record) {
        return taskChangeMapper.updateByPrimaryKey(record);
    }
}
