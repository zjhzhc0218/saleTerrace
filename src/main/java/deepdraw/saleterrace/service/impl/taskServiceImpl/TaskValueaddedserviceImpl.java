package deepdraw.saleterrace.service.impl.taskServiceImpl;/**
 * Created by hasee on 2018/11/26.
 */

import deepdraw.saleterrace.dao.TaskValueaddedservicesMapper;
import deepdraw.saleterrace.entity.shop.TaskValueaddedservices;
import deepdraw.saleterrace.service.taskService.TaskValueaddedservicesService;

/**
 * 增值服务
 * @author zyw
 * @create 2018-11-26 10:32
 **/
public class TaskValueaddedserviceImpl implements TaskValueaddedservicesService{

    private TaskValueaddedservicesMapper taskValueaddedservicesMapper;

    @Override
    public int deleteByPrimaryKey(Long taskValueid) {
        taskValueaddedservicesMapper.deleteByPrimaryKey(taskValueid);
        return 0;
    }

    @Override
    public int insert(TaskValueaddedservices record) {
        taskValueaddedservicesMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(TaskValueaddedservices record) {
        taskValueaddedservicesMapper.insertSelective(record);
        return 0;
    }

    @Override
    public TaskValueaddedservices selectByPrimaryKey(Long taskValueid) {
        taskValueaddedservicesMapper.selectByPrimaryKey(taskValueid);
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TaskValueaddedservices record) {
        taskValueaddedservicesMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TaskValueaddedservices record) {
        taskValueaddedservicesMapper.updateByPrimaryKey(record);
        return 0;
    }
}
