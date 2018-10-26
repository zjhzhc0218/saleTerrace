/*!  2018-10-22 */

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
function countDownStringClose(a, b) {
    var c = ""
        , d = b - a
        , e = Math.floor(d / 864e5)
        , f = d % 864e5
        , g = Math.floor(f / 36e5)
        , h = f % 36e5
        , i = Math.floor(h / 6e4);
    return 0 != e && (c += e + "天"),
    0 != g && (c += g + "小时"),
        c += i + "分"
}
function isDiff(a, b) {
    return a.actualPayMoney && a.actualPayMoney != a.childTaskDeposit && (b = "style='background: url(/asserts/images/price_diff.png) no-repeat center 85px;'"),
        b
}
function returnHtml(a, b, c, d) {
    var e = '<div class="list_div">'
        , f = ""
        , g = a.taskStatus
        , h = ""
        , i = "";
    i = g > 0 && g < 12 ? '<li class="mission_li6"><div class="space_div"></div>' + buyerAccountShow(a.saleTaskType) + "<br>" + (g < 5 ? '<span style="color: #00000b">进行中</span>' : '<span style="color: red">' + (a.buyerwwid ? a.buyerwwid : "") + "</span><br>" + (a.wwCreditLevel ? getBuyerGrade(a.wwCreditLevel) : "")) + "</li>" : '<li class="mission_li6"><div class="space_div"></div>注意事项<br><div class="dpww_div"><a title="' + (a.memoMsg ? a.memoMsg : "") + '" style="color: #000;">' + (a.memoMsg ? a.memoMsg.length > 12 ? a.memoMsg.substring(0, 12) + "..." : a.memoMsg : "") + "</a></div></li>";
    var j = 0
        , k = 0
        , l = 0
        , m = "";
    m += 1 == a.evaluateGood ? '<img src="' + PJArray[0] + '"><br>' : "",
        m += 1 == a.evaluateZj ? '<img src="' + PJArray[1] + '"><br>' : "",
        m += 1 == a.evaluatePic ? '<img src="' + PJArray[2] + '">' : "";
    var n = ""
        , o = ""
        , p = ""
        , q = saleTaskTypeImg(a);
    if (2 == b) {
        switch (n = a.storeName ? a.storeName.length > 12 ? a.storeName.substring(0, 12) + "..." : a.storeName : "",
            o = a.storeName,
            j = a.childTaskCommission,
            k = a.childTaskAddCommission,
            l += getPlatBaseFee(a.payType, a.saleTaskType, a.createdtime),
            l += expressFee(a),
            parseInt(c)) {
            case -1:
            case 0:
                h = timeShow("发布时间", a.taskBeginTime),
                    f = "";
                break;
            case 1:
                h = timeShow("接手时间", a.receiveTaskTime);
                break;
            case 5:
                h = timeShow("付款时间", a.payTime),
                    p = isDiff(a, p);
                break;
            case 6:
                h = timeShow("发货时间", a.sandGoodsTime),
                "平台强制发货" == a.expressName && (p = "style='background: url(/asserts/images/plat_sandgood.png) no-repeat center 85px;'");
                break;
            case 7:
            case 8:
                h = timeShow("评论时间", a.evaluateTime),
                    p = isDiff(a, p);
                break;
            case 9:
            case 10:
                f = showTaskOrder(a),
                    p = isDiff(a, p);
                break;
            case 11:
                h = timeShow("成功时间", a.dealCompleteTime);
                break;
            case 12:
                h = timeShow("发布时间", a.taskBeginTime);
                break;
            case 14:
                h = timeShow("接手时间", a.receiveTaskTime)
        }
        var r = rightShow(g, f, a, i, d);
        f = r.headTemp,
            i = r.tailTemp
    } else if (1 == b) {
        switch (n = g < 5 ? a.storeName ? (a.storeName.length,
        a.storeName.substr(0, 1) + "***" + a.storeName.substr(a.storeName.length - 1, 1)) : "" : a.storeName ? a.storeName.length > 12 ? a.storeName.substring(0, 12) + "..." : a.storeName : "",
            o = g < 5 ? a.storeName ? (a.storeName.length,
            a.storeName.substr(0, 1) + "***" + a.storeName.substr(a.storeName.length - 1, 1)) : "" : a.storeName,
            j = a.childTaskCommissionForBuyer,
            k = a.childTaskAddCommissionForBuyer,
            parseInt(c)) {
            case 1:
                h = timeShow("发布时间", a.taskBeginTime),
                    f = "";
                break;
            case 2:
            case 3:
                h = timeShow("接手时间", a.receiveTaskTime);
                break;
            case 4:
                h = timeShow("付款时间", a.payTime);
                break;
            case 5:
                h = a.sandGoodsTime ? timeShow("发货时间", a.sandGoodsTime) : timeShow("付款时间", a.payTime);
                break;
            case 6:
                h = a.evaluateTime ? timeShow("评论时间", a.evaluateTime) : timeShow("发货时间", a.sandGoodsTime);
                break;
            case 7:
                h = timeShow("评论时间", a.evaluateTime);
                break;
            case 8:
                h = timeShow("成功时间", a.dealCompleteTime);
                break;
            case 9:
                h = timeShow("发布时间", a.taskBeginTime)
        }
        var s = $("#threeParty").val()
            , r = buyerRightShow(g, f, a, i, d, s);
        f = r.headTemp,
            i = r.tailTemp
    }
    return e += '<div class="mission_div" ' + p + '><div class="mission_head"><div class="floatLeft shalfDiv" align="left"><img src="' + getRootPath() + '/asserts/images/checkbox_unselected.png" class="checkbox" value="0" id="' + a.id + '"><b>子活动编号：' + a.childTaskNum + "</b>" + h + '</div><div class="floatLeft fhalfDiv" align="right">' + f + '</div></div><ul class="mission_ul"><li class="mission_li1"><div class="space_div"></div><div class="bb_img"><img class="bb_img" src="' + transform(a.item_picurl) + '"></div></li><li class="mission_li5"><div class="space_div"></div>' + taskTypePlat(a) + '</li><li class="mission_li7"><div class="space_div"></div>店铺名称<br><a title="' + o + '" style="color: #7b8da0;">' + n + "</a>" + showAllShopName(a) + '</li><li class="mission_li4"><div class="space_div"></div>下单数量<br>' + a.item_num + '</li><li class="mission_li8" style="width:100px;"><div class="space_div"></div>垫付货款<br>' + a.childTaskDeposit + '<br></li><li class="mission_li9"><div class="space_div"></div>' + (1 == b ? "活动赏金" : "活动总赏金") + "<br>" + (j + k + l + a.addTip).toFixed(2) + '</li><li class="mission_li3"><div class="space_div"></div>' + sellerBuyerAccountShow(a.saleTaskType) + "<br>" + getBuyerGrade(a.buyergrade) + '</li><li class="mission_li8" style="width:128px;"><div class="space_div"></div>' + q + scanDemandList(a.scan_demand, 0) + "<br>" + m + "</li>" + i + '<li class="mission_li10">' + getStatusString(a, b) + "</li></ul></div>",
        e += "</div>"
}
function getStatusString(a, b) {
    var c = a.saleTaskType
        , d = a.taskStatus
        , e = a.id
        , f = a.evaluateTime
        , g = a.sandGoodsTime
        , h = a.addEvaluationImg
        , i = a.evaluateZj
        , j = a.operateType;
    if (2 == b)
        switch (d) {
            case -1:
            case 0:
                return '等待买家接手<br><a class="close_a" href="javascript:closetask(' + e + ');">关闭活动<br></a><a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a>';
            case 1:
            case 2:
            case 3:
            case 4:
                return '进行中<br><a class="close_a" href="javascript:closeDoingTask(' + e + ');">关闭活动<br> <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a><br> <a class="aOpeara" href="#" onclick="showSK()">试客审核</a>';
            case 5:
                return '买家已付款 <br> <input type="button" class="operation_button qrsh_button2" onclick="operaButton(' + e + ',3);" value="商家发货"><br> <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a><br> <a class="aOpeara" href="#" onclick="showSK()">试客审核</a>';
            case 6:
                return '待收货<br> <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a>';
            case 7:
            case 8:
            case 9:
            case 10:
                return g ? f ? 1 != i || h || 9 == d ? (0 != a.money && 0 != a.coin ? "货佣待返" : 0 == a.money && 0 != a.coin ? "赏金待返" : "货款待返") + '<br><input type="button" class="operation_button qrsh_button2" onclick="operaButton(' + e + ',2);" value="返款"><br><a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a> ' : '待追评<br><a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a>' : '待收货<br> <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a>' : '买家已付款 <br> <input type="button" class="operation_button qrsh_button2" onclick="operaButton(' + e + ',3);" value="商家发货"><br> <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a>';
            case 11:
                return '交易成功<br> <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a>';
            case 12:
                return (4 == j ? "系统关闭" : 1 == j ? "商家关闭" : 0 == j ? "平台关闭" : "") + '<br> <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看</a>  <a class=" delete" href="javascript:void(0)" temp-data=' + e + ' onclick="deletePubTask(' + e + ')">删除</a> <br> <a id="CopyPTask" href="javascript:void(0)" temp-data=' + e + ' onclick="againPubTask(' + e + ')">再次发布</a>';
            case 13:
                return '失效关闭 <br> <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看</a> <a class="delete" href="javascript:void(0)" temp-data=' + e + ' onclick="deletePubTask(' + e + ')">删除</a><br> <a id="CopyPTask" href="javascript:void(0)" temp-data=' + e + ' onclick="againPubTask(' + e + ')">再次发布</a>';
            case 14:
                return a.rejectCloseTime ? '试客已关闭 <br>商家已拒绝<br> <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a>' : '试客已关闭 <br><input type="button" class="operation_button qrsh_button2" onclick="operaButton(' + e + ',0);" value="关闭审核"><br> <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=' + e + '">查看详情</a>'
        }
    else if (1 == b)
        switch (d) {
            case -1:
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                return '买家已接手<br><a href="javascript:toReceiveTask(' + e + "," + c + ')" class="continue_a">继续活动</a><br><a class="continue_a close-delicate-btn" href="javascript:showSelectUnfindReason(' + e + ", " + d + ", " + a.saleTaskType + ')" >关闭活动</a>';
            case 5:
                return '买家已付款<br><a href="taskinfo.htm?id=' + e + '" class="detail_a">查看详情</a>';
            case 6:
                return '待收货<br><a href="taskinfo.htm?id=' + e + '" class="detail_a">查看详情</a><br><input type="button" onclick="toTaskInfo(' + e + ')" value="确认收货" class="operation_button qrsh_button2">';
            case 7:
            case 8:
            case 9:
            case 10:
                return g ? f ? 1 != i || h || 9 == d ? '待返款<br><a href="taskinfo.htm?id=' + e + '" class="detail_a">查看详情</a><br><a class="disabled_a">' + (0 != a.money && 0 != a.coin ? "货佣待返" : 0 == a.money && 0 != a.coin ? "赏金待返" : "货款待返") + "</a>" : '待追评<br><a href="taskinfo.htm?id=' + e + '" class="detail_a">查看详情</a>' : '待收货<br><a href="taskinfo.htm?id=' + e + '" class="detail_a">查看详情</a><br><input type="button" onclick="toTaskInfo(' + e + ')" value="确认收货" class="operation_button qrsh_button2">' : '买家已付款<br><a href="taskinfo.htm?id=' + e + '" class="detail_a">查看详情</a>';
            case 11:
                return '交易成功<br><a href="taskinfo.htm?id=' + e + '" class="detail_a">查看详情</a>';
            case 12:
                return '交易失败<br><a href="taskinfo.htm?id=' + e + '" class="detail_a">查看详情</a>';
            case 14:
                return a.rejectCloseTime ? '试客已关闭<br>商家已拒绝<br> <a class="aOpeara" href="taskinfo.htm?id=' + e + '" class="detail_a">查看详情</a>' : '试客已关闭<br>待商家审核<br> <a class="aOpeara" href="taskinfo.htm?id=' + e + '" class="detail_a">查看详情</a>'
        }
}
function bindCopyEvent() {
    $(".copy_button").each(function(a, b) {
        copyEvent($(b))
    })
}
function copyEvent(a) {
    a.zclip({
        path: getRootPath() + "/asserts/js/vendor/jquery-zclip/1.1.2/ZeroClipboard.swf",
        copy: function() {
            return a.prev("b").children("span").text()
        },
        beforeCopy: function() {},
        afterCopy: function() {
            var a = $("<div class='copy-tips'><div class='copy-tips-wrap'>☺ 复制成功</div></div>");
            $("body").find(".copy-tips").remove().end().append(a),
                $(".copy-tips").fadeOut(3e3)
        }
    })
}
function returnSellerDetailHtml(a, b, c) {
    var d = '<div class="list_div" style="margin-top:0px;">'
        , e = ""
        , f = a.taskStatus;
    a.username && a.username;
    var g = ""
        , h = "";
    h = f > 0 && f < 12 ? '<li class="mission_li6"><div class="space_div"></div>' + buyerAccountShow(a.saleTaskType) + "<br>" + (f < 5 ? '<span style="color: #00000b">进行中</span>' : '<span style="color: red">' + (a.buyerwwid ? a.buyerwwid : "") + "</span><br>" + (a.wwCreditLevel ? getBuyerGrade(a.wwCreditLevel) : "")) + "</li>" : '<li class="mission_li6"><div class="space_div"></div>注意事项<br><div class="dpww_div"><a title="' + (a.memoMsg ? a.memoMsg : "") + '" style="color: #000;">' + (a.memoMsg ? a.memoMsg.length > 12 ? a.memoMsg.substring(0, 12) + "..." : a.memoMsg : "") + "</a></div></li>";
    var i = 0
        , j = 0
        , k = 0
        , l = "";
    l += 1 == a.evaluateGood ? '<img src="' + PJArray[0] + '"><br>' : "",
        l += 1 == a.evaluateZj ? '<img src="' + PJArray[1] + '"><br>' : "",
        l += 1 == a.evaluatePic ? '<img src="' + PJArray[2] + '">' : "";
    var m = saleTaskTypeImg(a);
    switch (i = a.childTaskCommission,
        j = a.childTaskAddCommission,
        k += getPlatBaseFee(a.payType, a.saleTaskType, a.createdtime),
        k += expressFee(a),
        f) {
        case -1:
        case 0:
            g = timeShow("发布时间", a.taskBeginTime);
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            g = timeShow("接手时间", a.receiveTaskTime);
            break;
        case 5:
            g = timeShow("付款时间", a.payTime);
            break;
        case 6:
            g = timeShow("发货时间", a.sandGoodsTime);
            break;
        case 7:
        case 8:
            g = timeShow("评论时间", a.evaluateTime);
            break;
        case 9:
        case 10:
            break;
        case 11:
            g = timeShow("成功时间", a.dealCompleteTime);
            break;
        case 12:
            g = timeShow("发布时间", a.taskBeginTime);
            break;
        case 14:
            g = timeShow("接手时间", a.receiveTaskTime)
    }
    switch (f) {
        case -1:
        case 0:
            e = "<b id='taskCancelTime'>活动失效时间：<span style='color:red' class='order'>" + new Date(a.taskExpireTime).Format("yyyy-MM-dd HH:mm:ss") + "<img src='/asserts/images/help-01-15.png'><div class='detail'>活动在失效时间前若无试客接手将自动关闭!</div></span></b>";
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            a.payInterval > 0 ? 1 == a.workType ? e = "<b id='taskCancelTime'>平台分配<span style='color:red' class='order1'><img src='/asserts/images/help-01-15.png'><div class='detail1'>该活动已自动接入平台分配，将由我们的线下合作方在17：30后统一处理，次日14：00前完成活动上传，若有疑问请联系平台客服。</div></span></b>" : 0 == a.workType && (f < 4 ? e = a.donetime ? "<b id='taskCancelTime'>加购倒计时：<span style='color:red' class='order2'>" + countDownString(a.receiveTaskTime, a.donetime, c) + "<img src='/asserts/images/help-01-15.png'><div class='detail2' style='width: 370px;margin-left: -10px;'>商家设置了加购完成时间，即试客从接手到把宝贝加入购物车需在规定时间内完成，否则活动将自动释放回活动大厅！</div></span></b>" : "<b>订单编号：<span>" + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : 4 == f && (e = compareTime(a.browseOverTime, a.payInterval, c) ? a.payInterval ? "<b id='taskCancelTime'>下单倒计时：<span style='color:red' class='order2'>" + countDownString(a.browseOverTime, a.payInterval, c) + "<img src='/asserts/images/help-01-15.png'><div class='detail2' style='width: 245px;margin-left: 113px;'>宝贝在倒计时结束后才可操作下单购买!</div></span></b>" : "<b>订单编号：<span>" + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">' : a.payInterval ? "<b id='taskCancelTime'>活动付款倒计时：<span style='color:red' class='order2'>" + countDownString(a.browseOverTime, a.payInterval + 720, c) + "<img src='/asserts/images/help-01-15.png'><div class='detail2'  style='width: 252px;margin-left: 107px;'>试客需在规定时间内完成下单购买，否则活动将自动关闭，赏金全部退还商家。</div></span></b>" : "<b>订单编号：<span>" + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框">')) : 1 == a.workType ? e = "<b id='taskCancelTime'>平台分配<span style='color:red' class='order1'><img src='/asserts/images/help-01-15.png'><div class='detail1'>该活动已自动接入平台分配，将由我们的线下合作方在17：30后统一处理，次日14：00前完成活动上传，若有疑问请联系平台客服。</div></span></b>" : 0 == a.workType && (e = a.donetime ? "<b id='taskCancelTime'>活动付款倒计时：<span style='color:red' class='order2'>" + countDownString(a.receiveTaskTime, a.donetime, c) + "<img src='/asserts/images/help-01-15.png'><div class='detail2'>你设置了活动完成时间，即从接手到付款需在规定时间完成，否则活动将自动释放回活动大厅!</div></span></b>" : '<b id="taskCancelTime"><b>订单编号：<span>' + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框"></b>'),
                h = '<li class="mission_li6"><div class="space_div"></div>注意事项<br><div class="dpww_div"><a title="' + (a.memoMsg ? a.memoMsg : "") + '" style="color: #000;">' + (a.memoMsg ? a.memoMsg.length > 12 ? a.memoMsg.substring(0, 12) + "..." : a.memoMsg : "") + "</a></div></li>";
            break;
        case 14:
            e = a.delicateDelayBackTime ? "<b id='taskCancelTime'>" + (a.rejectCloseTime ? "活动审核处理倒计时" : "活动审核倒计时") + "：<span style='color:red' class='order2'>" + countDownStringClose(c, a.rejectCloseTime ? a.rejectCloseTime : a.delicateDelayBackTime) + "<img src='/asserts/images/help-01-15.png'><div class='detail2'>你设置了活动完成时间，即从接手到付款需在规定时间完成，否则活动将自动释放回活动大厅!</div></span></b>" : '<b id="taskCancelTime"><b>订单编号：<span>' + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框"></b>';
            break;
        default:
            e = a.taskStatus > 4 ? '<b id="taskCancelTime"><b>订单编号：<span>' + (a.payOrderNum ? a.payOrderNum : "无") + '</span></b><input type="button" value="复制" class="copy_button"><img src="' + getRootPath() + '/asserts/images/wdrw/flag.png" class="flagImg" title="添加弹框"></b>' : ""
    }
    return e += '<b id="taskParentNumShow" style="display: none">总活动编号：<span onclick="skipFbjl(this)" style="cursor: pointer;color: #00a0ee;text-decoration: underline;">' + a.parentTaskNum + "</span></b>",
        d += '<div class="mission_div"><div class="mission_head"><div class="floatLeft shalfDiv" align="left"><img src="' + getRootPath() + '/asserts/images/checkbox_unselected.png" class="checkbox" value="0" id="' + a.id + '"><b>子活动编号：' + a.childTaskNum + "</b>" + g + '</div><div class="floatLeft fhalfDiv" align="right">' + e + '</div></div><ul class="mission_ul"><li class="mission_li1"><div class="space_div"></div><div class="bb_img"><img class="bb_img" src="' + transform(a.item_picurl) + '"></div></li><li class="mission_li5"><div class="space_div"></div>' + taskTypePlat(a) + '</li><li class="mission_li7"><div class="space_div"></div>店铺名称<br><a title="' + (a.storeName ? a.storeName : "") + '" style="color: #7b8da0;">' + showShopName(a) + '</li><li class="mission_li4"><div class="space_div"></div>下单数量<br>' + a.item_num + '</li><li class="mission_li8" style="width:100px;"><div class="space_div"></div>垫付货款<br>' + a.childTaskDeposit + '<br></li><li class="mission_li9"><div class="space_div"></div>活动总赏金<br>' + (i + j + k + a.addTip).toFixed(2) + '</li><li class="mission_li3"><div class="space_div"></div>' + sellerBuyerAccountShow(a.saleTaskType) + "<br>" + getBuyerGrade(a.buyergrade) + '</li><li class="mission_li8" style="width: 128px;"><div class="space_div"></div>' + m + scanDemandList(a.scan_demand, 0) + "<br>" + l + "</li>" + h + '<li class="mission_li10"><div class="space_div"></div>' + getSellerDetailStatusString(a.taskStatus, a.id, a.evaluateTime, a.sandGoodsTime, a.addEvaluationImg, a.evaluateZj, b, a.rejectCloseTime) + "</li></ul></div>",
        d += "</div>"
}
function getSellerDetailStatusString(a, b, c, d, e, f, g, h) {
    switch (a) {
        case 0:
            return "等待买家接手";
        case 1:
        case 2:
        case 3:
        case 4:
            return "进行中";
        case 5:
            return "买家已付款 ";
        case 6:
            return "待收货";
        case 7:
        case 8:
        case 9:
        case 10:
            return d ? c ? 1 != f || e || 9 == a ? "待返款" : "待追评" : "待收货" : "买家已付款 ";
        case 11:
            return "交易成功";
        case 12:
        case 13:
            return "交易失败";
        case 14:
            return h ? "商家已拒绝" : "商家审核"
    }
}
function skipFbjl(a) {
    window.location.href = getRootPath() + "/seller/ptask/pTaskList.htm?parenttask_num=" + a.innerText
}
