<style>
    .tabs_ul li {
        float: left;
        cursor: pointer;
        width: 108px;
        height: 50px;
        line-height: 50px;
        text-align: center;
        border-right: 1px solid #F2F4F3;
        border-top: 1px solid #F2F4F3;
        border-bottom: 1px solid #F2F4F3
    }

    .tabs_ul li#defualt {
        width: 106px
    }

    .tabs_ul li:hover {
        background-color: #08C7B5;
        color: #666
    }
</style>
<!-- center begin -->
<div id="ckzd_div"  align="center" role="tabpanel" class="tab-pane "class="content">
    <div class="zjjl_title" align="left"><p>资金记录</p></div>
    <div id="zjjl_tabs" style="" align="left">
        <ul class="tabs_ul">
            <li>交易记录</li>
        </ul>
        <div style="float: right;margin-top: -35px;margin-right: 20px;">
            <input type="button" id="export" class="search_button" onclick="exportExcel()" value="导出账单">
        </div>
        <div class="content_div">
            <div class="tab_title">
                <div class="datechooser">
                    <form id="findCondition" action="accounthistory.htm">
                        <div class="floatLeft">起止日期：<input name="startTime" id="dateStart" type="text" value="" class="date_input_text">
                            到<input name="endTime" id="dateEnd" type="text" class="date_input_text" value=""></div>
                        <input id="payTpyeId" type="hidden" name="payType" value="">
                        <input id="timeTypeId" type="hidden" name="timeType" value="LAST_MONTH">
                        <input id="pageId" type="hidden" name="page.page" value="1">
                        <input id="childTaskNum" type="hidden" name="childTaskNum" value="">

                        <input id="transactionTypes" type="hidden" name="transactionTypes" value="BANK_CARD,INNER_CHANGE,INNER_CHANGE_TASK,BANK_CARD_RECHARGE,INNER_CHANGE_RECHARGE_BKKK,INNER_CHANGE_YU_E_JIN_BI,INNER_CHANGE_JIN_BI_YU_E,BANK_CARD_TI_XIAN,INNER_CHANGE_RETURN,INNER_CHANGE_FIRST_GIFT,INNER_CHANGE_SYSTEM,INNER_CHANGE_HBS,INNER_CHANGE_OTHER,INNER_CHANGE_RECOMMEND,INNER_CHANGE_VIP_RECHARGE_BKKK">
                    </form>
                    <ul class="options_ul floatLeft">
                        <li><input type="button" value="今天" class="option_button date_option_shide_chosen_button" onclick="findSomeDateResult('TODAY')"></li>
                        <li><input type="button" value="昨天" class="option_button date_option_shide_chosen_button" onclick="findSomeDateResult('YESTERDAY')"></li>
                        <li><input type="button" value="最近一个月" class="option_button date_option_l"></li>
                        <li><input type="button" value="全部" class="option_button date_option_shide_chosen_button" onclick="findSomeDateResult('ALL')"></li>
                    </ul>
                </div>
                <div class="options_div">
                    <dl class="dl_two">
                        <dt style="width: 60px;margin-left: 20px;">
                            <label class="showChildClick">交易类型:</label>
                        </dt>
                        <dd style="width:60px;">
                            <i class="current" groupid="INNER_CHANGE_TASK">
                                <span name="catColumn" groupid="INNER_CHANGE_TASK" value="INNER_CHANGE_TASK" id="INNER_CHANGE_TASK">
                            </span></i>
                            <label class="mColumn" for="INNER_CHANGE_TASK">活动</label>
                        </dd>
                        <dd style="width:80px;">
                            <i class="current" groupid="INNER_CHANGE_RECOMMEND">
                                <span name="catColumn" groupid="INNER_CHANGE_RECOMMEND" value="INNER_CHANGE_RECOMMEND" id="INNER_CHANGE_RECOMMEND">
                            </span></i>
                            <label class="mColumn" for="INNER_CHANGE_RECOMMEND">推荐奖励</label>
                        </dd>
                        <dd style="width:60px;">
                            <i class="current" groupid="BANK_CARD_RECHARGE">
                                <span name="catColumn" groupid="BANK_CARD_RECHARGE" value="BANK_CARD_RECHARGE,INNER_CHANGE_RECHARGE_BKKK" id="BANK_CARD_RECHARGE">
                            </span></i>
                            <label class="mColumn" for="BANK_CARD_RECHARGE">充值</label>
                        </dd>
                        <dd style="width:90px;">
                            <i class="current" groupid="INNER_CHANGE_YU_E_JIN_BI">
                                <span name="catColumn" groupid="INNER_CHANGE_YU_E_JIN_BI" value="INNER_CHANGE_YU_E_JIN_BI" id="INNER_CHANGE_YU_E_JIN_BI">
                            </span></i>
                            <label class="mColumn" for="INNER_CHANGE_YU_E_JIN_BI">货款转金币</label>
                        </dd>
                        <dd style="width:90px;">
                            <i class="current" groupid="INNER_CHANGE_JIN_BI_YU_E">
                                <span name="catColumn" groupid="INNER_CHANGE_JIN_BI_YU_E" value="INNER_CHANGE_JIN_BI_YU_E" id="INNER_CHANGE_JIN_BI_YU_E">
                            </span></i>
                            <label class="mColumn" for="INNER_CHANGE_JIN_BI_YU_E">金币转货款</label>
                        </dd>
                        <dd style="width:60px;">
                            <i class="current" groupid="BANK_CARD_TI_XIAN">
                                <span name="catColumn" groupid="BANK_CARD_TI_XIAN" value="BANK_CARD_TI_XIAN,INNER_CHANGE_RETURN" id="BANK_CARD_TI_XIAN">
                            </span></i>
                            <label class="mColumn" for="BANK_CARD_TI_XIAN">提现</label>
                        </dd>
                        <dd style="width:90px;">
                            <i class="current" groupid="INNER_CHANGE_HBS">
                                <span name="catColumn" groupid="INNER_CHANGE_HBS" value="INNER_CHANGE_HBS" id="INNER_CHANGE_HBS">
                            </span></i>
                            <label class="mColumn" for="INNER_CHANGE_HBS">好帮手赏金</label>
                        </dd>
                        <dd style="width:80px;">
                            <i class="current" groupid="INNER_CHANGE_FIRST_GIFT">
                                <span name="catColumn" groupid="INNER_CHANGE_FIRST_GIFT" value="INNER_CHANGE_FIRST_GIFT" id="INNER_CHANGE_FIRST_GIFT">
                            </span></i>
                            <label class="mColumn" for="INNER_CHANGE_FIRST_GIFT">首单赠送</label>
                        </dd>
                        <dd style="width:90px;">
                            <i class="current" groupid="INNER_CHANGE_SYSTEM">
                                <span name="catColumn" groupid="INNER_CHANGE_SYSTEM" value="INNER_CHANGE_SYSTEM" id="INNER_CHANGE_SYSTEM">
                            </span></i>
                            <label class="mColumn" for="INNER_CHANGE_SYSTEM">系统加减款</label>
                        </dd>
                        <dd style="width:80px;">
                            <i class="current" groupid="INNER_CHANGE_VIP_RECHARGE_BKKK">
                                <span name="catColumn" groupid="INNER_CHANGE_VIP_RECHARGE_BKKK" value="INNER_CHANGE_VIP_RECHARGE_BKKK" id="INNER_CHANGE_VIP_RECHARGE_BKKK">
                            </span></i>
                            <label class="mColumn" for="INNER_CHANGE_SYSTEM">保证金充值</label>
                        </dd>
                        <dd style="width:80px;">
                            <i class="current" groupid="INNER_CHANGE_OTHER">
                                <span name="catColumn" groupid="INNER_CHANGE_OTHER" value="INNER_CHANGE_OTHER" id="INNER_CHANGE_OTHER">
                            </span></i>
                            <label class="mColumn" for="INNER_CHANGE_SYSTEM">其他</label>
                        </dd>
                    </dl>
                </div>
                <div class="options_div">
                    <span style="margin-left: 15px;">子活动编号：</span>
                    <input type="text" id="_ctaskno" class="date_input_text" value="" style="width: 250px;">
                    <input type="button" class="search_button" onclick="searchTask();" value="搜索">
                </div>
                <span style="margin-left: 15px;font-size: 15px;color: red;">平台账单以活动编号的形式展现，需要对账请直接输入子活动编号搜索，查询该活动相关的资金信息</span>
            </div>

            <div class="tab_title" style="margin-top: 5px;">
                <div class="options_div" style="height: 80px;line-height: 20px;">
                    <span style="margin-left: 15px;">最近一个月的交易汇总</span>
                    <ul class="options_ul jylx_ul">
                        <li class="hidden" style="display:block;">
                            <span>活动：</span>货款
                            <span>0</span>,金币
                            <span>0</span>。
                        </li>
                        <li class="hidden" style="display:block;">
                            <span>推荐奖励：</span>货款
                            <span>0</span>,金币
                            <span>0</span>。
                        </li>
                        <li class="hidden" style="display:block;">
                            <span>充值：</span>货款
                            <span>0</span>,金币
                            <span>0</span>。
                        </li>
                        <li class="hidden" style="display:block;">
                            <span>货款转金币：</span>
                            货款
                            <span class="moneyBgS">-2.00</span>,金币
                            <span class="moneyBgA">+2.00</span>。
                        </li>
                        <li class="hidden" style="display:block;">
                            <span>金币转货款：</span>货款
                            <span class="moneyBgA">+2.00</span>, 金币
                            <span class="moneyBgS">-2.00</span>。
                        </li>
                        <li class="hidden" style="display:block;">
                            <span>提现：</span>货款
                            <span>0</span>, 金币
                            <span>0</span>。
                        </li>
                        <li class="hidden" style="display:block;">
                            <span>好帮手赏金：</span>金币
                            <span>0</span>。
                        </li>
                        <li class="hidden" style="display:block;">
                            <span>首单赠送：</span>金币
                            <span>0</span>。
                        </li>
                        <li class="hidden" style="display:block;">
                            <span>系统加减款：</span>货款
                            <span>0</span>, 金币
                            <span>0</span>。
                        </li>
                        <li class="hidden">
                            <span>保证金充值：</span>货款
                            <span>0</span>。
                        </li>
                        <li class="hidden" style="display:block;">
                            <span>其他：</span>货款
                            <span>0</span>, 金币
                            <span>0</span>。
                        </li>
                    </ul>
                </div>
            </div>
            <table class="jyjl_table">
                <tbody><tr class="head_tr">
                    <td style="width: 185px;">交易时间</td>
                    <td style="width: 305px;">交易类型</td>
                    <td style="width: 190px;">交易金额</td>
                    <td style="width: 90px;">状态</td>
                    <td style="padding-left: 5px;">操作</td>
                </tr>
                </tbody></table>

            <ul class="jyjl_ul">
                <li class="createTime_td wd27 pdl12 mgt5">
                    2018-10-22<br><span class="minute_label">15:27</span>
                </li>
                <li class="type_td wd28 mgt5">
                    金币转货款-货款增加
                    <br><span class="lsh_label">子活动编号:</span>
                </li>
                <li valign="middle" class="money_td wd28 height50">
                    货款：<span class="moneyBgA">+1.00</span>
                </li>
                <li valign="middle" class="operation_td height50" style="width:10%;">
                    <span></span>
                </li>
                <li valign="middle" class="operation_td height50">
                    <a href="javascript:void(0)" class="detail_label nextDetailBtn">详情</a>
                </li>
            </ul>
            <div class="trade_info ">
                <ul class="trade_info_head" style="background-color: #fff">
                    <li style="width: 15%">交易时间</li>
                    <li style="width: 25%;">交易流水号</li>
                    <li style="width: 15%">交易明细</li>
                    <li style="width: 15%;">交易方式</li>
                    <li style="width: 15%;">交易金额</li>
                    <li style="width: 15%;">备注</li>
                </ul>
                <ul class="trade_info_value" style="background-color: #fff">
                    <li class="jysj_li mgt5" style="width: 15%">
                        2018-10-22
                        <br>15:27
                    </li>
                    <li class="xfmc_li mgt5" style="width: 25%;">
                        <div><span class="jyh_label clC0C0C0">162036-1540193268908-205772</span></div>
                    </li>
                    <li class="height50" style="width: 15%"><span class="clC0C0C0">金币转货款-货款增加</span></li>
                    <li class="height50" style="width: 15%;"><span class="clC0C0C0">货款</span></li>
                    <li class="ssje_li height50" style="width: 15%;">
                        <span class="clC0C0C0"><span class="moneyBgA">+1.00</span></span>
                    </li><li class="jysj_li" style="width: 15%">
                        <span class="clC0C0C0"></span></li>
                </ul>
            </div>

            <ul class="jyjl_ul">
                <li class="createTime_td wd27 pdl12 mgt5">
                    2018-10-22<br><span class="minute_label">15:27</span>
                </li>
                <li class="type_td wd28 mgt5">
                    金币转货款-金币扣减<br><span class="lsh_label">子活动编号:</span>
                </li>
                <li valign="middle" class="money_td wd28 height50">
                    金币：<span class="moneyBgS">-1.00</span>
                </li>
                <li valign="middle" class="operation_td height50" style="width:10%;">
                    <span></span>
                </li>
                <li valign="middle" class="operation_td height50">
                    <a href="javascript:void(0)" class="detail_label nextDetailBtn">详情</a>
                </li>
            </ul>
            <div class="trade_info ">
                <ul class="trade_info_head" style="background-color: #fff">
                    <li style="width: 15%">交易时间</li>
                    <li style="width: 25%;">交易流水号</li>
                    <li style="width: 15%">交易明细</li>
                    <li style="width: 15%;">交易方式</li>
                    <li style="width: 15%;">交易金额</li>
                    <li style="width: 15%;">备注</li>
                </ul>

                <ul class="trade_info_value" style="background-color: #fff">
                    <li class="jysj_li mgt5" style="width: 15%">
                        2018-10-22<br>15:27
                    </li>
                    <li class="xfmc_li mgt5" style="width: 25%;">
                        <div><span class="jyh_label clC0C0C0">162036-1540193268907-147247</span></div>
                    </li>
                    <li class="height50" style="width: 15%"><span class="clC0C0C0">金币转货款-金币扣减</span></li>
                    <li class="height50" style="width: 15%;"><span class="clC0C0C0">金币</span></li>
                    <li class="ssje_li height50" style="width: 15%;">
                        <span class="clC0C0C0"><span class="moneyBgS">-1.00</span></span>
                    </li>
                    <li class="jysj_li" style="width: 15%">
                        <span class="clC0C0C0"></span>
                    </li>
                </ul>
            </div>

            <div class="paging" align="right">
                <input type="button" class="paging_button" id="firstPage" value="首页" onclick="go(1)">
                <input type="button" class="paging_button" id="lastPage" value="上页">



                <input type="button" value="1" class="number_button

                    number_button_chosen

                ">




                <input type="button" class="paging_button" id="nextPage" value="下页">
                <input type="button" class="paging_button" id="finalPage" value="尾页" onclick="go(1)">
            </div>
            <!-- <div class="foot_div"></div> -->
        </div>
    </div>
</div>
<!-- center end -->


