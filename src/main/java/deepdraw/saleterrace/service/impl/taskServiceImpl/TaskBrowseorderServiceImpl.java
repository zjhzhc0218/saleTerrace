package deepdraw.saleterrace.service.impl.taskServiceImpl;/**
 * Created by hasee on 2018/11/26.
 */

import deepdraw.saleterrace.dao.TaskBrowseorderMapper;
import deepdraw.saleterrace.entity.shop.TaskBrowseorder;
import deepdraw.saleterrace.service.taskService.TaskBrowseorderService;

/**
 * @author
 * @create 2018-11-26 10:19
 **/
public class TaskBrowseorderServiceImpl implements TaskBrowseorderService{

    private TaskBrowseorderMapper taskBrowseorderMapper;

    @Override
    public int deleteByPrimaryKey(Long browseorderId) {
        taskBrowseorderMapper.deleteByPrimaryKey(browseorderId);
        return 0;
    }

    @Override
    public int insert(TaskBrowseorder record) {
        taskBrowseorderMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(TaskBrowseorder record) {
        taskBrowseorderMapper.insertSelective(record);
        return 0;
    }

    @Override
    public TaskBrowseorder selectByPrimaryKey(Long browseorderId) {
        taskBrowseorderMapper.selectByPrimaryKey(browseorderId);
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TaskBrowseorder record) {
        taskBrowseorderMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TaskBrowseorder record) {
        taskBrowseorderMapper.updateByPrimaryKey(record);
        return 0;
    }
}
