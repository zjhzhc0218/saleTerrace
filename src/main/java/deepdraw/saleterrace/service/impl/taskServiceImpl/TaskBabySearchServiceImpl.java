package deepdraw.saleterrace.service.impl.taskServiceImpl;/**
 * Created by hasee on 2018/11/26.
 */

import deepdraw.saleterrace.dao.TaskBabysearchMapper;
import deepdraw.saleterrace.entity.shop.TaskBabysearch;
import deepdraw.saleterrace.service.taskService.TaskBabySearchService;

/**
 * 宝贝搜索设置表对应
 * @author zyw
 * @create 2018-11-26 10:14
 **/
public class TaskBabySearchServiceImpl implements TaskBabySearchService {

    private TaskBabysearchMapper taskBabysearchMapper;


    @Override
    public int deleteByPrimaryKey(Long babysearchid) {
        taskBabysearchMapper.deleteByPrimaryKey(babysearchid);
        return 0;
    }

    @Override
    public int insert(TaskBabysearch record) {
        taskBabysearchMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(TaskBabysearch record) {
        taskBabysearchMapper.insertSelective(record);
        return 0;
    }

    @Override
    public TaskBabysearch selectByPrimaryKey(Long babysearchid) {
        taskBabysearchMapper.selectByPrimaryKey(babysearchid);
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TaskBabysearch record) {
        taskBabysearchMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TaskBabysearch record) {
        taskBabysearchMapper.updateByPrimaryKey(record);
        return 0;
    }
}
