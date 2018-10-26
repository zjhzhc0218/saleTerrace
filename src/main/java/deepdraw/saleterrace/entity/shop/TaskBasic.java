package deepdraw.saleterrace.entity.shop;

public class TaskBasic {
    /**
     * 任务编号 数据库字段是：task_id  <br>
     */
    private Long taskId;

    /**
     * 任务序号（主要是你这个刷单的数量,会根据不同人接单,会出现同一个任务总编号 数据库字段是：task_order  <br>
     */
    private Integer taskOrder;

    /**
     * 任务活动类型(暂时就一个补销量，以后会添加) 数据库字段是：task_type  <br>
     */
    private Integer taskType;

    /**
     * 任务宝贝完整连接 数据库字段是：task_link  <br>
     */
    private String taskLink;

    /**
     * 任务宝贝所有人（可以理解成店铺宝贝主人） 数据库字段是：task_keeper  <br>
     */
    private Long taskKeeper;

    /**
     * 任务宝贝店铺（这里应该放值系统中店铺的id） 数据库字段是：task_shopstore  <br>
     */
    private String taskShopstore;

    /**
     * 任务表状态 数据库字段是：task_state  <br>
     */
    private Integer taskState;

    /**
     * 宝贝搜索设置 数据库字段是：task_babySearch  <br>
     */
    private String taskBabysearch;

    /**
     * 浏览下单设置 数据库字段是：task_browseOrder  <br>
     */
    private String taskBrowseorder;

    /**
     * 增值服务 数据库字段是：task_valueAddedServices  <br>
     */
    private String taskValueaddedservices;

    /**
     * 备注 数据库字段是：task_remark  <br>
     */
    private String taskRemark;

    /**
     * 获取任务编号
     * @return task_basic.task_id
     */
    public Long getTaskId() {
        return taskId;
    }

    /**
     * 设置任务编号
     * @param taskId 任务编号
     */
    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    /**
     * 获取任务序号（主要是你这个刷单的数量,会根据不同人接单,会出现同一个任务总编号
     * @return task_basic.task_order
     */
    public Integer getTaskOrder() {
        return taskOrder;
    }

    /**
     * 设置任务序号（主要是你这个刷单的数量,会根据不同人接单,会出现同一个任务总编号
     * @param taskOrder 任务序号（主要是你这个刷单的数量,会根据不同人接单,会出现同一个任务总编号
     */
    public void setTaskOrder(Integer taskOrder) {
        this.taskOrder = taskOrder;
    }

    /**
     * 获取任务活动类型(暂时就一个补销量，以后会添加)
     * @return task_basic.task_type
     */
    public Integer getTaskType() {
        return taskType;
    }

    /**
     * 设置任务活动类型(暂时就一个补销量，以后会添加)
     * @param taskType 任务活动类型(暂时就一个补销量，以后会添加)
     */
    public void setTaskType(Integer taskType) {
        this.taskType = taskType;
    }

    /**
     * 获取任务宝贝完整连接
     * @return task_basic.task_link
     */
    public String getTaskLink() {
        return taskLink;
    }

    /**
     * 设置任务宝贝完整连接
     * @param taskLink 任务宝贝完整连接
     */
    public void setTaskLink(String taskLink) {
        this.taskLink = taskLink == null ? null : taskLink.trim();
    }

    /**
     * 获取任务宝贝所有人（可以理解成店铺宝贝主人）
     * @return task_basic.task_keeper
     */
    public Long getTaskKeeper() {
        return taskKeeper;
    }

    /**
     * 设置任务宝贝所有人（可以理解成店铺宝贝主人）
     * @param taskKeeper 任务宝贝所有人（可以理解成店铺宝贝主人）
     */
    public void setTaskKeeper(Long taskKeeper) {
        this.taskKeeper = taskKeeper;
    }

    /**
     * 获取任务宝贝店铺（这里应该放值系统中店铺的id）
     * @return task_basic.task_shopstore
     */
    public String getTaskShopstore() {
        return taskShopstore;
    }

    /**
     * 设置任务宝贝店铺（这里应该放值系统中店铺的id）
     * @param taskShopstore 任务宝贝店铺（这里应该放值系统中店铺的id）
     */
    public void setTaskShopstore(String taskShopstore) {
        this.taskShopstore = taskShopstore == null ? null : taskShopstore.trim();
    }

    /**
     * 获取任务表状态
     * @return task_basic.task_state
     */
    public Integer getTaskState() {
        return taskState;
    }

    /**
     * 设置任务表状态
     * @param taskState 任务表状态
     */
    public void setTaskState(Integer taskState) {
        this.taskState = taskState;
    }

    /**
     * 获取宝贝搜索设置
     * @return task_basic.task_babySearch
     */
    public String getTaskBabysearch() {
        return taskBabysearch;
    }

    /**
     * 设置宝贝搜索设置
     * @param taskBabysearch 宝贝搜索设置
     */
    public void setTaskBabysearch(String taskBabysearch) {
        this.taskBabysearch = taskBabysearch == null ? null : taskBabysearch.trim();
    }

    /**
     * 获取浏览下单设置
     * @return task_basic.task_browseOrder
     */
    public String getTaskBrowseorder() {
        return taskBrowseorder;
    }

    /**
     * 设置浏览下单设置
     * @param taskBrowseorder 浏览下单设置
     */
    public void setTaskBrowseorder(String taskBrowseorder) {
        this.taskBrowseorder = taskBrowseorder == null ? null : taskBrowseorder.trim();
    }

    /**
     * 获取增值服务
     * @return task_basic.task_valueAddedServices
     */
    public String getTaskValueaddedservices() {
        return taskValueaddedservices;
    }

    /**
     * 设置增值服务
     * @param taskValueaddedservices 增值服务
     */
    public void setTaskValueaddedservices(String taskValueaddedservices) {
        this.taskValueaddedservices = taskValueaddedservices == null ? null : taskValueaddedservices.trim();
    }

    /**
     * 获取备注
     * @return task_basic.task_remark
     */
    public String getTaskRemark() {
        return taskRemark;
    }

    /**
     * 设置备注
     * @param taskRemark 备注
     */
    public void setTaskRemark(String taskRemark) {
        this.taskRemark = taskRemark == null ? null : taskRemark.trim();
    }
}