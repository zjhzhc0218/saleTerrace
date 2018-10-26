package deepdraw.saleterrace.entity.shop;

import java.util.Date;

public class Merchant {
    /**
     * 账号（手机号不可以修改） 数据库字段是：merchant_account  <br>
     */
    private String merchantAccount;

    /**
     * 生成某个固定id,用于商家系统的id关联处理【不可以进行修改】商家ID 数据库字段是：merchant_id  <br>
     */
    private Long merchantId;

    /**
     * 登陆密码 数据库字段是：merchant_password  <br>
     */
    private String merchantPassword;

    /**
     * 交易密码[支付密码] 数据库字段是：merchant_paycode  <br>
     */
    private String merchantPaycode;

    /**
     * 联系qq 数据库字段是：merchant_qq  <br>
     */
    private String merchantQq;

    /**
     * 绑定手机 数据库字段是：merchant_phone  <br>
     */
    private String merchantPhone;

    /**
     * 登陆时间 数据库字段是：merchant_logintime  <br>
     */
    private Date merchantLogintime;

    /**
     * 登陆次数 数据库字段是：merchant_logincount  <br>
     */
    private Integer merchantLogincount;

    /**
     * 私人加密的对应的字段(系统后台生成并且保存在数据库中) 数据库字段是：merchant_salt  <br>
     */
    private String merchantSalt;

    /**
     * 自己的邀请码 数据库字段是：merchant_inviteCode  <br>
     */
    private String merchantInvitecode;

    /**
     * 一级邀请码（谁邀请的你） 数据库字段是：merchant_inviteCode_One  <br>
     */
    private String merchantInvitecodeOne;

    /**
     * 二级邀请码（邀请你的人的上头） 数据库字段是：merchant_inviteCode_Two  <br>
     */
    private String merchantInvitecodeTwo;

    /**
     * 是否禁用（比如很恶意的行为，平台进行封号警告） 数据库字段是：merchant_ban  <br>
     */
    private Integer merchantBan;

    /**
     * 商家级别（预留字段 或许在平台有充值服务，对应不同服务等级） 数据库字段是：merchant_level  <br>
     */
    private Integer merchantLevel;

    /**
     * 获取生成某个固定id,用于商家系统的id关联处理【不可以进行修改】商家ID
     * @return merchant.merchant_id
     */
    public Long getMerchantId() {
        return merchantId;
    }

    /**
     * 设置生成某个固定id,用于商家系统的id关联处理【不可以进行修改】商家ID
     * @param merchantId 生成某个固定id,用于商家系统的id关联处理【不可以进行修改】商家ID
     */
    public void setMerchantId(Long merchantId) {
        this.merchantId = merchantId;
    }

    /**
     * 获取账号（手机号不可以修改）
     * @return merchant.merchant_account
     */
    public String getMerchantAccount() {
        return merchantAccount;
    }

    /**
     * 设置账号（手机号不可以修改）
     * @param merchantAccount 账号（手机号不可以修改）
     */
    public void setMerchantAccount(String merchantAccount) {
        this.merchantAccount = merchantAccount == null ? null : merchantAccount.trim();
    }

    /**
     * 获取登陆密码
     * @return merchant.merchant_password
     */
    public String getMerchantPassword() {
        return merchantPassword;
    }

    /**
     * 设置登陆密码
     * @param merchantPassword 登陆密码
     */
    public void setMerchantPassword(String merchantPassword) {
        this.merchantPassword = merchantPassword == null ? null : merchantPassword.trim();
    }

    /**
     * 获取交易密码[支付密码]
     * @return merchant.merchant_paycode
     */
    public String getMerchantPaycode() {
        return merchantPaycode;
    }

    /**
     * 设置交易密码[支付密码]
     * @param merchantPaycode 交易密码[支付密码]
     */
    public void setMerchantPaycode(String merchantPaycode) {
        this.merchantPaycode = merchantPaycode == null ? null : merchantPaycode.trim();
    }

    /**
     * 获取联系qq
     * @return merchant.merchant_qq
     */
    public String getMerchantQq() {
        return merchantQq;
    }

    /**
     * 设置联系qq
     * @param merchantQq 联系qq
     */
    public void setMerchantQq(String merchantQq) {
        this.merchantQq = merchantQq == null ? null : merchantQq.trim();
    }

    /**
     * 获取绑定手机
     * @return merchant.merchant_phone
     */
    public String getMerchantPhone() {
        return merchantPhone;
    }

    /**
     * 设置绑定手机
     * @param merchantPhone 绑定手机
     */
    public void setMerchantPhone(String merchantPhone) {
        this.merchantPhone = merchantPhone == null ? null : merchantPhone.trim();
    }

    /**
     * 获取登陆时间
     * @return merchant.merchant_logintime
     */
    public Date getMerchantLogintime() {
        return merchantLogintime;
    }

    /**
     * 设置登陆时间
     * @param merchantLogintime 登陆时间
     */
    public void setMerchantLogintime(Date merchantLogintime) {
        this.merchantLogintime = merchantLogintime;
    }

    /**
     * 获取登陆次数
     * @return merchant.merchant_logincount
     */
    public Integer getMerchantLogincount() {
        return merchantLogincount;
    }

    /**
     * 设置登陆次数
     * @param merchantLogincount 登陆次数
     */
    public void setMerchantLogincount(Integer merchantLogincount) {
        this.merchantLogincount = merchantLogincount;
    }

    /**
     * 获取私人加密的对应的字段(系统后台生成并且保存在数据库中)
     * @return merchant.merchant_salt
     */
    public String getMerchantSalt() {
        return merchantSalt;
    }

    /**
     * 设置私人加密的对应的字段(系统后台生成并且保存在数据库中)
     * @param merchantSalt 私人加密的对应的字段(系统后台生成并且保存在数据库中)
     */
    public void setMerchantSalt(String merchantSalt) {
        this.merchantSalt = merchantSalt == null ? null : merchantSalt.trim();
    }

    /**
     * 获取自己的邀请码
     * @return merchant.merchant_inviteCode
     */
    public String getMerchantInvitecode() {
        return merchantInvitecode;
    }

    /**
     * 设置自己的邀请码
     * @param merchantInvitecode 自己的邀请码
     */
    public void setMerchantInvitecode(String merchantInvitecode) {
        this.merchantInvitecode = merchantInvitecode == null ? null : merchantInvitecode.trim();
    }

    /**
     * 获取一级邀请码（谁邀请的你）
     * @return merchant.merchant_inviteCode_One
     */
    public String getMerchantInvitecodeOne() {
        return merchantInvitecodeOne;
    }

    /**
     * 设置一级邀请码（谁邀请的你）
     * @param merchantInvitecodeOne 一级邀请码（谁邀请的你）
     */
    public void setMerchantInvitecodeOne(String merchantInvitecodeOne) {
        this.merchantInvitecodeOne = merchantInvitecodeOne == null ? null : merchantInvitecodeOne.trim();
    }

    /**
     * 获取二级邀请码（邀请你的人的上头）
     * @return merchant.merchant_inviteCode_Two
     */
    public String getMerchantInvitecodeTwo() {
        return merchantInvitecodeTwo;
    }

    /**
     * 设置二级邀请码（邀请你的人的上头）
     * @param merchantInvitecodeTwo 二级邀请码（邀请你的人的上头）
     */
    public void setMerchantInvitecodeTwo(String merchantInvitecodeTwo) {
        this.merchantInvitecodeTwo = merchantInvitecodeTwo == null ? null : merchantInvitecodeTwo.trim();
    }

    /**
     * 获取是否禁用（比如很恶意的行为，平台进行封号警告）
     * @return merchant.merchant_ban
     */
    public Integer getMerchantBan() {
        return merchantBan;
    }

    /**
     * 设置是否禁用（比如很恶意的行为，平台进行封号警告）
     * @param merchantBan 是否禁用（比如很恶意的行为，平台进行封号警告）
     */
    public void setMerchantBan(Integer merchantBan) {
        this.merchantBan = merchantBan;
    }

    /**
     * 获取商家级别（预留字段 或许在平台有充值服务，对应不同服务等级）
     * @return merchant.merchant_level
     */
    public Integer getMerchantLevel() {
        return merchantLevel;
    }

    /**
     * 设置商家级别（预留字段 或许在平台有充值服务，对应不同服务等级）
     * @param merchantLevel 商家级别（预留字段 或许在平台有充值服务，对应不同服务等级）
     */
    public void setMerchantLevel(Integer merchantLevel) {
        this.merchantLevel = merchantLevel;
    }
}