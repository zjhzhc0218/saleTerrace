package deepdraw.saleterrace.controller;/**
 * Created by hasee on 2018/10/30.
 */

import deepdraw.saleterrace.entity.shop.*;
import deepdraw.saleterrace.enums.ConstantEnums;
import deepdraw.saleterrace.service.MerchantService;
import deepdraw.saleterrace.service.taskService.*;
import deepdraw.saleterrace.util.JsonUtil;
import deepdraw.saleterrace.util.MD5Util;
import deepdraw.saleterrace.util.ResultUtil;
import deepdraw.saleterrace.util.SixNumberRadom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

/**
 * 关于任务部分的接口
 * @author zyw
 * @create 2018-11-5 9:11
 **/
@Controller
@RequestMapping("/task")
public class TaskController {
    
    private TaskService taskService;

    private TaskChangeService taskChangeService;

    private TaskBabySearchService taskBabySearchService;

    private TaskBrowseorderService taskBrowseorderService;

    private TaskValueaddedservicesService taskValueaddedservicesService;


    /*接口预想*/
    /*1.任务新建 涉及任务基础表的新建以及任务表状态改变表新建*/
    @RequestMapping("/addTask")
    @ResponseBody
    public Object addTask(HttpServletRequest request, TaskBasic taskBasic,HttpSession session){
        String message = null ;
        Long taskId = taskService.addTaskBasic(taskBasic);
        session=request.getSession();
       /* 在对应的session中存放我们该任务的任务id*/
        session.setAttribute("taskId",taskId);

        /*任务状态表的建立*/
        TaskChange taskChange =  new TaskChange();
        taskChange.setTaskId(taskId);
        /*任务表状态*/
        taskChange.setTaskState(ConstantEnums.task_state.TASK_STATE_1);
        taskChange.setTaskPeople(taskBasic.getTaskKeeper().toString());
        /*这部分具体内容填写,根据上面的内容*/
        taskChangeService.addTaskChange(taskChange);

        return JsonUtil.object2Json(ResultUtil.success(message));
    }


    /*2.任务状态的改变  改变基础表内容跟状态表内容  这个不是单独出来，而是很多是掺杂在其他业务中除了特殊几个状态*/
    @RequestMapping("/changeTask")
    @ResponseBody
    public Object changeTask(HttpServletRequest request, Long  taskId,Integer taskState ,HttpSession session){
        String message = null ;
        TaskBasic taskBasic = taskService.selectByPrimaryKey(taskId);


        /*任务表的建立*/
        TaskChange taskChange =  taskChangeService.selectByPrimaryKey(taskId);
        /*这部分具体内容填写,根据上面的内容*/
        taskChangeService.addTaskChange(taskChange);

        return JsonUtil.object2Json(ResultUtil.success(message));
    }



   /* 3.查看任务*/
   @RequestMapping("/selectTask")
   @ResponseBody
   public Object selectTask(HttpServletRequest request, Long  taskId,HttpSession session){
       String message = null ;
       TaskBasic taskBasic = taskService.selectByPrimaryKey(taskId);

       session=request.getSession();
       /* 在对应的session中存放我们该任务的任务id*/
       session.setAttribute("taskId",taskId);

       return JsonUtil.object2Json(ResultUtil.success(message));
   }

   /*456.分别是宝贝搜索设置,浏览下单设置,增值服务*/

    /* 4.1.宝贝搜索设置 通过任务主编号*/
   @RequestMapping("/selectTaskBabySearch")
   @ResponseBody
   public Object selectTaskBabySearch(HttpServletRequest request, Long  taskId,HttpSession session){
       String message = null ;
       TaskBasic taskBasic = taskService.selectByPrimaryKey(taskId);
       Long babySearchId = Long.valueOf(0);
       if(taskBasic.getTaskBabysearch()==null){
           return JsonUtil.object2Json(ResultUtil.error(99,"未设置宝贝搜索"));
       }else{
           babySearchId = Long.valueOf(taskBasic.getTaskBabysearch());
       }
       TaskBabysearch taskBabysearch = taskBabySearchService.selectByPrimaryKey(babySearchId);
       return JsonUtil.object2Json(ResultUtil.success(taskBabysearch));
   }

    /* 4.2.宝贝搜索设置新增修改*/
    @RequestMapping("/addTaskBabySearch")
    @ResponseBody
    public Object addTaskBabySearch(HttpServletRequest request,TaskBabysearch taskBabysearch,HttpSession session){
        String message = null ;
        TaskBasic taskBasic = taskService.selectByPrimaryKey(taskBabysearch.getTaskId());
        if(taskBasic.getTaskBabysearch()==null){
            /*新增   这里主键怎么设置，自增长？*/
            /*这里设计主键 TODO*/
            Long taskBabysearchId = Long.valueOf(0);
            taskBabysearch.setBabysearchid(taskBabysearchId);
            taskBabySearchService.insertSelective(taskBabysearch);
            taskBasic.setTaskBabysearch(taskBabysearchId.toString());
            taskService.updateByPrimaryKeySelective(taskBasic);
        }else{
            /*修改*/
            taskBabySearchService.updateByPrimaryKeySelective(taskBabysearch);
        }
        return JsonUtil.object2Json(ResultUtil.success(message));
    }


    /* 5.1.浏览下单设置 通过任务主编号*/
    @RequestMapping("/selectTaskBrowseOrder")
    @ResponseBody
    public Object selectTaskBrowseOrder(HttpServletRequest request, Long  taskId,HttpSession session){
        String message = null ;
        TaskBasic taskBasic = taskService.selectByPrimaryKey(taskId);
        Long browseOrderId = Long.valueOf(0);
        if(taskBasic.getTaskBrowseorder()==null){
            return JsonUtil.object2Json(ResultUtil.error(99,"未设置浏览下单"));
        }else{
            browseOrderId = Long.valueOf(taskBasic.getTaskBrowseorder());
        }
        TaskBrowseorder taskBrowseorder = taskBrowseorderService.selectByPrimaryKey(browseOrderId);
        return JsonUtil.object2Json(ResultUtil.success(taskBrowseorder));
    }

    /* 5.2.浏览下单设置新增修改*/
    @RequestMapping("/addTaskBrowseOrder")
    @ResponseBody
    public Object addTaskBrowseOrder(HttpServletRequest request,TaskBrowseorder taskBrowseorder,HttpSession session){
        String message = null ;
        TaskBasic taskBasic = taskService.selectByPrimaryKey(taskBrowseorder.getTaskId());
        if(taskBasic.getTaskBabysearch()==null){
            /*新增   这里主键怎么设置，自增长？*/
            /*这里设计主键 TODO*/
            Long browseOrderId = Long.valueOf(0);
            taskBrowseorder.setBrowseorderId(browseOrderId);
            taskBrowseorderService.insertSelective(taskBrowseorder);
            taskBasic.setTaskBrowseorder(browseOrderId.toString());
            taskService.updateByPrimaryKeySelective(taskBasic);
        }else{
            /*修改*/
            taskBrowseorderService.updateByPrimaryKeySelective(taskBrowseorder);
        }
        return JsonUtil.object2Json(ResultUtil.success(message));
    }


    /* 6.1.增值服务 通过任务主编号*/
    @RequestMapping("/selectTaskValueAddedServices")
    @ResponseBody
    public Object selectTaskValueAddedServices(HttpServletRequest request, Long  taskId,HttpSession session){
        String message = null ;
        TaskBasic taskBasic = taskService.selectByPrimaryKey(taskId);
        Long valueAddedServiceId = Long.valueOf(0);
        if(taskBasic.getTaskValueaddedservices()==null){
            return JsonUtil.object2Json(ResultUtil.error(99,"未设置增值服务"));
        }else{
            valueAddedServiceId = Long.valueOf(taskBasic.getTaskValueaddedservices());
        }
        TaskValueaddedservices taskValueaddedservicesN = taskValueaddedservicesService.selectByPrimaryKey(valueAddedServiceId);
        return JsonUtil.object2Json(ResultUtil.success(taskValueaddedservicesN));
    }

    /* 6.2.宝贝搜索设置新增修改*/
    @RequestMapping("/addTaskValueAddedServices")
    @ResponseBody
    public Object addTaskValueAddedServices(HttpServletRequest request,TaskValueaddedservices taskValueaddedservices,HttpSession session){
        String message = null ;
        TaskBasic taskBasic = taskService.selectByPrimaryKey(taskValueaddedservices.getTaskId());
        if(taskBasic.getTaskBabysearch()==null){
            /*新增   这里主键怎么设置，自增长？*/
            /*这里设计主键 TODO*/
            Long taskValueaddedservicesId = Long.valueOf(0);
            taskValueaddedservices.setTaskValueid(taskValueaddedservicesId);
            taskValueaddedservicesService.insertSelective(taskValueaddedservices);
            taskBasic.setTaskValueaddedservices(taskValueaddedservicesId.toString());
            taskService.updateByPrimaryKeySelective(taskBasic);
        }else{
            /*修改*/
            taskValueaddedservicesService.updateByPrimaryKeySelective(taskValueaddedservices);
        }
        return JsonUtil.object2Json(ResultUtil.success(message));
    }

  /* 7.任务计算对应赏金*/


  /*8.任务发布，设置对应的账单部分*/
}
