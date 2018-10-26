package deepdraw.saleterrace.entity.shop;

import java.math.BigDecimal;

public class BillTransaction {
    /**
     * 账单表编号[账单分情况的   比如体现 充值 体现  转账  任务发布等等 不同标识]  数据库字段是：transaction_serialNumber  <br>
     */
    private Long transactionSerialnumber;

    /**
     * 交易方A（资金投入方） 数据库字段是：transaction_counterpartyA  <br>
     */
    private Long transactionCounterpartya;

    /**
     * 交易方B（资金收入方） 数据库字段是：transaction_counterpartyB  <br>
     */
    private Long transactionCounterpartyb;

    /**
     * 资金类型【金币还是资金】 数据库字段是：transaction_type  <br>
     */
    private Integer transactionType;

    /**
     * 对应银行账号id【充值时候是A放的对应银行账号,提现是B对应的银行账号】 数据库字段是：transaction_bankAccount  <br>
     */
    private String transactionBankaccount;

    /**
     * 具体数量 数据库字段是：transaction_number  <br>
     */
    private BigDecimal transactionNumber;

    /**
     * 状态【1.正在处理 2成功 3失败】 数据库字段是：transaction_state  <br>
     */
    private Integer transactionState;

    /**
     * 备注【可以是关于成功之后的业务备注，也可以是失败的原因人为填写】 数据库字段是：transaction_remark  <br>
     */
    private String transactionRemark;

    /**
     * 获取账单表编号[账单分情况的   比如体现 充值 体现  转账  任务发布等等 不同标识] 
     * @return bill_transaction.transaction_serialNumber
     */
    public Long getTransactionSerialnumber() {
        return transactionSerialnumber;
    }

    /**
     * 设置账单表编号[账单分情况的   比如体现 充值 体现  转账  任务发布等等 不同标识] 
     * @param transactionSerialnumber 账单表编号[账单分情况的   比如体现 充值 体现  转账  任务发布等等 不同标识] 
     */
    public void setTransactionSerialnumber(Long transactionSerialnumber) {
        this.transactionSerialnumber = transactionSerialnumber;
    }

    /**
     * 获取交易方A（资金投入方）
     * @return bill_transaction.transaction_counterpartyA
     */
    public Long getTransactionCounterpartya() {
        return transactionCounterpartya;
    }

    /**
     * 设置交易方A（资金投入方）
     * @param transactionCounterpartya 交易方A（资金投入方）
     */
    public void setTransactionCounterpartya(Long transactionCounterpartya) {
        this.transactionCounterpartya = transactionCounterpartya;
    }

    /**
     * 获取交易方B（资金收入方）
     * @return bill_transaction.transaction_counterpartyB
     */
    public Long getTransactionCounterpartyb() {
        return transactionCounterpartyb;
    }

    /**
     * 设置交易方B（资金收入方）
     * @param transactionCounterpartyb 交易方B（资金收入方）
     */
    public void setTransactionCounterpartyb(Long transactionCounterpartyb) {
        this.transactionCounterpartyb = transactionCounterpartyb;
    }

    /**
     * 获取资金类型【金币还是资金】
     * @return bill_transaction.transaction_type
     */
    public Integer getTransactionType() {
        return transactionType;
    }

    /**
     * 设置资金类型【金币还是资金】
     * @param transactionType 资金类型【金币还是资金】
     */
    public void setTransactionType(Integer transactionType) {
        this.transactionType = transactionType;
    }

    /**
     * 获取对应银行账号id【充值时候是A放的对应银行账号,提现是B对应的银行账号】
     * @return bill_transaction.transaction_bankAccount
     */
    public String getTransactionBankaccount() {
        return transactionBankaccount;
    }

    /**
     * 设置对应银行账号id【充值时候是A放的对应银行账号,提现是B对应的银行账号】
     * @param transactionBankaccount 对应银行账号id【充值时候是A放的对应银行账号,提现是B对应的银行账号】
     */
    public void setTransactionBankaccount(String transactionBankaccount) {
        this.transactionBankaccount = transactionBankaccount == null ? null : transactionBankaccount.trim();
    }

    /**
     * 获取具体数量
     * @return bill_transaction.transaction_number
     */
    public BigDecimal getTransactionNumber() {
        return transactionNumber;
    }

    /**
     * 设置具体数量
     * @param transactionNumber 具体数量
     */
    public void setTransactionNumber(BigDecimal transactionNumber) {
        this.transactionNumber = transactionNumber;
    }

    /**
     * 获取状态【1.正在处理 2成功 3失败】
     * @return bill_transaction.transaction_state
     */
    public Integer getTransactionState() {
        return transactionState;
    }

    /**
     * 设置状态【1.正在处理 2成功 3失败】
     * @param transactionState 状态【1.正在处理 2成功 3失败】
     */
    public void setTransactionState(Integer transactionState) {
        this.transactionState = transactionState;
    }

    /**
     * 获取备注【可以是关于成功之后的业务备注，也可以是失败的原因人为填写】
     * @return bill_transaction.transaction_remark
     */
    public String getTransactionRemark() {
        return transactionRemark;
    }

    /**
     * 设置备注【可以是关于成功之后的业务备注，也可以是失败的原因人为填写】
     * @param transactionRemark 备注【可以是关于成功之后的业务备注，也可以是失败的原因人为填写】
     */
    public void setTransactionRemark(String transactionRemark) {
        this.transactionRemark = transactionRemark == null ? null : transactionRemark.trim();
    }
}