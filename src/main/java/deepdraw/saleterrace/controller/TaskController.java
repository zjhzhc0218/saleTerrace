package deepdraw.saleterrace.controller;/**
 * Created by hasee on 2018/10/30.
 */

import deepdraw.saleterrace.entity.shop.Merchant;
import deepdraw.saleterrace.entity.shop.TaskBasic;
import deepdraw.saleterrace.entity.shop.TaskChange;
import deepdraw.saleterrace.service.MerchantService;
import deepdraw.saleterrace.service.taskService.TaskChangeService;
import deepdraw.saleterrace.service.taskService.TaskService;
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

    @Autowired
    private TaskService taskService;

    private TaskChangeService taskChangeService;

    /*接口预想*/
    /*1.任务新建 涉及任务基础表的新建以及任务表状态改变表新建*/
    @RequestMapping("/addTask")
    @ResponseBody
    public String addTask(HttpServletRequest request, TaskBasic taskBasic,HttpSession session){
        String message = null ;
        Long taskId = taskService.addTaskBasic(taskBasic);
        session=request.getSession();
       /* 在对应的session中存放我们该任务的任务id*/
        session.setAttribute("taskId",taskId);

        /*任务表的建立*/
        TaskChange taskChange =  new TaskChange();
        /*这部分具体内容填写,根据上面的内容*/
        taskChangeService.addTaskChange(taskChange);

        return JsonUtil.object2Json(ResultUtil.success(message));
    }


    /*2.任务状态的改变  改变基础表内容跟状态表内容  这个不是单独出来，而是很多是掺杂在其他业务中除了特殊几个状态*/
    @RequestMapping("/addTask")
    @ResponseBody
    public String changeTask(HttpServletRequest request, Long  taskId,Integer taskState ,HttpSession session){
        String message = null ;
        TaskBasic taskBasic = new TaskBasic();
//        taskService.

        /*任务表的建立*/
        TaskChange taskChange =  new TaskChange();
        /*这部分具体内容填写,根据上面的内容*/
        taskChangeService.addTaskChange(taskChange);

        return JsonUtil.object2Json(ResultUtil.success(message));
    }



   /* 3.查看任务*/

   /*456.分别是宝贝搜索设置,浏览下单设置,增值服务*/

  /* 7.任务计算对应赏金*/


  /*8.任务发布，设置对应的账单部分*/
}
