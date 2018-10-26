package deepdraw.saleterrace.entity.shop;

import java.math.BigDecimal;

public class Bill {
    /**
     * 用户id【我们系统生成的】商家id 数据库字段是：merchant_id  <br>
     */
    private Long merchantId;

    /**
     * 用户资金【资金】 数据库字段是：bill_money  <br>
     */
    private BigDecimal billMoney;

    /**
     * 用户资金【货品抵押时候扣押的金额】 数据库字段是：bill_loans  <br>
     */
    private BigDecimal billLoans;

    /**
     * 用户金币【金币】 数据库字段是：bill_gold  <br>
     */
    private BigDecimal billGold;

    /**
     * 获取用户id【我们系统生成的】商家id
     * @return bill.merchant_id
     */
    public Long getMerchantId() {
        return merchantId;
    }

    /**
     * 设置用户id【我们系统生成的】商家id
     * @param merchantId 用户id【我们系统生成的】商家id
     */
    public void setMerchantId(Long merchantId) {
        this.merchantId = merchantId;
    }

    /**
     * 获取用户资金【资金】
     * @return bill.bill_money
     */
    public BigDecimal getBillMoney() {
        return billMoney;
    }

    /**
     * 设置用户资金【资金】
     * @param billMoney 用户资金【资金】
     */
    public void setBillMoney(BigDecimal billMoney) {
        this.billMoney = billMoney;
    }

    /**
     * 获取用户资金【货品抵押时候扣押的金额】
     * @return bill.bill_loans
     */
    public BigDecimal getBillLoans() {
        return billLoans;
    }

    /**
     * 设置用户资金【货品抵押时候扣押的金额】
     * @param billLoans 用户资金【货品抵押时候扣押的金额】
     */
    public void setBillLoans(BigDecimal billLoans) {
        this.billLoans = billLoans;
    }

    /**
     * 获取用户金币【金币】
     * @return bill.bill_gold
     */
    public BigDecimal getBillGold() {
        return billGold;
    }

    /**
     * 设置用户金币【金币】
     * @param billGold 用户金币【金币】
     */
    public void setBillGold(BigDecimal billGold) {
        this.billGold = billGold;
    }
}