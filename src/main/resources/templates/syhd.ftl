<!DOCTYPE >
<html ng-app="saleterrace">
<head>
    <title>【活动管理】</title>
    <link rel="shortcut icon" href="/saleterrace/images/favicon.ico" type="image/x-icon"/>
    <#include "//header_css.ftl">
</head>

<body ng-controller="saleterraceController">
<a class="sImgJump" style=" margin: auto; display: block; ">
    <img class="sTongZhi" src="/saleterrace/images/demo_01.jpg" alt=""
         style="display: block; width: 100%; height: 51px;">
</a>
<div class="top">
    <a href="#grxx_div">
        <div class="logo"></div>
    </a>
    <div class="qun_for_seller qun_tip"><a href="#" target="_blank">活动交流群：111111111</a></div>
    <ul class="LR_USER">
        <li class="pos-rel menu-box">
            <a href="#" class="menu-select-icon">
                <img src="/saleterrace/images/menu_select_icon.png" alt="" class="pos-menu-select">
                <p class="user-name">15355056891</p>
                <p class="user-tag" style="text-align: center; line-height:normal;">VIP 111 天试用中</p>
            </a>
            <ul class="menu-select-box">
                <li style="background-color: #f3f3f3; padding-left: 20px">
                    货款：<b class="clfdaa29" id="top_user_money">1</b>元 &nbsp;&nbsp;&nbsp;金币：1
                    <b class="clfdaa29" id="top_user_coin">1</b>个
                </li>
                <li style="padding-left: 20px; clear: both;">
                    <a href="/saleterrace/zjgl_index?tab=1" class="cl000 menu-select-a">充值</a>
                    <a href="/saleterrace/zjgl_index?tab=3" class="cl000 menu-select-a">提现</a>
                    <a href="/saleterrace/jnbzj_index" target="_blank" class="menu-select-myCenter">缴纳保证金</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="cl01b76c">退出登陆</a>
        </li>
    </ul>
    <input type="hidden" id="exam" value="0">
</div>
<div class="right-menu">
    <a href="javascript:void(0);" id="offKfqq">
        <img src="/saleterrace/images/colsed-kfqq.png" alt="">
    </a>
</div>
<div id="Container" align="center">
    <div id="Header">
        <div class="headMenu" align="right"></div>
    </div>
    <div class="Content-Space-h"></div>
    <div id="Content">
        <div id="Content-Main" class="tab-content container" style="padding-top: 35px;float: none">
        <#--header-->
            <div id="tabsSwitch" align="left" class="tabsSwitchDiv" style="margin-top: 0px;">
                <ul class="tabsSwitch_ul" style="margin-bottom: 0px;">

                    <li class="tabsSwitchUnSeletedLi tabsSwitchSeletedLi" style="width: 240px;">已发布活动</li>
                    <li class="tabsSwitchUnSeletedLi" style="width: 245px;">未发布活动</li>
                    <li class="tabsSwitchUnSeletedLi" style="width: 245px;">发布记录</li>
                    <li class="tabsSwitchUnSeletedLi" style="width: 245px;">发布模板</li>
                </ul>
            </div>

        <#--<#include "//syhd_management_failure.ftl">-->
            <div class="inner_div">

                <div align="center" class="wdrw_div inner_div_item" id="wdrw_div">
                    <div class="search_options" align="left" style="height: auto;margin-left: -20px">
                        <div class="space_div"></div>
                        <span>店铺名称：</span>
                        <select name="ww_id" id="ww_id" style="border: 1px solid #E8E8E8">
                            <option value="" selected>全部</option>
                            <option value="thinklittle旗舰店">1111111旗舰店</option>
                        </select>
                        <span>发布时间：</span>
                        <input type="text" class="input_text jsTime1" id="taskBeginTimestart" name="taskBeginTimestart">&nbsp;到&nbsp;
                        <input type="text" class="input_text jsTime2" id="taskBeginTimeend" name="taskBeginTimeend"><br>
                        <span>订单编号：</span><input type="text" class="input_text ddbh" name="payOrderNum">
                        <span>活动类型：</span>
                        <select name="saleTaskTypePlat" id="saleTaskTypePlat"
                                style="width: 100px;border: 1px solid #E8E8E8">
                            <option selected>全部</option>
                            <option>1111/1111</option>
                        </select>
                        <select name="saleTaskType" style="width: 130px;border: 1px solid #E8E8E8">
                            <option selected>全部</option>
                            <option class="tbtm hidden">淘宝/天猫深度试用活动</option>
                        </select>
                        <select style="width: 150px;border: 1px solid #E8E8E8">
                            <option selected>全部</option>
                            <option class="tbtm hidden">PC淘宝网taobao.com</option>
                            <option class="tbtm hidden">手机淘宝APP</option>
                        </select>
                        <br>
                        <span>活动编号：</span><input type="text" class="input_text rwbh" name="childTaskNum"
                                                 autocomplete="off">
                        <span>试客账号：</span><input type="text" class="input_text msww" name="buyerwwid">
                        <br>

                        <div align="left">
                            <input type="button" class="search_button" value="搜索"
                                   style="text-align: center;margin-top: 10px;margin-bottom: 10px;">
                        </div>
                    </div>

                    <div id="tabs" align="left">
                        <input type="hidden" id="systemTime" name="systemTime" value="1540190741463"/>
                        <ul class="tabs_ul" style="color: ;margin-top: 20px;margin-left: 15px;">
                            <li value="-1" id="defualt" class="tabsUnSeletedLi tabsSeletedLi"
                                style="line-height: 30px;">近三月<p>(<span id="threeMonthTask">1</span>)</li>
                            <li value="0" class="tabsUnSeletedLi" style="line-height: 30px;">待接手<p>(<span
                                    id="waitReceiveTask">2</span>)</li>
                            <li value="1" class="tabsUnSeletedLi" style="line-height: 30px;">进行中<p>(<span
                                    id="going">3</span>)</li>
                            <li value="14" class="tabsUnSeletedLi" style="line-height: 30px;">关闭审核<p>(<span
                                    id="closeExamine">4</span>)</li>
                            <li value="5" class="tabsUnSeletedLi" style="line-height: 30px;">待发货<p>(<span
                                    id="waitToDelivered">5</span>)</li>
                            <li value="6" class="tabsUnSeletedLi" style="line-height: 30px;">待收货/评价<p>(<span
                                    id="delivered">6</span>)</li>
                            <li value="7" class="tabsUnSeletedLi" style="line-height: 30px;">待返款<p>(<span id="waitCash">7</span>)
                            </li>
                            <li value="11" class="tabsUnSeletedLi" style="line-height: 30px;">已成功<p>(<span
                                    id="successTask">8</span>)</li>
                            <li value="12" class="tabsUnSeletedLi" style="line-height: 30px;">已失败<p>(<span
                                    id="failTask">9</span>)</li>
                        </ul>

                        <p class="waitToDeliveredP">可导出全部待发货订单，仔细核对旺旺号及订单编号，平台已标记垫付金额与实付金额不一致订单，请确认无误之后操作发货</p>
                        <p class="waitToDeliveredP">如找不到订单信息，可在待收货中查看是否已平台发货；拼多多未拼团成功的失效活动，请联系客服关闭</p>
                        <p class="waitCashP">如果试客的活动符合要求，请设置返款，平台将赏金打至试客账户。如果不符合要求，请联系客服!</p>
                        <div value="5" class="batch" style="display: none;background-color: #ffffff;">
                            <img src="/saleterrace/images/checkbox_unselected.png" class="checkbox checkbox_selectAll"
                                 style="margin:0 10px 0 32px" value="0" alt="">
                            <span class="batchAllSpan">全选</span><input type="button" class="checkbox_button"
                                                                       value="批量发货" onclick="bacthSendOrBack(5)">
                        </div>
                        <div value="7" class="batch" style="display: none;background-color: #ffffff;">
                            <img src="/saleterrace/images/checkbox_unselected.png" class="checkbox checkbox_selectAll"
                                 style="margin:0 10px 0 32px" value="0" alt="">
                            <span class="batchAllSpan">全选</span><input type="button" class="checkbox_button"
                                                                       value="批量返款" onclick="bacthSendOrBack(7)">
                        </div>

                        <div class="content_div">
                            <div class="list_div">
                                <div class="mission_div">
                                    <div class="mission_head">
                                        <div class="floatLeft shalfDiv">
                                            <img src="/saleterrace/images/checkbox_selected.png" class="checkbox"
                                                 value="0" id="6456939">
                                            <div style="width: 520px;margin-left: 55px;margin-top: -40px;"><b>子活动编号：111111-1111111111111-11111</b>
                                                <b id="taskTypeTime">发布时间：1111-11-11 11:11:11</b>
                                            </div>
                                        </div>
                                        <div class="floatLeft fhalfDiv" align="right">
        <span><b>订单编号：<span>111111111111111111</span></b>
        <input type="button" value="复制" class="copy_button" style="">
        <img src="/saleterrace/images/flag.png" class="flagImg" title="添加弹框">
        </span>
                                        </div>
                                    </div>
                                    <ul class="mission_ul" style="height: 100px">
                                        <li class="mission_li1">
                                            <div class="space_div"></div>
                                            <div class="bb_img">
                                                <img class="bb_img" src="/saleterrace/images/11.jpg"></div>
                                        </li>
                                        <li class="mission_li5">
                                            <div class="space_div"></div>
                                            <img src="/saleterrace/images/mobile_icon2.png"
                                                 style="margin-top: -4;margin-right: 4px;">手机端<br>手机淘宝
                                        </li>
                                        <li class="mission_li7">
                                            <div class="space_div"></div>
                                            店铺名称<br>
                                            <a title="thinklittle旗舰店" style="color: #7b8da0;">111111</a>
                                            <img src="/saleterrace/images/tmail_icon.png" class="sjTypeImg"
                                                 style="top: 0px;">
                                        </li>
                                        <li class="mission_li4">
                                            <div class="space_div"></div>
                                            下单数量<br>11
                                        </li>
                                        <li class="mission_li8" style="width:100px;">
                                            <div class="space_div"></div>
                                            垫付货款<br>11.1<br>
                                        </li>
                                        <li class="mission_li9">
                                            <div class="space_div"></div>
                                            活动总赏金<br>11.11
                                        </li>
                                        <li class="mission_li3">
                                            <div class="space_div"></div>
                                            买号要求<br>
                                            <img src="/saleterrace/images/b_blue_1.gif" alt="买家信誉"
                                                 style="margin-top: 5px">
                                        </li>
                                        <li class="mission_li8" style="width:128px;margin-top: 10px">
                                            <div class="space_div"></div>
                                            <img style="" src="/saleterrace/images/jsrw.png"><br>
                                            <img src="/saleterrace/images/zhu.png" title="主宝贝浏览见底">
                                            <img src="/saleterrace/images/ping.png" title="评价浏览">
                                            <img src="/saleterrace/images/liao.png" title="旺旺聊天">
                                            <img src="/saleterrace/images/scbb.png" title="收藏宝贝">
                                            <img src="/saleterrace/images/tjgwc.png" title="加入购物车"><br>
                                        </li>
                                        <li class="mission_li6">
                                            <div class="space_div"></div>
                                            试客旺旺<br>
                                            <span style="color: red">111111</span>
                                            <br><img src="/saleterrace/images/b_blue_3.gif" alt="买家信誉">
                                        </li>
                                        <li class="mission_li10">
                                            交易成功<br>
                                            <a class="aOpeara" href="#">查看详情</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div id="infoRows"></div>
                    </div>
                </div>

                <div class="wfbrw_div inner_div_item" id="wfbrw_div" style="display: none">
                    <div id="tabs" class="tabsDiv" style="height: 100%">
                        <ul class="tab_ul"
                            style="cursor: pointer;font-size: 18px;border: 0px solid #EFF0F4;margin-bottom: 0px;height: 50px">
                            <li value="2" class="activity activity1"
                                style="width: 200px;height: 49px;line-height: 49px">待编辑活动
                            </li>
                            <li value="3" class="activity" style="width: 200px;height: 49px;line-height: 49px">待付款活动
                            </li>
                            <li value="5" class="activity" style="width: 200px;height: 49px;line-height: 49px">定时活动</li>
                        </ul>
                        <div class="content_div" style="margin-top: 0px">
                            <div class="list_div" style="margin-top: 0px">
                                <div class="mission_div">
                                    <div class="mission_head" style="height: 52px">
                                        <img src="http://los8.youhui2014.com/asserts/images/checkbox_unselected.png"
                                             class="checkbox" style="float: left">
                                        <b style="margin-left: -370px">总活动编号：111111-1111111111111-111111</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <b>创建时间：1111-11-11 11:11:11</b>
                                    </div>
                                    <ul class="mission_ul" style="height: 100px;">
                                        <li class="mission_li1" style="width: 90px;height: 90px">
                                            <div class="space_div"></div>
                                            <div class="bb_img"><img class="bb_img"
                                                                     src="//img.alicdn.com/imgextra/i3/3401781611/O1CN011NlsVua6gLLcA2v_!!3401781611.jpg_150x150q90.jpg">
                                            </div>
                                        </li>
                                        <li class="mission_li5" style="width: 90px;height: 69px">
                                            <div class="space_div"></div>
                                            <img src="http://los8.youhui2014.com/asserts/images/mobile_icon2.png">手机端<p
                                                style="font-size: 12px;margin-top: -10px">手机淘宝</p>
                                        </li>
                                        <li class="mission_li7" style="width: 120px;height: 69px">
                                            <div class="space_div"></div>
                                            店铺名称
                                            <p><a title="thinklittle旗舰店" style="color: #7b8da0;">1111旗舰店</a>
                                                <img src="http://los8.youhui2014.com/asserts/images/rwdt/tmail_icon.png"
                                                     class="sjTypeImg" style="top: 0px;"></p>
                                        </li>
                                        <li class="mission_li4" style="width: 50px;height: 69px">
                                            <div class="space_div"></div>
                                            下单数量<p>1</p>
                                        </li>
                                        <li class="mission_li8" style="width: 100px;height: 69px">
                                            <div class="space_div"></div>
                                            垫付货款<p>11</p>
                                        </li>
                                        <li class="mission_li9" style="width: 72px;height: 69px">
                                            <div class="space_div"></div>
                                            活动赏金<p>11.11</p>
                                        </li>
                                        <li class="mission_li3" style="width: 100px;height: 58px;">
                                            <div class="space_div"></div>
                                            买号要求<p style="margin-top: 2px">
                                            <img src="https://img.alicdn.com/newrank/b_red_2.gif" alt="买家信誉"></p>
                                        </li>
                                        <li class="mission_li8" style="width: 122px;height: 47px">
                                            <div class="space_div"></div>
                                            <img src="/saleterrace/images/jsrw.png"
                                                 style="margin-top: 10px;margin-bottom: 2px">
                                            <p style="margin-top: 15px"><img
                                                    src="http://los8.youhui2014.com/asserts/images/rwty/zhu.png"
                                                    title="主宝贝浏览见底">
                                            </p>
                                        </li>
                                        <li class="mission_li6" style="width: 110px;height: 49px">
                                            <div class="space_div"></div>
                                            注意事项<br>
                                            <div class="dpww_div" style="border: 0px;height: 0px;width: 85px">
                                                <a title="" style="color: #000;"></a>
                                            </div>
                                        </li>
                                        <li class="mission_li10" style="width: 75px;height: 81px;margin-top: 10px">
                                            <div class="space_div"></div>
                                            <a href="#" class="aOpeara">编辑活动</a>
                                            <br><a href="#" class="aOpeara">付款发布</a>
                                            <br><a href="#" class="aOpeara">删除活动</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="content fbjl_div inner_div_item" id="fbjl_div" style="display: none">
                    <div class="fbjl">
                        <div class="search_div">
                            <div class="floatLeft field_div" align="right"
                                 style="margin-left: 30px;width: 253px;height: 100px;">
                                宝贝名称：<input type="text" name="itemtitle" class="input_text bb_name" value=""><br> 总活动编号：<input
                                    type="text" name="parenttask_num" value="" class="input_text zrwbh">
                            </div>
                            <div class="floatLeft" style="margin-left: 30px">
                                <div style="margin-top: 20px">
                                    发布时间：
                                    <input type="text" name="dateStart" value=""
                                           style="border: 1px solid #E8E8E8;color: black;height: 31px;width: 157px;">
                                    到 <input type="text" name="dateEnd"
                                             style="color: black;height: 31px;width: 157px;border: 1px solid #E8E8E8"
                                             value="">
                                </div>
                                <br>
                                <div style="height: 29px;margin-left: 50px">
                                    活动类别：
                                    <select name="saleTaskTypePlat" style="width: 100px;border: 1px solid #E8E8E8;">
                                        <option value="" selected="">全部</option>
                                        <option value="0">淘宝/天猫</option>
                                    </select>
                                    <select name="saleTaskType" style="width: 130px;border: 1px solid #E8E8E8;">
                                        <option value="" selected="">全部</option>
                                        <option value="0" class="tbtm hidden">淘宝/天猫普通活动</option>
                                        <option value="3" class="tbtm hidden">淘宝/天猫深度试用活动</option>
                                    </select>
                                    <select name="platform" style="width: 150px;border: 1px solid #E8E8E8;">
                                        <option value="" selected="">全部</option>
                                        <option value="0" class="tbtm hidden">PC淘宝网taobao.com</option>
                                        <option value="1" class="tbtm hidden">手机淘宝APP</option>
                                    </select>
                                </div>
                            </div>
                            <div class="floatLeft" align="right" style="width: 130px;height: 100px;">
                                <input type="button" value="搜索" class="search_button"
                                       style="margin-top: 62px;margin-left: 0px">
                            </div>
                        </div>
                    </div>

                    <div class="content_div">
                        <div class="head_operate_div">
                            <div class="floatLeft halfDiv" align="left" style="margin-left: 60px">
                                <input type="checkbox" class="allChk" value="on"> <b style="margin-left: 5px">全选</b>
                                <input type="button" class="delete_button" value="删除">
                            </div>
                        </div>

                        <div class="list_div">
                            <div class="mission_div">
                                <div class="mission_head">
                                    <input type="checkbox" name="" value="" style="margin-left: -230px">
                                    <b>总活动编号：111111-1111111111111-111111</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <b>创建时间：1111-11-11 11:11:11</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <b>关键字：1111111111</b>
                                </div>
                                <ul class="mission_ul">
                                    <li class="mission_li1">
                                        <div class="space_div"></div>
                                        <div class="bb_img">
                                            <img class="bb_img"
                                                 src="//img.alicdn.com/imgextra/i1/3401781611/TB2mpjculjTBKNjSZFwXXcG4XXa_!!3401781611-0-item_pic.jpg_150x150q90.jpg">
                                        </div>
                                    </li>
                                    <li class="mission_li5">
                                        <div class="space_div"></div>
                                        <img src="http://los8.youhui2014.com/asserts/images/mobile_icon2.png">手机端
                                        <br>手机淘宝
                                    </li>
                                    <li class="mission_li7">
                                        <div class="space_div"></div>
                                        店铺名称<br>
                                        <a title="thinklittle旗舰店" style="color: #7b8da0;">1111旗舰店</a>
                                        <img src="http://los8.youhui2014.com/asserts/images/rwdt/tmail_icon.png"
                                             class="sjTypeImg" style="margin-left: 0px;top: 0px">
                                    </li>
                                    <li class="mission_li4">
                                        <div class="space_div"></div>
                                        活动单数<br>1
                                    </li>
                                    <li class="mission_li8" style="width: 100px;">
                                        <div class="space_div"></div>
                                        垫付货款<br>11.1<br>
                                    </li>
                                    <li class="mission_li9">
                                        <div class="space_div"></div>
                                        活动总赏金<br>11.11
                                    </li>
                                    <li class="mission_li3">
                                        <div class="space_div"></div>
                                        买号要求<br>
                                        <img src="https://img.alicdn.com/newrank/b_blue_1.gif" alt="买家信誉">
                                    </li>
                                    <li class="mission_li8" style="width: 122px;">
                                        <div class="space_div"></div>
                                        <img style="margin-bottom: 2px" src="/saleterrace/images/jsrw.png"><br>
                                        <img src="http://los8.youhui2014.com/asserts/images/rwty/zhu.png"
                                             title="主宝贝浏览见底">
                                        <img src="http://los8.youhui2014.com/asserts/images/rwty/ping.png" title="评价浏览">
                                        <img src="http://los8.youhui2014.com/asserts/images/rwty/liao.png" title="旺旺聊天">
                                        <img src="http://los8.youhui2014.com/asserts/images/scbb.png" title="收藏宝贝">
                                        <img src="http://los8.youhui2014.com/asserts/images/tjgwc.png"
                                             title="加入购物车"><br>
                                    </li>
                                    <li class="mission_li6">
                                        <div class="space_div"></div>
                                        注意事项<br>
                                        <div class="dpww_div"><a title="" style="color: #000;"></a></div>
                                    </li>
                                    <li class="mission_li10" style="margin-top: -10px">
                                        <div class="space_div"></div>
                                        <a class="aOpeara" href="#">查看活动</a>
                                        <br><a class="aOpeara" href="#">复制活动</a>
                                        <br><a class="aOpeara" href="#">设置模板</a>
                                        <br><a href="#">删除活动</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="content fbjl_div inner_div_item" id="fbmb_div" style="display: none">
                    <div class="fbjl1">
                        <div class="search_div">
                            <div class="floatLeft field_div" align="right"
                                 style="margin-left: 30px;width: 253px;height: 100px;">
                                宝贝名称：<input type="text" name="itemtitle" class="input_text bb_name" value=""><br> 总活动编号：<input
                                    type="text" name="parenttask_num" value="" class="input_text zrwbh">
                            </div>
                            <div class="floatLeft" style="margin-left: 30px">
                                <div style="margin-top: 20px">
                                    发布时间：
                                    <input type="text" name="dateStart" value=""
                                           style="border: 1px solid #E8E8E8;color: black;height: 31px;width: 157px;">
                                    到
                                    <input type="text" name="dateEnd"
                                             style="color: black;height: 31px;width: 157px;border: 1px solid #E8E8E8"
                                             value="">
                                </div>
                                <br>
                                <div style="height: 29px;margin-left: 50px">
                                    活动类别：
                                    <select name="saleTaskTypePlat" style="width: 100px;border: 1px solid #E8E8E8;">
                                        <option value="" selected="">全部</option>
                                        <option value="0">淘宝/天猫</option>
                                    </select>
                                    <select name="saleTaskType" style="width: 130px;border: 1px solid #E8E8E8;">
                                        <option value="" selected="">全部</option>
                                        <option value="0" class="tbtm hidden">淘宝/天猫普通活动</option>
                                        <option value="3" class="tbtm hidden">淘宝/天猫深度试用活动</option>
                                    </select>
                                    <select name="platform" style="width: 150px;border: 1px solid #E8E8E8;">
                                        <option value="" selected="">全部</option>
                                        <option value="0" class="tbtm hidden">PC淘宝网taobao.com</option>
                                        <option value="1" class="tbtm hidden">手机淘宝APP</option>
                                    </select>
                                </div>
                            </div>
                            <div class="floatLeft" align="right" style="width: 130px;height: 100px;">
                                <input type="button" value="搜索" class="search_button"
                                       style="margin-top: 62px;margin-left: 0px">
                            </div>
                        </div>
                    </div>
                <#--<div class="content_div"></div>-->
                    <div id="infoRows">
                        <ul class="lists_info_ul">
                            <li class="no_data">暂无数据</li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="Content-Space-h"></div>
<div class="Clear">
    <!--如何你上面用到float,下面布局开始前最好清除一下。-->
</div>

    <#include "//modal.ftl">

<#--<#include "//modal_js.ftl">-->
</body>
    <#include "//footer_js.ftl">
</html>
