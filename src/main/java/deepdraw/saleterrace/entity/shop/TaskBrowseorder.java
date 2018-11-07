package deepdraw.saleterrace.entity.shop;

import java.math.BigDecimal;
import java.util.Date;

public class TaskBrowseorder {
    /**
     * 浏览下单设置id 数据库字段是：browseOrder_id  <br>
     */
    private Long browseorderId;

    /**
     * 浏览下单设置对应的活动id 数据库字段是：task_id  <br>
     */
    private Long taskId;

    /**
     * 竞品1浏览要求 数据库字段是：browse_the_requirements_jp  <br>
     */
    private String browseTheRequirementsJp;

    /**
     * 主宝贝浏览要求 数据库字段是：browse_the_requirements_baby  <br>
     */
    private String browseTheRequirementsBaby;

    /**
     * 付款延迟时间 宝贝加入购物车 购买时间 以小时进行去 0 1 3 5小时以内 数据库字段是：payment_delay_time  <br>
     */
    private Integer paymentDelayTime;

    /**
     * 试客拍下价格,具体价格 数据库字段是：take_the_price  <br>
     */
    private BigDecimal takeThePrice;

    /**
     * 拍下每单件数 数据库字段是：number  <br>
     */
    private Integer number;

    /**
     * 是否包邮 【1宝贝包邮，无需修改运费 2宝贝不包邮 需要额外多垫付10元邮费】 数据库字段是：package_mai  <br>
     */
    private Integer packageMai;

    /**
     * 付款方式【1.无所谓（花呗，信用卡，也可以不用） 2.禁止用花呗，信用卡付款 3.必须使用花呗付款】 数据库字段是：terms_of_payment  <br>
     */
    private Integer termsOfPayment;

    /**
     * 增加附加商品1 数据库字段是：add_ons_one  <br>
     */
    private String addOnsOne;

    /**
     * 增加附加商品2 数据库字段是：add_ons_two  <br>
     */
    private String addOnsTwo;

    /**
     * 活动发单量 数据库字段是：activity_order  <br>
     */
    private Integer activityOrder;

    /**
     * 活动发布间隔 多少分钟 数据库字段是：publish_interval  <br>
     */
    private Integer publishInterval;

    /**
     * 活动失效时间(一般是失效时间往后3小时为正式失效时间) 数据库字段是：active_failure_time  <br>
     */
    private Date activeFailureTime;

    /**
     * 活动注意事项 数据库字段是：event_notes  <br>
     */
    private String eventNotes;

    /**
     * 获取浏览下单设置id
     * @return task_browseOrder.browseOrder_id
     */
    public Long getBrowseorderId() {
        return browseorderId;
    }

    /**
     * 设置浏览下单设置id
     * @param browseorderId 浏览下单设置id
     */
    public void setBrowseorderId(Long browseorderId) {
        this.browseorderId = browseorderId;
    }

    /**
     * 获取浏览下单设置对应的活动id
     * @return task_browseOrder.task_id
     */
    public Long getTaskId() {
        return taskId;
    }

    /**
     * 设置浏览下单设置对应的活动id
     * @param taskId 浏览下单设置对应的活动id
     */
    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    /**
     * 获取竞品1浏览要求
     * @return task_browseOrder.browse_the_requirements_jp
     */
    public String getBrowseTheRequirementsJp() {
        return browseTheRequirementsJp;
    }

    /**
     * 设置竞品1浏览要求
     * @param browseTheRequirementsJp 竞品1浏览要求
     */
    public void setBrowseTheRequirementsJp(String browseTheRequirementsJp) {
        this.browseTheRequirementsJp = browseTheRequirementsJp == null ? null : browseTheRequirementsJp.trim();
    }

    /**
     * 获取主宝贝浏览要求
     * @return task_browseOrder.browse_the_requirements_baby
     */
    public String getBrowseTheRequirementsBaby() {
        return browseTheRequirementsBaby;
    }

    /**
     * 设置主宝贝浏览要求
     * @param browseTheRequirementsBaby 主宝贝浏览要求
     */
    public void setBrowseTheRequirementsBaby(String browseTheRequirementsBaby) {
        this.browseTheRequirementsBaby = browseTheRequirementsBaby == null ? null : browseTheRequirementsBaby.trim();
    }

    /**
     * 获取付款延迟时间 宝贝加入购物车 购买时间 以小时进行去 0 1 3 5小时以内
     * @return task_browseOrder.payment_delay_time
     */
    public Integer getPaymentDelayTime() {
        return paymentDelayTime;
    }

    /**
     * 设置付款延迟时间 宝贝加入购物车 购买时间 以小时进行去 0 1 3 5小时以内
     * @param paymentDelayTime 付款延迟时间 宝贝加入购物车 购买时间 以小时进行去 0 1 3 5小时以内
     */
    public void setPaymentDelayTime(Integer paymentDelayTime) {
        this.paymentDelayTime = paymentDelayTime;
    }

    /**
     * 获取试客拍下价格,具体价格
     * @return task_browseOrder.take_the_price
     */
    public BigDecimal getTakeThePrice() {
        return takeThePrice;
    }

    /**
     * 设置试客拍下价格,具体价格
     * @param takeThePrice 试客拍下价格,具体价格
     */
    public void setTakeThePrice(BigDecimal takeThePrice) {
        this.takeThePrice = takeThePrice;
    }

    /**
     * 获取拍下每单件数
     * @return task_browseOrder.number
     */
    public Integer getNumber() {
        return number;
    }

    /**
     * 设置拍下每单件数
     * @param number 拍下每单件数
     */
    public void setNumber(Integer number) {
        this.number = number;
    }

    /**
     * 获取是否包邮 【1宝贝包邮，无需修改运费 2宝贝不包邮 需要额外多垫付10元邮费】
     * @return task_browseOrder.package_mai
     */
    public Integer getPackageMai() {
        return packageMai;
    }

    /**
     * 设置是否包邮 【1宝贝包邮，无需修改运费 2宝贝不包邮 需要额外多垫付10元邮费】
     * @param packageMai 是否包邮 【1宝贝包邮，无需修改运费 2宝贝不包邮 需要额外多垫付10元邮费】
     */
    public void setPackageMai(Integer packageMai) {
        this.packageMai = packageMai;
    }

    /**
     * 获取付款方式【1.无所谓（花呗，信用卡，也可以不用） 2.禁止用花呗，信用卡付款 3.必须使用花呗付款】
     * @return task_browseOrder.terms_of_payment
     */
    public Integer getTermsOfPayment() {
        return termsOfPayment;
    }

    /**
     * 设置付款方式【1.无所谓（花呗，信用卡，也可以不用） 2.禁止用花呗，信用卡付款 3.必须使用花呗付款】
     * @param termsOfPayment 付款方式【1.无所谓（花呗，信用卡，也可以不用） 2.禁止用花呗，信用卡付款 3.必须使用花呗付款】
     */
    public void setTermsOfPayment(Integer termsOfPayment) {
        this.termsOfPayment = termsOfPayment;
    }

    /**
     * 获取增加附加商品1
     * @return task_browseOrder.add_ons_one
     */
    public String getAddOnsOne() {
        return addOnsOne;
    }

    /**
     * 设置增加附加商品1
     * @param addOnsOne 增加附加商品1
     */
    public void setAddOnsOne(String addOnsOne) {
        this.addOnsOne = addOnsOne == null ? null : addOnsOne.trim();
    }

    /**
     * 获取增加附加商品2
     * @return task_browseOrder.add_ons_two
     */
    public String getAddOnsTwo() {
        return addOnsTwo;
    }

    /**
     * 设置增加附加商品2
     * @param addOnsTwo 增加附加商品2
     */
    public void setAddOnsTwo(String addOnsTwo) {
        this.addOnsTwo = addOnsTwo == null ? null : addOnsTwo.trim();
    }

    /**
     * 获取活动发单量
     * @return task_browseOrder.activity_order
     */
    public Integer getActivityOrder() {
        return activityOrder;
    }

    /**
     * 设置活动发单量
     * @param activityOrder 活动发单量
     */
    public void setActivityOrder(Integer activityOrder) {
        this.activityOrder = activityOrder;
    }

    /**
     * 获取活动发布间隔 多少分钟
     * @return task_browseOrder.publish_interval
     */
    public Integer getPublishInterval() {
        return publishInterval;
    }

    /**
     * 设置活动发布间隔 多少分钟
     * @param publishInterval 活动发布间隔 多少分钟
     */
    public void setPublishInterval(Integer publishInterval) {
        this.publishInterval = publishInterval;
    }

    /**
     * 获取活动失效时间(一般是失效时间往后3小时为正式失效时间)
     * @return task_browseOrder.active_failure_time
     */
    public Date getActiveFailureTime() {
        return activeFailureTime;
    }

    /**
     * 设置活动失效时间(一般是失效时间往后3小时为正式失效时间)
     * @param activeFailureTime 活动失效时间(一般是失效时间往后3小时为正式失效时间)
     */
    public void setActiveFailureTime(Date activeFailureTime) {
        this.activeFailureTime = activeFailureTime;
    }

    /**
     * 获取活动注意事项
     * @return task_browseOrder.event_notes
     */
    public String getEventNotes() {
        return eventNotes;
    }

    /**
     * 设置活动注意事项
     * @param eventNotes 活动注意事项
     */
    public void setEventNotes(String eventNotes) {
        this.eventNotes = eventNotes == null ? null : eventNotes.trim();
    }
}