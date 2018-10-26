/*!  2018-10-22 */

function saleTaskTypeImg(a) {
    var b = "";
    switch (a.saleTaskType) {
        case 1:
            b += "<img style='margin-bottom: 2px' src='/asserts/images/ysrw.png' title='先加购物车，" + getDelayTime(a.payInterval) + "后下单购买'><br>";
            break;
        case 2:
            b += "<img style='margin-bottom: 2px' src='/asserts/images/tbrw.png' title='通过" + getSaleType(a.task_type) + "访问购买'>",
            a.payInterval > 0 && (b += "<img style='margin-bottom: 2px' src='/asserts/images/ysrw.png' title='先加购物车，" + getDelayTime(a.payInterval) + "后下单购买'>"),
                b += "<br>";
            break;
        case 3:
            b += "<img style='margin-bottom: 2px' src='/asserts/images/jsrw.png'>",
            a.payInterval > 0 && (b += "<img style='margin-bottom: 2px' src='/asserts/images/ysrw.png' title='先加购物车，" + getDelayTime(a.payInterval) + "后下单购买'>"),
                b += "<br>";
            break;
        case 4:
            b += "<img style='margin-bottom: 2px' src='/asserts/images/repurchase.png' title='通过" + getSaleType(a.task_type) + "访问购买'>",
            a.payInterval > 0 && (b += "<img style='margin-bottom: 2px' src='/asserts/images/ysrw.png' title='先加购物车，" + getDelayTime(a.payInterval) + "后下单购买'>"),
                b += "<br>";
            break;
        case 5:
            b += "<img style='margin-bottom: 2px' src='/asserts/images/ask_everybody.png' title='通过" + getSaleType(a.task_type) + "访问购买'>",
            a.payInterval > 0 && (b += "<img style='margin-bottom: 2px' src='/asserts/images/ysrw.png' title='先加购物车，" + getDelayTime(a.payInterval) + "后下单购买'>"),
                b += "<br>";
            break;
        case 6:
            b += "<img style='margin-bottom: 2px' src='/asserts/images/gjyl.png'>",
            a.payInterval > 0 && (b += "<img style='margin-bottom: 2px' src='/asserts/images/ysrw.png' title='先加购物车，" + getDelayTime(a.payInterval) + "后下单购买'>"),
                b += "<br>";
            break;
        case 99:
            a.payInterval > 0 && (b += "<img style='margin-bottom: 2px' src='/asserts/images/ysrw.png' title='先加购物车，" + getDelayTime(a.payInterval) + "后下单购买'><br>");
            break;
        case 7:
            b += "<img style='margin-bottom: 2px' src='/asserts/images/guess_you_like.png'><br>",
            a.payInterval > 0 && (b += "<img style='margin-bottom: 2px' src='/asserts/images/ysrw.png' title='先加购物车，" + getDelayTime(a.payInterval) + "后下单购买'><br>")
    }
    return b
}
function scanDemandList(a, b) {
    var c = "";
    if (a)
        for (var d = a.split(","), e = 0; e < d.length; e++)
            for (var f = 0; f < pngArray.length; f++)
                d[e] != titleArray[f] || (c += '<img src="' + pngArray[f] + '" title="' + ("次宝贝浏览" == titleArray[f] ? "店内其他宝贝浏览" : titleArray[f]) + '">');
    return c
}
function taskTypePlat(a) {
    var b = (0 == a.platform ? '<img src="' + getRootPath() + '/asserts/images/pc_icon2.png">电脑端' : 1 == a.platform ? '<img src="' + getRootPath() + '/asserts/images/mobile_icon2.png">手机端' : "") + "<br>";
    return 99 == a.saleTaskType ? b += 0 == a.task_type ? "京东搜索" : 1 == a.task_type ? "手机京东" : "" : 98 == a.saleTaskType ? b += 0 == a.task_type ? "拼多多搜索" : 1 == a.task_type ? "拼多多" : "" : 5 == a.saleTaskType ? b += 0 == a.task_type ? "答题活动" : 1 == a.task_type ? "提问活动" : "" : 7 == a.saleTaskType ? b += 0 == a.task_type ? "手淘首页" : 1 == a.task_type ? "手淘ifashion" : "" : b += 0 == a.task_type ? "淘宝搜索" : 1 == a.task_type ? "手机淘宝" : 2 == a.task_type ? "收藏加购" : 11 == a.task_type ? "淘宝客" : 12 == a.task_type ? "淘口令" : 13 == a.task_type ? "聚划算" : 14 == a.task_type ? "淘抢购" : 15 == a.task_type ? "淘金币" : 16 == a.task_type ? "天天特价" : 17 == a.task_type ? "自定义入口" : "",
        b
}
function getBuyerGrade(a) {
    if (!a)
        return "";
    switch (a) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            return '<img src="https://img.alicdn.com/newrank/b_red_' + a + '.gif" alt="买家信誉" />';
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
            return '<img src="https://img.alicdn.com/newrank/b_blue_' + (a - 5) + '.gif" alt="买家信誉" />';
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
            return '<img src="https://img.alicdn.com/newrank/s_crown_' + (a - 10) + '.gif" alt="买家信誉" />';
        case 20:
            return '<u class="jd-level1"></u>';
        case 21:
            return '<u class="jd-level2" ></u>';
        case 22:
            return '<u class="jd-level3" ></u>';
        case 23:
            return '<u class="jd-level4" ></u>';
        case 24:
            return '<u class="jd-level5" ></u>';
        default:
            return ""
    }
}
function transform(a) {
    return a ? 0 == a.indexOf("/") || 0 == a.indexOf("http") ? 0 == a.indexOf("/task") ? getCosRootPath() + a + "!small80" : a : getCosRootPath() + "/" + a + "!small80" : getCosRootPath()
}
function rightShow(a, b, c, d, e) {
    switch (a) {
        case -1:
        case 0:
            b = "<b>活动失效时间：<span style='color:red' class='order'>" + new Date(c.taskExpireTime).Format("yyyy-MM-dd HH:mm:ss") + "<img src='/asserts/images/help-01-15.png'><div class='detail'>活动在失效时间前若无试客接手将自动关闭!</div></span></b>";
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            switch (c.saleTaskType) {
                case 1:
                case 2:
                case 3:
                case 6:
                case 7:
                case 99:
                    c.payInterval > 0 ? 1 == c.workType ? b = "<b>平台分配<span style='color:red' class='order1'><img src='/asserts/images/help-01-15.png'><div class='detail1'>该活动已自动接入平台分配，将由我们的线下合作方在17：30后统一处理，次日14：00前完成活动上传，若有疑问请联系平台客服。</div></span></b>" : 0 == c.workType && (a < 4 ? b = c.donetime ? "<b>加购倒计时：<span style='color:red' class='order2'>" + countDownString(c.receiveTaskTime, c.donetime, e) + "<img src='/asserts/images/help-01-15.png'><div class='detail2' style='width: 370px;margin-left: -10px;'>商家设置了加购完成时间，即试客从接手到把宝贝加入购物车需在规定时间内完成，否则活动将自动释放回活动大厅！</div></span></b>" : "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : 4 == a && (b = compareTime(c.browseOverTime, c.payInterval, e) ? c.payInterval ? "<b>下单倒计时：<span style='color:red' class='order2'>" + countDownString(c.browseOverTime, c.payInterval, e) + "<img src='/asserts/images/help-01-15.png'><div class='detail2' style='width: 245px;margin-left: 113px;'>宝贝在倒计时结束后才可操作下单购买!</div></span></b>" : "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : c.payInterval ? "<b>活动付款倒计时：<span style='color:red' class='order2'>" + countDownString(c.browseOverTime, c.payInterval + 720, e) + "<img src='/asserts/images/help-01-15.png'><div class='detail2'  style='width: 252px;margin-left: 107px;'>试客需在规定时间内完成下单购买，否则活动将自动关闭，赏金全部退还商家。</div></span></b>" : "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">')) : 1 == c.workType ? b = "<b id='taskCancelTime'>平台分配<span style='color:red' class='order1'><img src='/asserts/images/help-01-15.png'><div class='detail1'>该活动已自动接入平台分配，将由我们的线下合作方在17：30后统一处理，次日14：00前完成活动上传，若有疑问请联系平台客服。</div></span></b>" : 0 == c.workType && (b = c.donetime ? "<b id='taskCancelTime'>活动付款倒计时：<span style='color:red' class='order2'>" + countDownString(c.receiveTaskTime, c.donetime, e) + "<img src='/asserts/images/help-01-15.png'><div class='detail2'>你设置了活动完成时间，即从接手到付款需在规定时间完成，否则活动将自动释放回活动大厅!</div></span></b>" : '<b id="taskCancelTime"><b>订单编号：<span>' + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框"></b>');
                    break;
                default:
                    1 == c.workType ? b = "<b id='taskCancelTime'>平台分配<span style='color:red' class='order1'><img src='/asserts/images/help-01-15.png'><div class='detail1'>该活动已自动接入平台分配，将由我们的线下合作方在17：30后统一处理，次日14：00前完成活动上传，若有疑问请联系平台客服。</div></span></b>" : 0 == c.workType && (b = c.donetime ? "<b id='taskCancelTime'>活动付款倒计时：<span style='color:red' class='order2'>" + countDownString(c.receiveTaskTime, c.donetime, e) + "<img src='/asserts/images/help-01-15.png'><div class='detail2'>你设置了活动完成时间，即从接手到付款需在规定时间完成，否则活动将自动释放回活动大厅!</div></span></b>" : '<b id="taskCancelTime"><b>订单编号：<span>' + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框"></b>')
            }
            d = '<li class="mission_li6"><div class="space_div"></div>注意事项<br><div class="dpww_div"><a title="' + (c.memoMsg ? c.memoMsg : "") + '" style="color: #000;">' + (c.memoMsg ? c.memoMsg.length > 12 ? c.memoMsg.substring(0, 12) + "..." : c.memoMsg : "") + "</a></div></li>";
            break;
        case 14:
            b = c.delicateDelayBackTime ? "<b id='taskCancelTime'>" + (c.rejectCloseTime ? "活动审核处理倒计时" : "活动审核倒计时") + "：<span style='color:red' class='order2'>" + countDownStringClose(e, c.rejectCloseTime ? c.rejectCloseTime : c.delicateDelayBackTime) + "<img src='/asserts/images/help-01-15.png'><div class='detail2' style='width: 260px;margin-left: 97px;'>试客申请关闭活动，需在规定时间完成关闭审核，否则活动将自动释放回活动大厅!</div></span></b>" : '<b id="taskCancelTime"><b>订单编号：<span>' + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框"></b>';
            break;
        default:
            var f = "";
            f = c.expressCode ? c.expressOrderNum ? "<b>空包快递单号：<span>" + c.expressOrderNum + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : '<b>空包快递单号：<span>待生成</span></b><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : '<b>商家自邮</b><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">',
                b = c.taskStatus > 4 ? 6 == c.taskStatus ? f : "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : ""
    }
    var g = new Object;
    return g.headTemp = b,
        g.tailTemp = d,
        g
}
function countDownString(a, b, c) {
    var d = ""
        , e = new Date(a)
        , f = 60 * b * 1e3 - (c - e.getTime())
        , g = Math.floor(f / 864e5)
        , h = f % 864e5
        , i = Math.floor(h / 36e5)
        , j = h % 36e5
        , k = Math.floor(j / 6e4);
    return 0 != g && (d += g + "天"),
    0 != i && (d += i + "小时"),
        d += k + "分"
}
function showShopName(a) {
    return (a.storeName ? a.storeName.length > 12 ? a.storeName.substring(0, 12) + "..." : a.storeName : "") + "</a>" + (1 == a.storeType || 2 == a.storeType ? '<img src="' + getRootPath() + '/asserts/images/rwdt/tb_icon.png" class="sjTypeImg">' : 3 == a.storeType ? '<img src="' + getRootPath() + '/asserts/images/rwdt/tmail_icon.png" class="sjTypeImg">' : 4 == a.storeType ? '<img src="' + getRootPath() + '/asserts/images/rwdt/i16_jd.png" class="sjTypeImg">' : '<img src="' + getRootPath() + '/asserts/images/rwdt/pin.png" class="sjTypeImg">')
}
function compareTime(a, b, c) {
    return !(c - a - 60 * b * 1e3 > 0)
}
function returnAdminBuyerDetailHtml(a, b) {
    var c = '<div class="list_div">'
        , d = ""
        , e = a.taskStatus
        , f = ""
        , g = "";
    g = e > 0 && e < 12 ? '<li class="mission_li6"><div class="space_div"></div>' + buyerAccountShow(a.saleTaskType) + "<br>" + (e < 5 ? '<span style="color: #00000b">进行中</span>' : '<span style="color: red">' + (a.buyerwwid ? a.buyerwwid : "") + "</span><br>" + (a.wwCreditLevel ? getBuyerGrade(a.wwCreditLevel) : "")) + "</li>" : '<li class="mission_li6"><div class="space_div"></div>注意事项<br><div class="dpww_div"><a title="' + (a.memoMsg ? a.memoMsg : "") + '" style="color: #000;">' + (a.memoMsg ? a.memoMsg.length > 12 ? a.memoMsg.substring(0, 12) + "..." : a.memoMsg : "") + "</a></div></li>";
    var h = 0
        , i = 0
        , j = "";
    j += 1 == a.evaluateGood ? '<img src="' + PJArray[0] + '"><br>' : "",
        j += 1 == a.evaluateZj ? '<img src="' + PJArray[1] + '"><br>' : "",
        j += 1 == a.evaluatePic ? '<img src="' + PJArray[2] + '">' : "";
    var k = saleTaskTypeImg(a);
    switch (h = a.childTaskCommissionForBuyer,
        i = a.childTaskAddCommissionForBuyer,
        e) {
        case -1:
        case 0:
            f = timeShow("发布时间", a.taskBeginTime),
                d = "";
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            f = timeShow("接手时间", a.receiveTaskTime);
            break;
        case 5:
            switch (f = timeShow("付款时间", a.payTime),
                a.saleTaskType) {
                case 1:
                case 2:
                case 3:
                case 6:
                case 7:
                case 99:
                    a.payInterval > 0 ? 1 == a.workType ? d = "<b>平台分配<span style='color:red' class='order1'><img src='/asserts/images/help-01-15.png'><div class='detail1'>该活动已自动接入平台分配，将由我们的线下合作方在17：30后统一处理，次日14：00前完成活动上传，若有疑问请联系平台客服。</div></span></b>" : 0 == a.workType && (e < 4 ? d = a.donetime ? "<b>加购倒计时：<span style='color:red' class='order2'>" + countDownString(a.receiveTaskTime, a.donetime, b) + "<img src='/asserts/images/help-01-15.png'><div class='detail2' style='width: 370px;margin-left: -10px;'>商家设置了加购完成时间，即试客从接手到把宝贝加入购物车需在规定时间内完成，否则活动将自动释放回活动大厅！</div></span></b>" : "<b>订单编号：<span>" + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : 4 == e && (d = compareTime(a.browseOverTime, a.payInterval, b) ? a.payInterval ? "<b>下单倒计时：<span style='color:red' class='order2'>" + countDownString(a.browseOverTime, a.payInterval, b) + "<img src='/asserts/images/help-01-15.png'><div class='detail2' style='width: 245px;margin-left: 113px;'>宝贝在倒计时结束后才可操作下单购买!</div></span></b>" : "<b>订单编号：<span>" + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : a.payInterval ? "<b>活动付款倒计时：<span style='color:red' class='order2'>" + countDownString(a.browseOverTime, a.payInterval + 720, b) + "<img src='/asserts/images/help-01-15.png'><div class='detail2'  style='width: 252px;margin-left: 107px;'>试客需在规定时间内完成下单购买，否则活动将自动关闭，赏金全部退还商家。</div></span></b>" : "<b>订单编号：<span>" + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">')) : 1 == a.workType ? d = "<b id='taskCancelTime'>平台分配<span style='color:red' class='order1'><img src='/asserts/images/help-01-15.png'><div class='detail1'>该活动已自动接入平台分配，将由我们的线下合作方在17：30后统一处理，次日14：00前完成活动上传，若有疑问请联系平台客服。</div></span></b>" : 0 == a.workType && (d = a.donetime ? "<b id='taskCancelTime'>活动付款倒计时：<span style='color:red' class='order2'>" + countDownString(a.receiveTaskTime, a.donetime, b) + "<img src='/asserts/images/help-01-15.png'><div class='detail2'>你设置了活动完成时间，即从接手到付款需在规定时间完成，否则活动将自动释放回活动大厅!</div></span></b>" : '<b id="taskCancelTime"><b>订单编号：<span>' + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框"></b>');
                    break;
                default:
                    1 == a.workType ? d = "<b id='taskCancelTime'>平台分配<span style='color:red' class='order1'><img src='/asserts/images/help-01-15.png'><div class='detail1'>该活动已自动接入平台分配，将由我们的线下合作方在17：30后统一处理，次日14：00前完成活动上传，若有疑问请联系平台客服。</div></span></b>" : 0 == a.workType && (d = a.donetime ? "<b id='taskCancelTime'>活动付款倒计时：<span style='color:red' class='order2'>" + countDownString(a.receiveTaskTime, a.donetime, b) + "<img src='/asserts/images/help-01-15.png'><div class='detail2'>你设置了活动完成时间，即从接手到付款需在规定时间完成，否则活动将自动释放回活动大厅!</div></span></b>" : '<b id="taskCancelTime"><b>订单编号：<span>' + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框"></b>')
            }
            g = '<li class="mission_li6"><div class="space_div"></div>注意事项<br><div class="dpww_div"><a title="' + (a.memoMsg ? a.memoMsg : "") + '" style="color: #000;">' + (a.memoMsg ? a.memoMsg.length > 12 ? a.memoMsg.substring(0, 12) + "..." : a.memoMsg : "") + "</a></div></li>";
            break;
        case 6:
            f = timeShow("发货时间", a.sandGoodsTime),
                d = showTaskOrder(a);
            break;
        case 7:
        case 8:
            f = timeShow("评论时间", a.evaluateTime),
                d = showTaskOrder(a);
            break;
        case 9:
        case 10:
            d = showTaskOrder(a);
            break;
        case 11:
            f = timeShow("成功时间", a.dealCompleteTime),
                d = showTaskOrder(a);
            break;
        case 12:
            f = timeShow("发布时间", a.taskBeginTime),
                d = showTaskOrder(a);
            break;
        case 14:
            f = timeShow("接手时间", a.receiveTaskTime),
                d = showTaskOrder(a)
    }
    return d += '<b id="taskParentNumShow" style="display: none">总活动编号：<span>' + a.parentTaskNum + "</span></b>",
        c += '<div class="mission_div"><div class="mission_head"><div class="floatLeft shalfDiv" align="left"><img src="' + getRootPath() + '/asserts/images/checkbox_unselected.png" class="checkbox" value="0" id="' + a.id + '"><b>子活动编号：' + a.childTaskNum + "</b>" + f + '</div><div class="floatLeft fhalfDiv" align="right">' + d + '</div></div><ul class="mission_ul"><li class="mission_li1"><div class="space_div"></div><div class="bb_img"><img class="bb_img" src="' + transform(a.item_picurl) + '"></div></li><li class="mission_li5"><div class="space_div"></div>' + taskTypePlat(a) + '</li><li class="mission_li7"><div class="space_div"></div>店铺名称<br><a title="' + (a.storeName ? a.storeName : "") + '" style="color: #7b8da0;">' + showShopName(a) + '</li><li class="mission_li4"><div class="space_div"></div>下单数量<br>' + a.item_num + '</li><li class="mission_li8" style="width: 100px;"><div class="space_div"></div>垫付货款<br>' + a.childTaskDeposit + '<br></li><li class="mission_li9"><div class="space_div"></div>活动赏金<br>' + (h + i + a.addTip).toFixed(2) + '</li><li class="mission_li3"><div class="space_div"></div>' + sellerBuyerAccountShow(a.saleTaskType) + "<br>" + getBuyerGrade(a.buyergrade) + '</li><li class="mission_li8" style="width: 128px;"><div class="space_div"></div>' + k + scanDemandList(a.scan_demand, 0) + "<br>" + j + "</li>" + g + '<li class="mission_li10"><div class="space_div"></div>' + getBuyerDetailStatusString(a.taskStatus, a.evaluateTime, a.sandGoodsTime, a.addEvaluationImg, a.evaluateZj) + "</li></ul></div>",
        c += "</div>"
}
function timeShow(a, b) {
    return '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b id="taskTypeTime">' + a + "：" + new Date(b).Format("yyyy-MM-dd HH:mm:ss") + "</b>"
}
function showTaskOrder(a) {
    return '<b id="taskCancelTime"><b>订单编号：<span>' + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框"></b>'
}
function getBuyerDetailStatusString(a, b, c, d, e) {
    switch (a) {
        case 0:
            return "等待买家接手";
        case 1:
        case 2:
        case 3:
        case 4:
            return "进行中";
        case 5:
            return "买家已付款";
        case 6:
            return "待收货";
        case 7:
        case 8:
        case 9:
        case 10:
            return c ? b ? 1 != e || d || 9 == a ? "待返款" : "待追评" : "待收货" : "买家已付款 ";
        case 11:
            return "交易成功";
        case 12:
        case 13:
            return "交易失败";
        case 14:
            return "试客关闭活动";
        default:
            return ""
    }
}
function showAllShopName(a) {
    return 1 == a.storeType || 2 == a.storeType ? '<img src="' + getRootPath() + '/asserts/images/rwdt/tb_icon.png" class="sjTypeImg">' : 3 == a.storeType ? '<img src="' + getRootPath() + '/asserts/images/rwdt/tmail_icon.png" class="sjTypeImg">' : 4 == a.storeType ? '<img src="' + getRootPath() + '/asserts/images/rwdt/i16_jd.png" class="sjTypeImg">' : '<img src="' + getRootPath() + '/asserts/images/rwdt/pin.png" class="sjTypeImg">'
}
function expressFee(a) {
    return "TT" == a.expressCode ? parseInt($("#expressCodeFeeTT").val()) : "QF" == a.expressCode ? parseInt($("#expressCodeFeeQF").val()) : 0
}
function formToJson(a) {
    var b = {}
        , c = a.serializeArray();
    return $.each(c, function() {
        this.value && (b[this.name] ? (b[this.name].push || (b[this.name] = [b[this.name]]),
            b[this.name].push(this.value || null)) : $("[name='" + this.name + "']:checkbox", a).length ? b[this.name] = [this.value] : b[this.name] = this.value || null)
    }),
        b
}
function buyerRightShow(a, b, c, d, e, f) {
    switch (a) {
        case -1:
        case 0:
            b = "";
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            switch (c.saleTaskType) {
                case 1:
                case 2:
                case 3:
                case 6:
                case 7:
                case 99:
                    c.payInterval > 0 ? a < 4 ? b = "true" == f ? "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : c.donetime ? "<b>加购倒计时：<span style='color:red' class='order'>" + countDownString(c.receiveTaskTime, c.donetime, e) + "<img src='/asserts/images/help-01-15.png'><div class='detail'  style='width: 370px;margin-left: -10px;'>商家设置了加购完成时间，即试客从接手到把宝贝加入购物车需在规定时间内完成，否则活动将自动释放回活动大厅！</div></span></b>" : "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : 4 == a && (b = compareTime(c.browseOverTime, c.payInterval, e) ? "true" == f ? "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : c.payInterval ? "<b>下单倒计时：<span style='color:red' class='order'>" + countDownString(c.browseOverTime, c.payInterval, e) + "<img src='/asserts/images/help-01-15.png'><div class='detail'  style='width: 245px;margin-left: 113px;'>宝贝在倒计时结束后才可操作下单购买!</div></span></b>" : "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : "true" == f ? "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : c.payInterval ? "<b>活动付款倒计时：<span style='color:red' class='order'>" + countDownString(c.browseOverTime, c.payInterval + 720, e) + "<img src='/asserts/images/help-01-15.png'><div class='detail'  style='width: 252px;margin-left: 107px;'>试客需在规定时间内完成下单购买，否则活动将自动关闭，赏金全部退还商家。</div></span></b>" : "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">') : b = "true" == f ? "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : c.donetime ? "<b>活动付款倒计时：<span style='color:red' class='order'>" + countDownString(c.receiveTaskTime, c.donetime, e) + "<img src='/asserts/images/help-01-15.png'><div class='detail'>商家设置了完成时间，即从接手到付款需在规定时间完成，否则活动将失效并自动释放回活动大厅！</div></span></b>" : "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">';
                    break;
                default:
                    b = "true" == f ? "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : c.donetime ? "<b>活动付款倒计时：<span style='color:red' class='order'>" + countDownString(c.receiveTaskTime, c.donetime, e) + "<img src='/asserts/images/help-01-15.png'><div class='detail'>商家设置了完成时间，即从接手到付款需在规定时间完成，否则活动将失效并自动释放回活动大厅！</div></span></b>" : "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">'
            }
            d = '<li class="mission_li6"><div class="space_div"></div>注意事项<br><div class="dpww_div"><a title="' + (c.memoMsg ? c.memoMsg : "") + '" style="color: #000;">' + (c.memoMsg ? c.memoMsg.length > 12 ? c.memoMsg.substring(0, 12) + "..." : c.memoMsg : "") + "</a></div></li>";
            break;
        case 14:
            b = c.delicateDelayBackTime ? "<b id='taskCancelTime'>" + (c.rejectCloseTime ? "活动审核处理倒计时" : "活动审核倒计时") + "：<span style='color:red' class='order'>" + countDownStringClose(e, c.rejectCloseTime ? c.rejectCloseTime : c.delicateDelayBackTime) + "<img src='/asserts/images/help-01-15.png'><div class='detail'>你申请关闭该活动，即从你关闭活动后商家需在规定时间完成，否则活动将自动释放回活动大厅!</div></span></b>" : '<b id="taskCancelTime"><b>订单编号：<span>' + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框"></b>';
            break;
        default:
            b = a > 4 ? "<b>订单编号：<span>" + (c.payOrderNum ? c.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : ""
    }
    var g = new Object;
    return g.headTemp = b,
        g.tailTemp = d,
        g
}
function sellerBuyerAccountShow(a) {
    return 99 == a ? "账号要求" : "买号要求"
}
function buyerAccountShow(a) {
    return 99 == a ? "试客账号" : "试客旺旺"
}
$(function() {
    $("#saleTaskType").bind("change", function() {
        var a = $(this).val();
        return $("#platform").val(""),
            "" == a ? ($("#platform option.jd").addClass("hidden"),
                $("#platform option.tbtm").addClass("hidden"),
                $("#platform option.pdd").addClass("hidden")) : 99 == a ? ($("#platform option.tbtm").addClass("hidden"),
                $("#platform option.pdd").addClass("hidden"),
                $("#platform option.jd").removeClass("hidden")) : 98 == a ? ($("#platform option.tbtm").addClass("hidden"),
                $("#platform option.jd").addClass("hidden"),
                $("#platform option.pdd").removeClass("hidden")) : ($("#platform option.jd").addClass("hidden"),
                $("#platform option.pdd").addClass("hidden"),
                $("#platform option.tbtm").removeClass("hidden"),
            $(this).find("option:selected").hasClass("askEverybody") && $("#platform option.tbtm").addClass("hidden")),
            !1
    }),
        $("#saleTaskTypePlat").bind("change", function() {
            $("#saleTaskType").val(""),
                $("#platform").val("");
            var a = $(this).val();
            return "" == a ? ($("#saleTaskType option.tbtm").addClass("hidden"),
                $("#saleTaskType option.jd").addClass("hidden"),
                $("#saleTaskType option.pdd").addClass("hidden"),
                $("#platform option.tbtm").addClass("hidden"),
                $("#platform option.jd").addClass("hidden"),
                $("#platform option.pdd").addClass("hidden")) : 0 == a ? ($("#saleTaskType option.jd").addClass("hidden"),
                $("#saleTaskType option.pdd").addClass("hidden"),
                $("#saleTaskType option.tbtm").removeClass("hidden"),
                $("#platform option.tbtm").addClass("hidden"),
                $("#platform option.jd").addClass("hidden"),
                $("#platform option.pdd").addClass("hidden")) : 1 == a ? ($("#saleTaskType option.tbtm").addClass("hidden"),
                $("#saleTaskType option.pdd").addClass("hidden"),
                $("#saleTaskType option.jd").removeClass("hidden"),
                $("#platform option.tbtm").addClass("hidden"),
                $("#platform option.jd").addClass("hidden"),
                $("#platform option.pdd").addClass("hidden")) : 2 == a && ($("#saleTaskType option.tbtm").addClass("hidden"),
                $("#saleTaskType option.jd").addClass("hidden"),
                $("#saleTaskType option.pdd").removeClass("hidden"),
                $("#platform option.tbtm").addClass("hidden"),
                $("#platform option.jd").addClass("hidden"),
                $("#platform option.pdd").addClass("hidden")),
                !1
        })
}),
    Date.prototype.Format = function(a) {
        var b = {
            "M+": this.getMonth() + 1,
            "d+": this.getDate(),
            "H+": this.getHours(),
            "m+": this.getMinutes(),
            "s+": this.getSeconds(),
            "q+": Math.floor((this.getMonth() + 3) / 3),
            S: this.getMilliseconds()
        };
        /(y+)/.test(a) && (a = a.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length)));
        for (var c in b)
            new RegExp("(" + c + ")").test(a) && (a = a.replace(RegExp.$1, 1 == RegExp.$1.length ? b[c] : ("00" + b[c]).substr(("" + b[c]).length)));
        return a
    }
;
var pngArray = [getRootPath() + "/asserts/images/rwty/bi.png", getRootPath() + "/asserts/images/rwty/zhu.png", getRootPath() + "/asserts/images/rwty/ci.png", getRootPath() + "/asserts/images/wdj.png", getRootPath() + "/asserts/images/rwty/liao.png", getRootPath() + "/asserts/images/rwty/liao.png", getRootPath() + "/asserts/images/rwty/ping.png", getRootPath() + "/asserts/images/scbb.png", getRootPath() + "/asserts/images/scdp.png", getRootPath() + "/asserts/images/tjgwc.png", getRootPath() + "/asserts/images/rwty/wdj.png", getRootPath() + "/asserts/images/rwty/xdbfk.png"]
    , PJArray = [getRootPath() + "/asserts/images/wzhp.png", getRootPath() + "/asserts/images/xyzp.png", getRootPath() + "/asserts/images/twhp.png"]
    , titleArray = ["货比三家", "主宝贝浏览见底", "次宝贝浏览", "京东问答", "客服聊天", "旺旺聊天", "评价浏览", "收藏宝贝", "收藏店铺", "加入购物车", "问大家浏览", "下单不付款"];
