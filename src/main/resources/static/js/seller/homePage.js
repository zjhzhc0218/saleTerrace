/*!  2018-10-22 */

function baseInfo() {
    $.ajax({
        type: "post",
        url: getRootPath() + "/seller/userBaseInfo.htm",
        data: {},
        success: function(a) {
            store.get("qqLocal");
            0 == a.countBindStore ? ($(".buyer").text("未认证商家"),
                $(".bindStores").text("<<点我认证")) : ($(".buyer").html('<img src="' + getRootPath() + '/asserts/images/V.png">认证商家'),
                $(".bindStores").text("<<绑定店铺")),
                1 == a.password ? $(".setPwd").html('<span class="set_label">已设置</span>') : $(".setPwd").html('<span class="unset_label">未设置</span>'),
                "" != a.accoundPwd && a.accoundPwd ? ($(".setPaypwd").html('<img src="' + getRootPath() + '/asserts/images/grxx/set_icon.png"><span class="set_label">已设置</span>'),
                    $(".aSetPaypwd").text("修改")) : ($(".setPaypwd").html('<img src="' + getRootPath() + '/asserts/images/grxx/unSet_icon.png"><span class="unset_label">未设置</span>'),
                    $(".aSetPaypwd").text("去设置")),
                a.money = a.money && "null" != a.money ? a.money : 0,
                a.freezeMoney = a.freezeMoney && "null" != a.freezeMoney ? a.freezeMoney : 0,
                a.coin = a.coin && "null" != a.coin ? a.coin : 0,
                a.freezeCoin = a.freezeCoin && "null" != a.freezeCoin ? a.freezeCoin : 0,
                $(".waitPay").text(a.countWaitPay),
                $(".waitSendGood").text(a.countWaitSentGood),
                $(".waitBack").text(a.countWaitBackMoney),
                $(".failTask").text(a.countFailTask),
                $(".countReceiveTaskBrowse").text(a.countReceiveTaskBrowse),
                $(".countWaitBackCoinBrowse").text(a.countWaitBackCoinBrowse),
                $(".countSuccessTaskBrowse").text(a.countSuccessTaskBrowse),
                $(".countFailTaskBrowse").text(a.countFailTaskBrowse),
                $(".countWaitTaskBrowse").text(a.countWaitTaskBrowse),
                $(".lMoney").html("可用:" + a.money + "元&nbsp;&nbsp;&nbsp;&nbsp;冻结:" + a.freezeMoney + "元"),
                $(".lCoin").html("可用:" + a.coin + "个&nbsp;&nbsp;&nbsp;&nbsp; 冻结:" + a.freezeCoin + "个"),
                $(".qqNum").text(a.qq),
                $(".emergency").text(a.emergency),
                $(".phoneNum").text(a.phone),
                $(".username").text(a.username);
            var b = new Date;
            b.setTime(a.limitTime),
                $(".limitTime").text(b.format("yyyy-MM-dd")),
                $(".limitTime").css("color", "#11ade2")
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function init() {
    headerStyle(1),
        navigatorStyle(0),
        baseInfo()
}
$(function() {
    !function(a) {
        a.fn.tabs = function(b) {
            var c = {
                switchingMode: "click"
            }
                , d = a.extend({}, c, b)
                , e = a(this)
                , f = 0;
            e.addClass("tabsDiv"),
                a("ul li:first", e).addClass("tabsSeletedLi"),
                a("ul li:first", e).css("border-right", "0px"),
                a("ul li", e).not(":first").addClass("tabsUnSeletedLi"),
                a("div", e).not(":first").hide(),
                a("ul li", e).bind(d.switchingMode, function() {
                    f != a("ul li", e).index(a(this)) && (f = a("ul li", e).index(a(this)),
                        a(".tabsSeletedLi", e).removeClass("tabsSeletedLi").addClass("tabsUnSeletedLi"),
                        a(this).removeClass("tabsUnSeletedLi").addClass("tabsSeletedLi"),
                        a("div", e).hide(),
                        a("div", e).eq(f).show())
                })
        }
    }(jQuery),
        $("#grxx_tabs").tabs(),
        $("#Content").height($(".grxx_div").height()),
        $("#tradeRecord_button").click(function() {
            // window.location.href = getRootPath() + "/saleterrace/ckzd_index"
            window.location.href =  "/saleterrace/ckzd_index"
        }),
        $("#useRecord_button").click(function() {
            // window.location.href = getRootPath() + "/saleterrace/ckzd_index?payType=JIN_BI_ZHI_CHU&timeType=LAST_MONTH&page.page=1"
            window.location.href = "/saleterrace/ckzd_index?payType=JIN_BI_ZHI_CHU&timeType=LAST_MONTH&page.page=1"
        }),
        $(".unPrompt").click(function() {
            store.set("qqLocal", "1"),
                $(".lead").hide(),
                $(".leadBox").hide()
        })
}),
    Date.prototype.format = function(a) {
        var b = {
            "M+": this.getMonth() + 1,
            "d+": this.getDate(),
            "h+": this.getHours(),
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
