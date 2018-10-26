/*!  2018-10-22 */

function autoBindShop() {
    if ("" == $("#itemUrl").val())
        return removeWaitingDiv(),
            !1;
    data = {
        itemurl: $("#itemUrl").val()
    },
        $.ajax({
            type: "post",
            async: !1,
            url: getRootPath() + "/seller/ptask/autoSelectShop.htm",
            data: data,
            async: !1,
            success: function(a) {
                a.errorMsg || $("#shopWW").val() != a.ww_id && $("#shopWW").val(a.ww_id)
            },
            error: function(a, b, c) {
                alert(c),
                    removeWaitingDiv()
            }
        })
}
function init() {
    if (navigatorStyle(2),
        $(".misson").eq(0).show(),
        initItemList("show_item_detail"),
    !$("#emergency").val() || "null" == $("#emergency").val()) {
        var a = $("#forbidEmergency").val();
        switch (a || (a = "4"),
            parseInt(a)) {
            case 0:
                modifyForbidEmergency(!1, !1, !1);
                break;
            case 1:
            case 2:
            case 3:
            case 4:
                modifyEmergency()
        }
    }
}
function addToItemHisCookie(a) {
    if (void 0 != a && "null" != a) {
        var b = JSON.parse(a);
        a = a.replace(/,/g, ";;");
        var c = storeWithExpiration.get("linkHistory");
        if (c) {
            var d = c.split(",")
                , e = [];
            $.each(d, function(a, c) {
                c.indexOf(b.id) < 0 && e.push(c)
            }),
                d = e,
                d.push(a),
            d.length > 50 && d.shift(),
                c = d.join(",")
        } else
            c = a;
        storeWithExpiration.set("linkHistory", c);
        if (c != storeWithExpiration.get("linkHistory")) {
            var f = c.split(",");
            f.shift(),
                storeWithExpiration.set("linkHistory", f.join(","))
        }
    }
}
function itemHisAdapter(a) {
    var b = a.itemurl
        , c = "";
    return c = b.indexOf("jd.com") > -1 ? checkJdUrl(b) : getQueryString(b, "id"),
        {
            picUrl: a.item_picurl,
            storeName: a.ww_id,
            title: a.itemtitle,
            itemUrl: a.itemurl,
            id: c
        }
}
function initItemList(a) {
    $("." + a).click(function() {
        showItemSearchList(this)
    }),
        $(document).click(function(b) {
            var c = b.target.className;
            if ("HTML" == b.target.tagName)
                hideItemSearchList();
            else if ("HTML" == b.target.parentElement.tagName)
                hideItemSearchList();
            else if (null != b.target.parentElement && null != b.target.parentElement.parentElement) {
                var d = b.target.parentElement.parentElement.className;
                c.indexOf(a) < 0 && d.indexOf("search_item_list") < 0 && hideItemSearchList()
            }
        })
}
function showItemSearchList(a) {
    if ($(".search_item_list").length > 0)
        return !1;
    storeWithExpiration.get("linkHistory") && itemListPage(a, 0)
}
function itemListPage(a, b) {
    hideItemSearchList();
    var c = storeWithExpiration.get("linkHistory");
    if (c) {
        b < 0 && (b = 0);
        var d = c.split(",")
            , e = d.length
            , f = parseInt(e / 5);
        if (b > f && (b = f),
            b === f ? e %= 5 : e = 5,
        0 === e)
            return itemListPage(a, b - 1),
                !1;
        hideItemSearchList();
        var g = d.length - 5 - 5 * b;
        g < 0 && (g = 0);
        for (var h = g + e - 1, i = "<div class=\"search_item_list\"><div class='search_lately'>最近搜过</div><div style='height: 20px;line-height: 20px;'><a class='last_page' onselectstart='return false;'>上一页</a><a class='next_page' onselectstart='return false;'>下一页</a></div><a class='close'>×</a><ul class='list'>\n"; h >= g; h--) {
            var j = JSON.parse(d[h].replace(/;;/g, ",").replace(/<[^>]+>/g, ""));
            i += "<li item='" + d[h] + "'><div style='float: left;'><img src='" + j.picUrl + "'></div><div style='float: left;padding-left: 9px;'><span>店铺名：" + j.storeName + "</span><br><span>商品名：" + j.title + "</span></div></li>"
        }
        i += "</ul></div>",
            $(a).after(i);
        var k = $(a).width();
        k < 700 && (k = 700);
        var l = 73 * e;
        $(".search_item_list").css({
            width: k,
            height: l + "px"
        }),
            $(".search_item_list ul").css("height", l),
            $(".search_item_list ul").css("width", k),
            $(".search_item_list ul li").css("width", k - 10),
            $(".search_item_list ul li").hover(function() {
                $(this).append("<span class='deleteKh'>删除</span>"),
                    $(".search_item_list .deleteKh").unbind("click"),
                    $(".search_item_list .deleteKh").bind("click", function() {
                        delItemHisCookie($(this).parent().attr("item")),
                            $(".search_item_list ul").css("height", $(".search_item_list ul").height() - 45),
                            $(this).parent().remove()
                    })
            }, function() {
                $(".search_item_list .deleteKh").remove()
            }),
            $(".search_item_list ul li").unbind("click"),
            $(".search_item_list ul li").bind("click", function() {
                var b = JSON.parse($(this).attr("item").replace(/;;/g, ",").replace(/<[^>]+>/g, ""));
                $(a).val(b.itemUrl),
                    hideItemSearchList()
            }),
            $(".search_item_list .next_page").click(function() {
                b += 1,
                    itemListPage(a, b)
            }),
            $(".search_item_list .last_page").click(function() {
                b -= 1,
                    itemListPage(a, b)
            }),
            $(".search_item_list .search_lately").click(function() {
                b = 0,
                    itemListPage(a, b)
            })
    }
}
function hideItemSearchList() {
    $(".search_item_list").remove()
}
function delItemHisCookie(a) {
    var b = storeWithExpiration.get("linkHistory");
    b && b.indexOf(a) >= 0 && (b = b.replace(a + ",", ""),
        b = b.replace("," + a, ""),
        b = b.replace(a, ""),
        storeWithExpiration.set("linkHistory", b))
}
$(function() {
    function a(a) {
        a ? ($(".showBtn").css({
            backgroundImage: "url(/asserts/images/i36_lmzk.png)"
        }),
            $(".roleText > div").addClass("hidden"),
            $(".roleText").css({
                borderBottom: "none"
            })) : ($(".showBtn").css({
            backgroundImage: "url(/asserts/images/i36_lmsq.png)"
        }),
            $(".roleText > div").removeClass("hidden"),
            $(".roleText").css({
                borderBottom: "1px solid #f5c7bd"
            }))
    }
    function b() {
        var a = $(".bigTag li.active").attr("jobType")
            , b = $("." + a + " li>i.active").attr("saleTaskType");
        showWaitingDiv("正在验证宝贝链接..."),
            setTimeout(function() {
                var a = $(".shopList i.active").attr("shopName");
                if (!a || "" == a)
                    return alert("请选择店铺"),
                        removeWaitingDiv(),
                        !1;
                var c = $("#itemUrl").val().trim();
                if (98 != b && "" == c)
                    alert("未输入活动主宝贝链接,请输入链接!!!"),
                        removeWaitingDiv();
                else {
                    data = {
                        itemurl: c
                    },
                        data.ww_id = $(".shopList i.active").attr("shopName").trim(),
                        data.jobType = $(".bigTag li.active").attr("jobType"),
                        data.saleTaskType = $("." + data.jobType + " li>i.active").attr("saleTaskType"),
                        data.platform = $("." + data.jobType + " li>i.active").parent().find("dl i.active").attr("platform"),
                        data.task_type = $("." + data.jobType + " li>i.active").parent().find("dl i.active").attr("task_type"),
                        data.payType = 0;
                    var d = $("#vipLevel").val().trim();
                    if (3 == data.saleTaskType) {
                        var e = $("#firstPubTaskDate").val()
                            , f = new Date(Date.parse($("#nowTime").val().trim()))
                            , g = new Date(Date.parse($("#endTime").val().trim()))
                            , d = $("#vipLevel").val().trim();
                        if (3 == $("#saleTaskType").val()) {
                            if (g.getTime() < f.getTime() && 1 != d && -1 != d)
                                return showVipAlert("当前活动是保证金专属，请缴纳保证金后使用"),
                                    void removeWaitingDiv();
                            if (-1 == d && e)
                                return showVipAlert("当前活动是保证金专属，请缴纳保证金后使用"),
                                    void removeWaitingDiv()
                        }
                    }
                    if (2 != data.saleTaskType) {
                        if (!data.task_type)
                            return alert("请选择补单类型!!!"),
                                void removeWaitingDiv()
                    } else if (isBlank(data.platform))
                        return alert("请选择补单类型!!!"),
                            void removeWaitingDiv();
                    if (99 == data.saleTaskType) {
                        if (data.itemurl.indexOf("jd.com") < 0)
                            return alert("请发布同补单类型一致的宝贝！"),
                                void removeWaitingDiv()
                    } else if (data.itemurl.indexOf("jd.com") > -1)
                        return alert("请发布同补单类型一致的宝贝！"),
                            void removeWaitingDiv();
                    $.ajax({
                        type: "post",
                        url: getRootPath() + "/seller/ptask/create.htm",
                        data: data,
                        success: function(a) {
                            removeWaitingDiv();
                            var b = a.errorMsg;
                            if ("vipExpired" == b)
                                return void showVipAlert("当前活动是保证金专属，请缴纳保证金后使用");
                            b ? (alert(b),
                                $(".itemurl").focus()) : (98 != a.saleTaskType && addToItemHisCookie(JSON.stringify(itemHisAdapter(a))),
                                $("#publishIndex").val("0"),
                                window.location.href = getRootPath() + "/seller/ptask/editTask.htm?id=" + a.itemId)
                        },
                        error: function(a, b, c) {
                            alert(c),
                                removeWaitingDiv()
                        }
                    })
                }
            }, 500)
    }
    $(".bigTag li").click(function() {
        $(this).addClass("active").siblings().removeClass("active"),
            $(".misson").hide(),
            $(".misson").eq($(this).index()).show(),
            1 == $(this).index() ? $(".remind").hide() : $(".remind").show(),
            1 == $(this).index() ? $(".TASK").hide() : $(".TASK").show()
    }),
        $(".misson > li").click(function() {
            if (1 == $(this).attr("IsDevelop")) {
                $(".misson > li").find("dl").hide(),
                    $(this).find("dl").show(),
                    $(".misson > li").find("i").removeClass("active"),
                    $(this).find("i").addClass("active");
                var a = $(this).find("i").attr("saleTaskType");
                "99" == a ? ($("#shopList").css("display", "none"),
                    $("#tbShopList").css("display", "none"),
                    $("#pddShopList").css("display", "none"),
                    $("#jdShopList").css("display", "")) : "98" == a ? ($("#shopList").css("display", "none"),
                    $("#tbShopList").css("display", "none"),
                    $("#jdShopList").css("display", "none"),
                    $("#pddShopList").css("display", "")) : ($("#shopList").css("display", "none"),
                    $("#tbShopList").css("display", ""),
                    $("#jdShopList").css("display", "none"),
                    $("#pddShopList").css("display", "none")),
                    $(".misson dd i").removeClass("active"),
                    6 == $(this).find("i").attr("saleTaskType") ? $("#itemLinkShow").text("引流宝贝链接：") : $("#itemLinkShow").text("宝贝链接：")
            } else
                alert("该功能还在开发中！")
        }),
        $(".misson dd").click(function() {
            if (1 == $(this).attr("data")) {
                if ("false" == $(this).attr("limit"))
                    return alert("该功能仅限保证金用户！"),
                        !1;
                $(".misson dd i").removeClass("active"),
                    $(this).find("i").addClass("active")
            } else
                alert("该功能还在开发中！");
            return !1
        }),
        $(".shop > li").click(function() {
            $(".shop > li").find("dl").hide(),
                $(this).find("dl").show(),
                $(".shop > li").find("i").removeClass("active"),
                $(this).find("i").addClass("active"),
                $(".shop dd i").removeClass("active")
        }),
        a(!!store.get("safeSupple")),
        $(".showBtn").click(function() {
            $(".roleText > div").hasClass("hidden") ? (a(!1),
                store.set("safeSupple", !1)) : (a(!0),
                store.set("safeSupple", !0))
        }),
        $("#next").on("click", function() {
            $("body").append('<div id="agreeShade" style="background-color: #666; opacity: .5;position: fixed; top: 0; left:0; width: 100%; height: 100%;"></div><div id="agreeBox" style="border-radius: 5px; font-size: 14px; position: fixed; background: #fff; z-index: 2; width: 600px; height: 400px; left: 50%; top: 50%; margin-left: -300px;margin-top: -300px; padding: 20px;"><p style="font-size: 18px; text-align: center;">活动须知</p><p style="line-height: 30px; font-size: 14px; margin-top: 10px;">近期有商家反应试客使用淘宝客、村淘下单，导致损失大量的返利赏金，在此平台特此说明：<br>1.平台所有的单子都是人工操作的，试客手机的环境不同浏览器软件劫持不一样，这也是没有办法用技术攻克的问题，请各位商家谅解。<br>2.建议商家在发布试用活动期间的商品暂停淘客推广，平台后续对淘宝客问题不予处理。<br>3.由于处理淘宝客容易引起买家商家之间的纠纷，一些买家会存在报复心理，投诉店铺、追加差评，恶意退款等问题，给商家带来无尽的麻烦，且会给添加平台客服工作量，所以淘宝下单的平台不再负责追回损失，请各位商家体谅。<br>4.关于村淘服务 淘宝所有村淘扣除的服务费都是由淘宝所得，并非试客赚取。<br>服务再次提醒：平台不再负责追回淘宝客、返利赏金及村淘问题，请商家参加试用活动商品自行关闭相应推广。<br></p><p><b id="agreeBtn" style="cursor: pointer; float: right;margin-right: 30px; "><span style="line-height: 10px;border:1px solid #000; margin-right: 5px;vertical-align: -2px;display: inline-block; width: 10px; height: 10px; "></span>我已阅读此条款</b></p><p style="text-align: center; margin-top: 20px;"><a id="agreeBtnTagA" agree="1" style=" cursor: pointer;background-color: #ddd; padding: 5px 20px; clear: both; display: inline-block; color: #fff;">同意</a></p></div>'),
                $("#agreeBtn").on("click", function() {
                    "√" == $(this).children("span").html() ? ($(this).children("span").html(""),
                        $("#agreeBtnTagA").attr("agree", "1").css({
                            backgroundColor: "#ddd",
                            color: "#fff"
                        })) : ($(this).children("span").html("√"),
                        $("#agreeBtnTagA").attr("agree", "2").css({
                            backgroundColor: "#ff6600",
                            color: "#fff"
                        }))
                }),
                $("#agreeBtnTagA").on("click", function() {
                    1 == $(this).attr("agree") ? alert("请仔细阅读相关条款") : ($("#agreeShade,#agreeBox").remove(),
                        b())
                })
        });
    var c = request("from");
    c && "publish_mission_presell" == c && ($('dd[redirect_selected="publish_mission_presell"]').parent().parent().click(),
        $('dd[redirect_selected="publish_mission_presell"]').click())
});
