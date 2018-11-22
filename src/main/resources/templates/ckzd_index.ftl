<!-- center begin -->
<div id="ckzd_div"  align="center" role="tabpanel" class="tab-pane content ckzd_div">
    <div class="zjjl_title" align="left"><p style="margin-bottom: 0px">资金记录</p></div>
    <div id="zjjl_tabs" style="" align="left">
        <ul class="tabs_ul">
            <li class="tabsSeletedLi" style="font-size: 18px;margin-top: 5px">交易记录</li>
        </ul>
        <div style="float: right;margin-top: -35px;margin-right: 20px;">
            <input type="button" id="export" class="search_button" value="导出账单">
        </div>
        <div class="content_div">
            <div class="tab_title">
                <div class="datechooser">

                    <div class="floatLeft">
                        起止日期：
                        <input type="text" class="date_input_text">到<input class="date_input_text" value="">
                    </div>
                    <input type="hidden" >

                    <ul class="options_ul floatLeft" style="width: 356px;text-align: center">
                        <#--<li style="width: 66px"><input type="button" value="今天" class="tabs1" style="width: 66px">px</li>-->
                        <#--<li style="widows: 66px;"><input type="button" value="昨天" class="tabs1" style="width: 66px"></li>-->
                        <#--<li style="width: 98px"><input type="button" value="最近一个月" class="tabs1 tabs2" style="width: 98px"></li>-->
                        <#--<li style="width: 66px"><input type="button" value="全部" class="tabs1" style="width: 66px"></li>-->
                        <li style="width: 66px" class="tabs1">今天</li>
                        <li style="width: 66px;" class="tabs1">昨天</li>
                        <li style="width: 98px" class="tabs1 tabs2">最近一个月</li>
                        <li style="width: 66px" class="tabs1">全部</li>
                    </ul>
                </div>
                <div class="options_div" style="margin-top: -20px">
                    <dl class="dl_two">
                        <dt style="width: 60px;margin-left: 20px;height: 50px;line-height: 50px">
                            <label class="showChildClick">交易类型:</label>
                        </dt>
                        <dd style="width:60px;">
                            <i class="current"></i>
                            <label class="mColumn">活动</label>
                        </dd>
                        <dd style="width:80px;">
                            <i class="current"></i>
                            <label class="mColumn">推荐奖励</label>
                        </dd>
                        <dd style="width:60px;">
                            <i class="current"></i>
                            <label class="mColumn">充值</label>
                        </dd>
                        <dd style="width:90px;">
                            <i class="current"></i>
                            <label class="mColumn">货款转金币</label>
                        </dd>
                        <dd style="width:90px;">
                            <i class="current"></i>
                            <label class="mColumn">金币转货款</label>
                        </dd>
                        <dd style="width:60px;">
                            <i class="current"></i>
                            <label class="mColumn">提现</label>
                        </dd>
                        <dd style="width:90px;">
                            <i class="current"></i>
                            <label class="mColumn">好帮手赏金</label>
                        </dd>
                        <dd style="width:80px;">
                            <i class="current"></i>
                            <label class="mColumn">首单赠送</label>
                        </dd>
                        <dd style="width:90px;">
                            <i class="current"></i>
                            <label class="mColumn">系统加减款</label>
                        </dd>
                        <dd style="width:80px;">
                            <i class="current"></i>
                            <label class="mColumn">保证金充值</label>
                        </dd>
                        <dd style="width:80px;">
                            <i class="current" style="margin-left: 9px"></i>
                            <label class="mColumn">其他</label>
                        </dd>
                    </dl>
                </div>
                <div class="options_div">
                    <span style="margin-left: 15px;color: #1d1d26">子活动编号：</span>
                    <input type="text" id="_ctaskno" class="date_input_text" value="" style="width: 250px;">
                    <input type="button" class="search_button" value="搜索" style="line-height: 2px">
                </div>
                <span style="margin-left: 15px;font-size: 15px;color: red;">平台账单以活动编号的形式展现，需要对账请直接输入子活动编号搜索，查询该活动相关的资金信息</span>
            </div>

            <div class="tab_title" style="margin-top: 5px;">
                <div class="options_div" style="height: 80px;line-height: 20px;">
                    <span style="margin-left: 15px;">交易汇总</span>
                    <ul class="options_ul jylx_ul">
                        <li>
                            <span>活动：</span>货款
                            <span>1</span>,金币
                            <span>1</span>。
                        </li>
                        <li>
                            <span>推荐奖励：</span>货款
                            <span>1</span>,金币
                            <span>1</span>。
                        </li>
                        <li>
                            <span>充值：</span>货款
                            <span>1</span>,金币
                            <span>1</span>。
                        </li>
                        <li>
                            <span>货款转金币：</span>
                            货款
                            <span class="moneyBgS">0</span>,金币
                            <span class="moneyBgA">0</span>。
                        </li>
                        <li>
                            <span>金币转货款：</span>货款
                            <span class="moneyBgA">0</span>, 金币
                            <span class="moneyBgS">0</span>。
                        </li>
                        <li>
                            <span>提现：</span>货款
                            <span>1</span>, 金币
                            <span>1</span>。
                        </li>
                        <li>
                            <span>好帮手赏金：</span>金币
                            <span>1</span>。
                        </li>
                        <li>
                            <span>首单赠送：</span>金币
                            <span>0</span>。
                        </li>
                        <li>
                            <span>系统加减款：</span>货款
                            <span>1</span>, 金币
                            <span>1</span>。
                        </li>
                        <li>
                            <span>保证金充值：</span>货款
                            <span>1</span>。
                        </li>
                        <li>
                            <span>其他：</span>货款
                            <span>1</span>, 金币
                            <span>1</span>。
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
                    <td style="padding-left: 5px;width: 135px">操作</td>
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
                <li class="money_td wd28 height50">
                    货款：<span class="moneyBgA">+1.00</span>
                </li>
                <li class="operation_td height50" style="width:10%;">
                    <span></span>
                </li>
                <li class="operation_td height50">
                    <a href="#" class="detail_label nextDetailBtn">详情</a>
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
                <li class="money_td wd28 height50">
                    金币：<span class="moneyBgS">-1.00</span>
                </li>
                <li class="operation_td height50" style="width:10%;">
                    <span></span>
                </li>
                <li class="operation_td height50">
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

            <div class="paging" align="right" style="line-height: 27px">
                <input type="button" class="paging_button" id="firstPage" value="首页" onclick="go(1)">
                <input type="button" class="paging_button" id="lastPage" value="上页">
                <input type="button" value="1" class="number_button number_button_chosen">
                <input type="button" class="paging_button" id="nextPage" value="下页">
                <input type="button" class="paging_button" id="finalPage" value="尾页" onclick="go(1)">
            </div>
            <!-- <div class="foot_div"></div> -->
        </div>
    </div>
</div>
<!-- center end -->


