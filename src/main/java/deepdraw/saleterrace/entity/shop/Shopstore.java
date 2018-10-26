package deepdraw.saleterrace.entity.shop;

import java.util.Date;

public class Shopstore {
    /**
     * 店铺（自己定义一个自己系统店铺别名类型的 -程序后端赋予的用于我们自己的信息编写） 数据库字段是：shop_id  <br>
     */
    private Long shopId;

    /**
     * 店铺类型（1.淘宝  2.京东 3.拼多多） 数据库字段是：shop_type  <br>
     */
    private Integer shopType;

    /**
     * 店铺拥有人 （使用商家系统自定义的id进行处理数据） 数据库字段是：shop_shopkeeper  <br>
     */
    private Long shopShopkeeper;

    /**
     * 排序 数据库字段是：shop_order  <br>
     */
    private Integer shopOrder;

    /**
     * 掌柜旺旺 数据库字段是：shop_shopkeeperName  <br>
     */
    private String shopShopkeepername;

    /**
     * 店铺名称 数据库字段是：shop_storeName  <br>
     */
    private String shopStorename;

    /**
     * 申请图片 数据库字段是：shop_img  <br>
     */
    private String shopImg;

    /**
     * 绑定时间（年月日） 【申请年月日 精确时间吗】 数据库字段是：shop_creationTime  <br>
     */
    private Date shopCreationtime;

    /**
     * 内容修改时间 数据库字段是：shop_changeTime  <br>
     */
    private Date shopChangetime;

    /**
     * 试用间隔时间 【默认是半个月 15天】这里填写具体天数 数据库字段是：shop_trialInterval  <br>
     */
    private Integer shopTrialinterval;

    /**
     * 状态 【启用  禁用】 数据库字段是：shop_ban  <br>
     */
    private String shopBan;

    /**
     * 申请是否通过【只有正在审核，审核通过，审核不通过】 数据库字段是：shop_states  <br>
     */
    private Integer shopStates;

    /**
     * 反馈理由【客服后台的给出，仅当审核不通过时候显示】 数据库字段是：shop_feedback  <br>
     */
    private String shopFeedback;

    /**
     * 获取店铺（自己定义一个自己系统店铺别名类型的 -程序后端赋予的用于我们自己的信息编写）
     * @return shopstore.shop_id
     */
    public Long getShopId() {
        return shopId;
    }

    /**
     * 设置店铺（自己定义一个自己系统店铺别名类型的 -程序后端赋予的用于我们自己的信息编写）
     * @param shopId 店铺（自己定义一个自己系统店铺别名类型的 -程序后端赋予的用于我们自己的信息编写）
     */
    public void setShopId(Long shopId) {
        this.shopId = shopId;
    }

    /**
     * 获取店铺类型（1.淘宝  2.京东 3.拼多多）
     * @return shopstore.shop_type
     */
    public Integer getShopType() {
        return shopType;
    }

    /**
     * 设置店铺类型（1.淘宝  2.京东 3.拼多多）
     * @param shopType 店铺类型（1.淘宝  2.京东 3.拼多多）
     */
    public void setShopType(Integer shopType) {
        this.shopType = shopType;
    }

    /**
     * 获取店铺拥有人 （使用商家系统自定义的id进行处理数据）
     * @return shopstore.shop_shopkeeper
     */
    public Long getShopShopkeeper() {
        return shopShopkeeper;
    }

    /**
     * 设置店铺拥有人 （使用商家系统自定义的id进行处理数据）
     * @param shopShopkeeper 店铺拥有人 （使用商家系统自定义的id进行处理数据）
     */
    public void setShopShopkeeper(Long shopShopkeeper) {
        this.shopShopkeeper = shopShopkeeper;
    }

    /**
     * 获取排序
     * @return shopstore.shop_order
     */
    public Integer getShopOrder() {
        return shopOrder;
    }

    /**
     * 设置排序
     * @param shopOrder 排序
     */
    public void setShopOrder(Integer shopOrder) {
        this.shopOrder = shopOrder;
    }

    /**
     * 获取掌柜旺旺
     * @return shopstore.shop_shopkeeperName
     */
    public String getShopShopkeepername() {
        return shopShopkeepername;
    }

    /**
     * 设置掌柜旺旺
     * @param shopShopkeepername 掌柜旺旺
     */
    public void setShopShopkeepername(String shopShopkeepername) {
        this.shopShopkeepername = shopShopkeepername == null ? null : shopShopkeepername.trim();
    }

    /**
     * 获取店铺名称
     * @return shopstore.shop_storeName
     */
    public String getShopStorename() {
        return shopStorename;
    }

    /**
     * 设置店铺名称
     * @param shopStorename 店铺名称
     */
    public void setShopStorename(String shopStorename) {
        this.shopStorename = shopStorename == null ? null : shopStorename.trim();
    }

    /**
     * 获取申请图片
     * @return shopstore.shop_img
     */
    public String getShopImg() {
        return shopImg;
    }

    /**
     * 设置申请图片
     * @param shopImg 申请图片
     */
    public void setShopImg(String shopImg) {
        this.shopImg = shopImg == null ? null : shopImg.trim();
    }

    /**
     * 获取绑定时间（年月日） 【申请年月日 精确时间吗】
     * @return shopstore.shop_creationTime
     */
    public Date getShopCreationtime() {
        return shopCreationtime;
    }

    /**
     * 设置绑定时间（年月日） 【申请年月日 精确时间吗】
     * @param shopCreationtime 绑定时间（年月日） 【申请年月日 精确时间吗】
     */
    public void setShopCreationtime(Date shopCreationtime) {
        this.shopCreationtime = shopCreationtime;
    }

    /**
     * 获取内容修改时间
     * @return shopstore.shop_changeTime
     */
    public Date getShopChangetime() {
        return shopChangetime;
    }

    /**
     * 设置内容修改时间
     * @param shopChangetime 内容修改时间
     */
    public void setShopChangetime(Date shopChangetime) {
        this.shopChangetime = shopChangetime;
    }

    /**
     * 获取试用间隔时间 【默认是半个月 15天】这里填写具体天数
     * @return shopstore.shop_trialInterval
     */
    public Integer getShopTrialinterval() {
        return shopTrialinterval;
    }

    /**
     * 设置试用间隔时间 【默认是半个月 15天】这里填写具体天数
     * @param shopTrialinterval 试用间隔时间 【默认是半个月 15天】这里填写具体天数
     */
    public void setShopTrialinterval(Integer shopTrialinterval) {
        this.shopTrialinterval = shopTrialinterval;
    }

    /**
     * 获取状态 【启用  禁用】
     * @return shopstore.shop_ban
     */
    public String getShopBan() {
        return shopBan;
    }

    /**
     * 设置状态 【启用  禁用】
     * @param shopBan 状态 【启用  禁用】
     */
    public void setShopBan(String shopBan) {
        this.shopBan = shopBan == null ? null : shopBan.trim();
    }

    /**
     * 获取申请是否通过【只有正在审核，审核通过，审核不通过】
     * @return shopstore.shop_states
     */
    public Integer getShopStates() {
        return shopStates;
    }

    /**
     * 设置申请是否通过【只有正在审核，审核通过，审核不通过】
     * @param shopStates 申请是否通过【只有正在审核，审核通过，审核不通过】
     */
    public void setShopStates(Integer shopStates) {
        this.shopStates = shopStates;
    }

    /**
     * 获取反馈理由【客服后台的给出，仅当审核不通过时候显示】
     * @return shopstore.shop_feedback
     */
    public String getShopFeedback() {
        return shopFeedback;
    }

    /**
     * 设置反馈理由【客服后台的给出，仅当审核不通过时候显示】
     * @param shopFeedback 反馈理由【客服后台的给出，仅当审核不通过时候显示】
     */
    public void setShopFeedback(String shopFeedback) {
        this.shopFeedback = shopFeedback == null ? null : shopFeedback.trim();
    }
}