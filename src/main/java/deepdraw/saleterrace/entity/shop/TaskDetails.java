package deepdraw.saleterrace.entity.shop;

import java.util.Date;

public class TaskDetails {
    /**
     * 任务表-子的编号 数据库字段是：task_details_id  <br>
     */
    private Long taskDetailsId;

    /**
     * 任务子表对应的总表编号的排序 数据库字段是：task_id  <br>
     */
    private Long taskId;

    /**
     * 任务子表对应的总表编号的排序 数据库字段是：task_id_order  <br>
     */
    private Integer taskIdOrder;

    /**
     * 任务接收人ID,买手ID 数据库字段是：buyerId  <br>
     */
    private Long buyerid;

    /**
     * 任务接受时间 数据库字段是：task_acceptTime  <br>
     */
    private Date taskAccepttime;

    /**
     * 任务的状态（1.接受2.正在执行3.完成4.中止任务5.任务到时） 数据库字段是：task_state  <br>
     */
    private Integer taskState;

    /**
     * 任务接受完成时间 数据库字段是：task_completeTime  <br>
     */
    private Date taskCompletetime;

    /**
     * 任务规定完成时间 数据库字段是：task_provisionsTime  <br>
     */
    private Date taskProvisionstime;

    /**
     * 任务备注 数据库字段是：task_remark  <br>
     */
    private String taskRemark;

    /**
     * 获取任务表-子的编号
     * @return task_details.task_details_id
     */
    public Long getTaskDetailsId() {
        return taskDetailsId;
    }

    /**
     * 设置任务表-子的编号
     * @param taskDetailsId 任务表-子的编号
     */
    public void setTaskDetailsId(Long taskDetailsId) {
        this.taskDetailsId = taskDetailsId;
    }

    /**
     * 获取任务子表对应的总表编号的排序
     * @return task_details.task_id
     */
    public Long getTaskId() {
        return taskId;
    }

    /**
     * 设置任务子表对应的总表编号的排序
     * @param taskId 任务子表对应的总表编号的排序
     */
    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    /**
     * 获取任务子表对应的总表编号的排序
     * @return task_details.task_id_order
     */
    public Integer getTaskIdOrder() {
        return taskIdOrder;
    }

    /**
     * 设置任务子表对应的总表编号的排序
     * @param taskIdOrder 任务子表对应的总表编号的排序
     */
    public void setTaskIdOrder(Integer taskIdOrder) {
        this.taskIdOrder = taskIdOrder;
    }

    /**
     * 获取任务接收人ID,买手ID
     * @return task_details.buyerId
     */
    public Long getBuyerid() {
        return buyerid;
    }

    /**
     * 设置任务接收人ID,买手ID
     * @param buyerid 任务接收人ID,买手ID
     */
    public void setBuyerid(Long buyerid) {
        this.buyerid = buyerid;
    }

    /**
     * 获取任务接受时间
     * @return task_details.task_acceptTime
     */
    public Date getTaskAccepttime() {
        return taskAccepttime;
    }

    /**
     * 设置任务接受时间
     * @param taskAccepttime 任务接受时间
     */
    public void setTaskAccepttime(Date taskAccepttime) {
        this.taskAccepttime = taskAccepttime;
    }

    /**
     * 获取任务的状态（1.接受2.正在执行3.完成4.中止任务5.任务到时）
     * @return task_details.task_state
     */
    public Integer getTaskState() {
        return taskState;
    }

    /**
     * 设置任务的状态（1.接受2.正在执行3.完成4.中止任务5.任务到时）
     * @param taskState 任务的状态（1.接受2.正在执行3.完成4.中止任务5.任务到时）
     */
    public void setTaskState(Integer taskState) {
        this.taskState = taskState;
    }

    /**
     * 获取任务接受完成时间
     * @return task_details.task_completeTime
     */
    public Date getTaskCompletetime() {
        return taskCompletetime;
    }

    /**
     * 设置任务接受完成时间
     * @param taskCompletetime 任务接受完成时间
     */
    public void setTaskCompletetime(Date taskCompletetime) {
        this.taskCompletetime = taskCompletetime;
    }

    /**
     * 获取任务规定完成时间
     * @return task_details.task_provisionsTime
     */
    public Date getTaskProvisionstime() {
        return taskProvisionstime;
    }

    /**
     * 设置任务规定完成时间
     * @param taskProvisionstime 任务规定完成时间
     */
    public void setTaskProvisionstime(Date taskProvisionstime) {
        this.taskProvisionstime = taskProvisionstime;
    }

    /**
     * 获取任务备注
     * @return task_details.task_remark
     */
    public String getTaskRemark() {
        return taskRemark;
    }

    /**
     * 设置任务备注
     * @param taskRemark 任务备注
     */
    public void setTaskRemark(String taskRemark) {
        this.taskRemark = taskRemark == null ? null : taskRemark.trim();
    }
}