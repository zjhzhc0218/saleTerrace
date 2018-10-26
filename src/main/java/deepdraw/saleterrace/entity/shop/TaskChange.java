package deepdraw.saleterrace.entity.shop;

import java.util.Date;

public class TaskChange {
    /**
     *  数据库字段是：task_id  <br>
     */
    private Long taskId;

    /**
     * 状态[类似任务表状态 改变的一个状态描述]  数据库字段是：task_state  <br>
     */
    private Integer taskState;

    /**
     * 改变时间 数据库字段是：task_changeTime  <br>
     */
    private Date taskChangetime;

    /**
     * 修改人 数据库字段是：task_people  <br>
     */
    private String taskPeople;

    /**
     * 任务改变表备注 数据库字段是：task_remark  <br>
     */
    private String taskRemark;

    /**
     * 获取
     * @return task_change.task_id
     */
    public Long getTaskId() {
        return taskId;
    }

    /**
     * 设置
     * @param taskId 
     */
    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    /**
     * 获取状态[类似任务表状态 改变的一个状态描述] 
     * @return task_change.task_state
     */
    public Integer getTaskState() {
        return taskState;
    }

    /**
     * 设置状态[类似任务表状态 改变的一个状态描述] 
     * @param taskState 状态[类似任务表状态 改变的一个状态描述] 
     */
    public void setTaskState(Integer taskState) {
        this.taskState = taskState;
    }

    /**
     * 获取改变时间
     * @return task_change.task_changeTime
     */
    public Date getTaskChangetime() {
        return taskChangetime;
    }

    /**
     * 设置改变时间
     * @param taskChangetime 改变时间
     */
    public void setTaskChangetime(Date taskChangetime) {
        this.taskChangetime = taskChangetime;
    }

    /**
     * 获取修改人
     * @return task_change.task_people
     */
    public String getTaskPeople() {
        return taskPeople;
    }

    /**
     * 设置修改人
     * @param taskPeople 修改人
     */
    public void setTaskPeople(String taskPeople) {
        this.taskPeople = taskPeople == null ? null : taskPeople.trim();
    }

    /**
     * 获取任务改变表备注
     * @return task_change.task_remark
     */
    public String getTaskRemark() {
        return taskRemark;
    }

    /**
     * 设置任务改变表备注
     * @param taskRemark 任务改变表备注
     */
    public void setTaskRemark(String taskRemark) {
        this.taskRemark = taskRemark == null ? null : taskRemark.trim();
    }
}