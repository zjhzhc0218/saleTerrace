package deepdraw.saleterrace.service.impl.taskServiceImpl;/**
 * Created by hasee on 2018/11/8.
 */

import deepdraw.saleterrace.dao.TaskBasicMapper;
import deepdraw.saleterrace.entity.shop.TaskBasic;
import deepdraw.saleterrace.entity.shop.TaskChange;
import deepdraw.saleterrace.service.taskService.TaskService;
import jnr.ffi.annotations.In;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author
 * @create 2018-11-08 10:19
 **/
public class TaskServiceImpl implements TaskService{

    @Autowired
    private TaskBasicMapper taskBasicMapper;



    /**
     * 任务基本表创建完成【同时回返回对应的任务编号】
     * @param taskBasic
     * @return
     */
    @Override
    public Long addTaskBasic(TaskBasic taskBasic) {
        Long timeStart =  System.currentTimeMillis();
        Long taskId = Long.valueOf(0);
        if(taskBasic.getTaskKeeper()!=null){
            Long shopStoreNumber =  taskBasic.getTaskKeeper()%1000;
            taskId = timeStart*1000 + shopStoreNumber;
            taskBasic.setTaskId(taskId);
        }else{
            /*抛出错误  没有所有人内容*/
        }
        taskBasic.setTaskState(1);
        taskBasicMapper.insertSelective(taskBasic);



        return taskId;
    }
}
