package deepdraw.saleterrace.enums;/**
 * Created by hasee on 2018/11/20.
 */

/**
 * @author zyw
 * @create 2018-11-20 10:17
 **/
public final class ConstantEnums {

    /*账单交易类别 资金类型*/
    public static interface bill_transaction{
       /* 1.活动*/
        public static final Integer TRANSACTION_TYPE_1 = 1;
       /* 2.推荐奖励*/
        public static final Integer TRANSACTION_TYPE_2 = 2;
        /*3.充值*/
        public static final Integer TRANSACTION_TYPE_3 = 3;
        /*4.货款转金币*/
        public static final Integer TRANSACTION_TYPE_4 = 4;
       /* 5.金币转货款*/
        public static final Integer TRANSACTION_TYPE_5 = 5;
       /* 6.提现*/
        public static final Integer TRANSACTION_TYPE_6 = 6;
        /*7.推广费*/
        public static final Integer TRANSACTION_TYPE_7 = 7;
       /* 8.首单赠送*/
        public static final Integer TRANSACTION_TYPE_8 = 8;
        /*9.系统加减款*/
        public static final Integer TRANSACTION_TYPE_9 = 9;
        /*10.保证金充值*/
        public static final Integer TRANSACTION_TYPE_10 = 10;
        /*11.其他*/
        public static final Integer TRANSACTION_TYPE_11= 11;
    }

    /*活动表 任务表状态*/
    public static interface task_state{
        /*1.选择活动类型*/
        public static final Integer  TASK_STATE_1 = 1;
        /*2.宝贝搜索设置*/
        public static final Integer  TASK_STATE_2 = 2;
       /* 3.浏览下单设置*/
        public static final Integer  TASK_STATE_3 = 3;
        /*4.增值服务选择*/
        public static final Integer  TASK_STATE_4 = 4;
        /*5.付款发布*/
        public static final Integer  TASK_STATE_5 = 5;
        /*6.任务待接手*/
        public static final Integer  TASK_STATE_6 = 6;
        /*7.任务进行中*/
        public static final Integer  TASK_STATE_7 = 7;
        /*8.关闭审核*/
        public static final Integer  TASK_STATE_8 = 8;
        /*9.待发货*/
        public static final Integer  TASK_STATE_9 = 9;
        /*10.待收货/评价*/
        public static final Integer  TASK_STATE_10 = 10;
       /* 11.待返款*/
        public static final Integer  TASK_STATE_11 = 11;
        /*12.已经成功*/
        public static final Integer  TASK_STATE_12 = 12;
       /* 13.已经失败*/
        public static final Integer  TASK_STATE_13 = 13;
    }


}
