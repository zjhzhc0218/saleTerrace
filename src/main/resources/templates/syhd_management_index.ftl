<div id="hdgl_div" role="tabpanel" class="tab-pane " class="content" >
    <div>
        <div id="tabsSwitch" align="left" class="tabsSwitchDiv" style="margin-top: 0px">
            <ul class="tabsSwitch_ul" style="margin-bottom: 0px">
                <li value="0" class="tabsSwitchSeletedLi">已发布活动</li>
                <li value="1" class="tabsSwitchUnSeletedLi">未发布活动</li>
                <li value="2" class="tabsSwitchUnSeletedLi">发布记录</li>
                <li value="3" class="tabsSwitchUnSeletedLi">发布模板</li>
            </ul>
        </div>
    </div>
    <div class="wdrw_div" align="center">
        <div class="search_options" align="left" style="height: auto">
            <div class="space_div"></div>
            <span>店铺名称：</span>
            <select name="ww_id" id="ww_id">
                <option value="" selected>全部</option>
                <option value="thinklittle旗舰店">thinklittle旗舰店</option>
            </select>
            <span>发布时间：</span>
            <input type="text" class="input_text jsTime1" id="taskBeginTimestart" name="taskBeginTimestart">&nbsp;到&nbsp;
            <input type="text" class="input_text jsTime2" id="taskBeginTimeend" name="taskBeginTimeend"><br>
            <span>订单编号：</span><input type="text" class="input_text ddbh" name="payOrderNum">
            <span>活动类型：</span>
            <select name="saleTaskTypePlat" id="saleTaskTypePlat" style="width: 100px;">
                <option value="" selected>全部</option>
                <option value="0">淘宝/天猫</option>
            </select>
            <select name="saleTaskType" id="saleTaskType" style="width: 130px;">
                <option value="" selected>全部</option>
                <option value="3" class="tbtm hidden">淘宝/天猫深度试用活动</option>
            </select>
            <select name="platform" style="width: 150px;" id="platform">
                <option value="" selected>全部</option>
                <option value="0" class="tbtm hidden">PC淘宝网taobao.com</option>
                <option value="1" class="tbtm hidden">手机淘宝APP</option>
            </select><br>
            <span>活动编号：</span><input type="text" class="input_text rwbh" autocomplete="off">
            <span>试客账号：</span><input type="text" class="input_text msww" >
            <br>

            <div align="left">
                <input type="button" class="search_button" value="搜索" style="text-align: center">
                <input type="hidden" id="childTaskCount" value="0">
                <input type="hidden" id="jobType" name="jobType" value="TASK">
                <input type="hidden" id="taskStatusflag" name="taskStatusflag" value="-1">
                <input type="hidden" name="page" id="page" value="1"/>
                <input type="hidden" id="expressCodeFeeTT" value="3.00">
                <input type="hidden" id="expressCodeFeeQF" value="3.00">
                <#--<input type="button" class="export_button" value="导出" onclick="exportExcel()">-->
                <#--<span id="excel" style="margin-left: 0px;">(导出当前页数据)</span>-->
            </div>
        </div>
        <div id="tabs" align="left">
            <input type="hidden" id="systemTime" name="systemTime" value="1540190741463"/>
            <ul class="tabs_ul" style="color: ">
                <li value="-1" id="defualt" class="tabsUnSeletedLi tabsSeletedLi" style="line-height: 30px;">近三月<p>(<span id="threeMonthTask">1</span>)</li>
                <li value="0" class="tabsUnSeletedLi" style="line-height: 30px;">待接手<p>(<span  id="waitReceiveTask">2</span>)</li>
                <li value="1" class="tabsUnSeletedLi" style="line-height: 30px;">进行中<p>(<span id="going">3</span>)</li>
                <li value="14" class="tabsUnSeletedLi" style="line-height: 30px;">关闭审核<p>(<span id="closeExamine">4</span>)</li>
                <li value="5" class="tabsUnSeletedLi" style="line-height: 30px;">待发货<p>(<span id="waitToDelivered">5</span>)</li>
                <li value="6" class="tabsUnSeletedLi" style="line-height: 30px;">待收货/评价<p>(<span id="delivered">6</span>)</li>
                <li value="7" class="tabsUnSeletedLi" style="line-height: 30px;">待返款<p>(<span id="waitCash">7</span>)</li>
                <li value="11" class="tabsUnSeletedLi" style="line-height: 30px;">已成功<p>(<span id="successTask">8</span>)</li>
                <li value="12" class="tabsUnSeletedLi" style="line-height: 30px;">已失败<p>(<span id="failTask">9</span>)</li>
            </ul>

            <p class="waitToDeliveredP">可导出全部待发货订单，仔细核对旺旺号及订单编号，平台已标记垫付金额与实付金额不一致订单，请确认无误之后操作发货</p>
            <p class="waitToDeliveredP">如找不到订单信息，可在待收货中查看是否已平台发货；拼多多未拼团成功的失效活动，请联系客服关闭</p>
            <p class="waitCashP">如果试客的活动符合要求，请设置返款，平台将赏金打至试客账户。如果不符合要求，请联系客服!</p>
            <div value="5" class="batch" style="display: none;background-color: #ffffff;"><img src="/saleterrace/images/checkbox_unselected.png" class="checkbox checkbox_selectAll" style="margin:0 10px 0 32px" value="0" alt=""><span class="batchAllSpan">全选</span><input type="button" class="checkbox_button" value="批量发货" onclick="bacthSendOrBack(5)"></div>
            <div value="7" class="batch" style="display: none;background-color: #ffffff;"><img src="/saleterrace/images/checkbox_unselected.png" class="checkbox checkbox_selectAll" style="margin:0 10px 0 32px" value="0" alt=""><span class="batchAllSpan">全选</span><input type="button" class="checkbox_button" value="批量返款" onclick="bacthSendOrBack(7)"></div>
            <div class="content_div">
                <div class="list_div">
                    <div class="mission_div">
                        <div class="mission_head">
                            <div class="floatLeft shalfDiv">
                                <img src="/saleterrace/images/checkbox_selected.png" class="checkbox" value="0" id="6456939">
                                <div><b>子活动编号：162036-1536043819001-02201</b>
                                <b id="taskTypeTime">发布时间：2018-09-04 14:52:38</b>
                                </div>
                            </div>
                            <div class="floatLeft fhalfDiv" align="right">
                                <span><b>订单编号：<span>212299761238037050</span></b>
                                <input type="button" value="复制" class="copy_button" style="">
                                <img src="/saleterrace/images/flag.png" class="flagImg" title="添加弹框">
                                </span>
                        </div>
                    </div>
                        <ul class="mission_ul">
                            <li class="mission_li1">
                                <div class="space_div"></div>
                                <div class="bb_img">
                                    <img class="bb_img" src="/saleterrace/images/11.jpg"></div>
                            </li>
                            <li class="mission_li5">
                                <div class="space_div"></div>
                                <img src="/saleterrace/images/mobile_icon2.png">手机端<br>手机淘宝
                            </li>
                            <li class="mission_li7">
                                <div class="space_div"></div>
                                店铺名称<br>
                                <a title="thinklittle旗舰店" style="color: #7b8da0;">thinklittle旗...</a>
                                <img src="/saleterrace/images/tmail_icon.png" class="sjTypeImg">
                            </li>
                            <li class="mission_li4">
                                <div class="space_div"></div>
                                下单数量<br>1
                            </li>
                            <li class="mission_li8" style="width:100px;">
                                <div class="space_div"></div>
                                垫付货款<br>39.9<br>
                            </li>
                            <li class="mission_li9">
                                <div class="space_div"></div>
                                活动总赏金<br>17.20
                            </li>
                            <li class="mission_li3">
                                <div class="space_div"></div>
                                买号要求<br>
                                <img src="/saleterrace/images/b_blue_1.gif" alt="买家信誉">
                            </li>
                            <li class="mission_li8" style="width:128px;">
                                <div class="space_div"></div>
                                <img style="margin-bottom: 2px" src="/saleterrace/images/jsrw.png"><br>
                                <img src="/saleterrace/images/zhu.png" title="主宝贝浏览见底">
                                <img src="/saleterrace/images/ping.png" title="评价浏览">
                                <img src="/saleterrace/images/liao.png" title="旺旺聊天">
                                <img src="/saleterrace/images/scbb.png" title="收藏宝贝">
                                <img src="/saleterrace/images/tjgwc.png" title="加入购物车"><br>
                            </li>
                            <li class="mission_li6">
                                <div class="space_div"></div>
                                试客旺旺<br>
                                <span style="color: red">cradlekl</span>
                                <br><img src="/saleterrace/images/b_blue_3.gif" alt="买家信誉">
                            </li>
                            <li class="mission_li10">
                                交易成功<br>
                                <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=6456939">查看详情</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div id="infoRows">

                </div>
                <div id="pagingFooterBar" align="right">
                    <ul class="pagination"></ul>
                </div>
            </div>
    </div>
    </div>
</div>
<!-- center end -->

<div class="floatLeft fk_outside_div_again" align="left" id="payAgainPub">
    <div class="fk_div_again" style="width: 350px;height: 150px;">
        <span style="margin-left: 10px;color: #333333">温馨提示：</span>
        <div class="warn" style="margin-left: 10px;line-height: 25px;color: #333333">1、失败的子活动可选择再次发布</div>
        <div class="warn" style="margin-left: 10px;line-height: 25px;color: #333333">2、再次发布需重新支付该子活动的货款及赏金。
        </div>
        <div align="right">
            <input type="button" class="cancel_button2" id="cancel_button2" value="取消">
            <input type="button" class="confirm_button2" id="suerAgaginPub" value="确认重发">
        </div>
    </div>
</div>
<div class="floatLeft fk_outside_div_again" align="left" id="closeDoingTask">
    <input type="hidden" id="closeTaskId" class="input_text">
    <div class="fk_div_again" style="width: 420px;height: 220px;">
        <span style="margin-left: 10px;color: #333333">温馨提示：</span>
        <div class="warn" style="margin-left: 35px;line-height: 25px;color: black;margin-right: 10px">
            该活动已被试客接手，此时关闭将会扣除全部赏金，

            若有好评要求，好评部分的赏金可退还。
        </div>
        <div class="warn" style="margin-left: 35px;line-height: 25px;color: black;margin-right: 10px">
            若试客已经下单，活动关闭后将会在淘宝申请退款。
        </div>
        <div class="warn"
             style="margin-left: 35px;line-height: 25px;color: black;margin-top: 20px;margin-right: 10px">
            是否确认关闭该活动？
        </div>
        <div align="right">
            <input type="button" class="cancel_button2" id="cancelCloseDoingTask" value="取消">
            <input type="button" class="confirm_button2" id="suerCloseDoingTask" value="确认">
        </div>
    </div>
</div>

<div class="safety_check" id="surePayAgainPub">
    <div class="title" align="left">
        <span>安全验证</span><img src="/saleterrace/images/close.png" class="safety_window_close closeAgaginPub">
    </div>
    <div class="floatLeft">
        <span style="line-height:30px;">支付密码：</span>
    </div>
    <div class="floatLeft">
        <div style="float:left;position:relative;">
            <input type="password" id="pwd_text" class="input_text pay_input_text">
            <span class="pwdm" onclick="showPwd(this)"></span>
        </div>
        <input type="hidden" id="fk_div_flag" class="input_text">
        <input type="hidden" id="taskid" class="input_text">
        <input type="hidden" id="parentNum" class="input_text">
        <div id="error" style="clear:both;"></div>
        <div class="warn">1、活动发布后立即左右生效，注意刷新活动页！</div>
        <div class="warn">2、<span>试客付款后</span>请及时确认及发货，系统将在<span>48小时自动把货款返还给试客！</span></div>
        <div class="warn">3、<span>试客收货后</span>请及时确认及返款，系统将在<span>48小时后自动返款！</span></div>
        <input type="button" class="safety_submit_button" value="确定" id="confirm_button2">
        <input type="button" class="safety_cancel_button closeAgaginPub" value="取消">
    </div>
</div>

