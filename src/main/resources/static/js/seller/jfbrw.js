/*!  2018-10-22 */

function onPageLoad() {
    !function(a) {
        a.fn.tabs = function(b) {
            var c = {
                switchingMode: "click"
            }
                , d = a.extend({}, c, b)
                , e = a(this)
                , f = 0;
            e.addClass("tabsDiv"),
                a("ul.tabs_ul li:first", e).addClass("tabsSeletedLi"),
                a("ul.tabs_ul li:first", e).css("border-left", "1px solid #F2F4F3"),
                a("ul.tabs_ul li", e).not(":first").addClass("tabsUnSeletedLi"),
                a("div.content_div", e).not(":first").hide(),
                a("ul.tabs_ul li", e).bind(d.switchingMode, function() {
                    if (f != a("ul.tabs_ul li", e).index(a(this))) {
                        a(".batch").hide(),
                            a(".batch img").attr("value", 0).attr("src", "/asserts/images/checkbox_unselected.png"),
                            f = a("ul.tabs_ul li", e).index(a(this)),
                            a(".tabsSeletedLi", e).removeClass("tabsSeletedLi").addClass("tabsUnSeletedLi"),
                            a(this).removeClass("tabsUnSeletedLi").addClass("tabsSeletedLi");
                        var b = a(this).attr("value");
                        switch (a(".isPreSale").hide(),
                            a("#tabs > p.waitCashP").hide(),
                            a("#tabs > p.waitToDeliveredP").hide(),
                            5 == b ? (a("#tabs > p.waitToDeliveredP").show(),
                                a(".batch[value=" + b + "]").show()) : 7 == b ? (a("#tabs > p.waitCashP").show(),
                                a(".batch[value=" + b + "]").show()) : 1 == b ? a(".isPreSale").show() : (a("#tabs > p.waitToDeliveredP").hide(),
                                a("#tabs > p.waitCashP").hide()),
                            a("#childCount div").addClass("hidden"),
                            a("#childCount div[value=" + b + "]").removeClass("hidden"),
                            parseInt(b)) {
                            case 0:
                            case 1:
                            case 5:
                            case 6:
                            case 11:
                                a(".export_button").show(),
                                    5 == b ? a("#excel").hide() : a("#excel").show();
                                break;
                            default:
                                a(".export_button").hide(),
                                    a("#excel").hide()
                        }
                    }
                    var c = formToJson(a("#paramForm"));
                    c.taskStatusflag = a(this).val(),
                        c.page = 1,
                        useAjaxCount(c)
                })
        }
    }(jQuery),
        $("#tabs").tabs()
}
function checkBoxClick() {
    var a = $("#tabs");
    $("img.checkbox", a).unbind("click").bind("click", function() {
        return $(this).attr("src").indexOf("checkbox_unselected.png") > 0 ? ($(this).attr("src", "../../asserts/images/checkbox_selected.png").attr("value", 1),
            $(this).attr("class").indexOf("checkbox_selectAll") > 0 ? $("img.checkbox", a).attr("src", "../../asserts/images/checkbox_selected.png").attr("value", 1) : $("img.checkbox[value=1]", a).length == $(".content_div .list_div", a).length && $(".checkbox_selectAll").attr("src", "../../asserts/images/checkbox_selected.png").attr("value", 1)) : ($(this).attr("src", "../../asserts/images/checkbox_unselected.png").attr("value", 0),
            $(this).attr("class").indexOf("checkbox_selectAll") > 0 ? $("img.checkbox", a).attr("src", "../../asserts/images/checkbox_unselected.png").attr("value", 0) : $(".checkbox_selectAll").attr("src", "../../asserts/images/checkbox_unselected.png").attr("value", 0)),
            !1
    })
}
function showSK() {
    $("body").append('<div class="CloseTask" style="position: fixed;left: 0px;top: 0px;opacity: 0.9;background: #666;z-index: 1010;width: 100%;height: 100%;"></div><div class="CloseTask" id="closeTaskReason" style="position: fixed;left: 50%;top: 50%;width: 500px;height: 300px;margin-top: -175px;margin-left: -250px;z-index: 10010;background-color: #ffffff;border-radius: 15px;opacity: 1;"><div class="close-box" style="    margin-top: 50px;"><div ><p style="font-size: 16px;margin-top: 15px;padding-left: 50px;"><input type="radio" name="closereason" checked="checked" value="2" style="vertical-align: -3px;width: 16px;height: 16px;">审核通过<input type="radio" name="closereason"  value="3" style="vertical-align: -3px;width: 16px;height: 16px;">审核不通过</p><p style="font-size: 16px;margin-top: 15px;padding-left: 50px;"><textarea cols="60" rows="5" id="reasion" placeholder="请输入不通过的原因" style="display: none"></textarea></p></div><div><button id="confirmCloseTask" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 130px;height: 45px;font-size: 18px;color: #ffffff;cursor: pointer;line-height: 45px;margin: 34px 0 0 92px;">确认</button><button id="cancelCloseTask" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 130px;height: 45px;font-size: 18px;color: #ffffff;cursor: pointer;line-height: 45px;margin: 34px 0 0 44px;">取消</button></div></div></div>'),
        $("#cancelCloseTask").click(function() {
            $(".CloseTask").remove()
        }),
        $("#confirmCloseTask").click(function() {
            if (3 == $('input[name="closereason"]:checked').val() && !$("#reasion").val().trim())
                return void alert("请填写原因！");
            $(".CloseTask").remove()
        }),
        $('input[name="closereason"]').click(function() {
            3 == $(this).val() ? ($("#reasion").css("display", "block"),
                $("#closeTaskReason").css("height", "300px")) : ($("#reasion").css("display", "none"),
                $("#closeTaskReason").css("height", "300px"))
        }),
        $('input[name="closereason"]').click(function() {
            3 == $(this).val() ? ($("#reasion").css("display", "block"),
                $("#closeTaskReason").css("height", "300px")) : 1 == $(this).val() || ($("#reasion").css("display", "none"),
                $("#closeTaskReason").css("height", "300px"))
        }),
        $("#cancelDelicate").on("click", function() {
            $(".closeTask-delicate").hide(),
                $(".close-box").show(),
                $('input[name="closereason"]:checked').removeAttr("checked")
        }),
        $("#confirmDelicate").on("click", function() {
            $("#confirmCloseTask").click()
        })
}
function operaButton(a, b) {
    window.location.href = "gotoTaskDetails.htm?id=" + a + "&flag=" + b
}
function closetask(a) {
    confirm("确定关闭此活动???") && $.ajax({
        type: "post",
        url: "closeTask.htm",
        data: {
            id: a
        },
        success: function(a) {
            if ("success" == a.msg)
                window.location.href = "zrwlb.htm?n=8";
            else {
                alert(a.msg);
                var b = $(".tabsSeletedLi").index("ul.tabs_ul li");
                $("ul.tabs_ul li").eq(b).click()
            }
        }
    })
}
function useAjaxCount(a) {
    $.ajax({
        type: "post",
        url: "cTaskListCount.htm",
        data: a,
        dataType: "json",
        success: function(a) {
            a ? 0 != a.pages ? ($("#infoRows>.lists_info_ul").size() > 0 && $("#infoRows>.lists_info_ul").remove(),
                renderPagingBar(a.pages, a.page)) : ($(".content_div").each(function() {
                "block" == $(this).css("display") && $(this).html("")
            }),
                $("#infoRows>.lists_info_ul").remove(),
                $("#infoRows").append('<ul class="lists_info_ul"><li class="no_data">暂无数据</li></ul>'),
                $("#pagingFooterBar>.pagination").remove(),
                $("#Content").height(500)) : alert("failure")
        }
    })
}
function useAjaxMine(a) {
    $.ajax({
        type: "post",
        url: "cTaskList.htm",
        data: a,
        dataType: "json",
        success: function(a) {
            if (a) {
                a.records && showData(a)
            }
        }
    })
}
function renderPagingBar(a, b) {
    $("#pagingFooterBar>.pagination").remove(),
        $("#pagingFooterBar").append('<ul id="pagination"  class="pagination"></ul>'),
        $("#pagination").jqPaginator({
            totalPages: a,
            visiblePages: visiblePages,
            currentPage: 1,
            first: '<li class="first"><a href="javascript:void(0);">首页</a></li>',
            prev: '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
            next: '<li class="next"><a href="javascript:void(0);">下一页</a></li>',
            last: '<li class="last"><a href="javascript:void(0);">末页</a></li>',
            page: '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',
            onPageChange: function(a) {
                var b = formToJson($("#paramForm"));
                b.taskStatusflag = $(".tabsSeletedLi").val(),
                    b.page = a,
                    useAjaxMine(b)
            }
        })
}
function showData(a) {
    var b = $("#systemTime").val()
        , c = $(".tabs_ul li.tabsSeletedLi").attr("value")
        , d = $(".content_div")
        , e = "";
    $(".content_div>.list_div").remove();
    for (var f = a.records.length, g = a.records, h = 0; h < f; h++) {
        var i = g[h];
        e += returnHtml(i, 2, c, b)
    }
    d.append(e),
        $("#Content").height($(".mission_div").height() * f + $(".wdrw .search_options2").height() + $(".wdrw .tabs_ul").height() + 500),
        bindCopyEvent(),
        checkBoxClick()
}
function init() {
    headerStyle(1),
        navigatorStyle(3),
        loadTaskStatusCount({
            jobType: "TASK"
        }),
        $(".export_button").hide(),
        $("#excel").hide();
    var a = request("n");
    a ? $("ul.tabs_ul li").eq(a).click() : $("ul.tabs_ul li").eq(0).click();
    var b = request("where")
        , c = $("#childTaskCount").val();
    b && 1 == c && $(".missionBox").show(),
        $(".mclose").click(function() {
            $(".missionBox").hide()
        })
}
function loadTaskStatusCount(a) {
    $.ajax({
        type: "post",
        url: getRootPath() + "/seller/task-status-count.htm",
        data: a,
        success: function(a) {
            if (a)
                for (var b in a)
                    $("#" + b).text(a[b])
        }
    })
}
function againPubTask(a) {
    $.ajax({
        type: "post",
        url: "/seller/ptask/checkIsTaoBaoKe.htm",
        data: {
            id: a
        },
        dataType: "json",
        async: !1,
        success: function(b) {
            b.flag ? ($("body").append('<div id="agreeShade" style="background-color: #666; opacity: .5;position: fixed; top: 0; left:0; width: 100%; height: 100%;"></div><div id="agreeBox" style="background: #fff url(/asserts/images/taobaoke.png) no-repeat; border-radius: 5px; font-size: 14px; position: fixed;  z-index: 2; width: 640px; height: 420px; left: 50%; top: 50%; margin-left: -300px;margin-top: -300px; padding: 20px;"><p style="text-align: right;"><span style=" font-size: 30px; cursor: pointer;" id="closeCotton">&times;</span></p><p style="text-align: center; margin-top: 285px;"><a id="agreeBtnTagA" agree="1" style=" cursor: pointer;background-color: #ddd; padding: 5px 20px; clear: both; display: inline-block; color: #fff;">同意</a><b id="agreeBtn" style="cursor: pointer; display: block;margin-top: 10px;"><span style="line-height: 10px;border:1px solid #000; margin-right: 5px;vertical-align: -2px;display: inline-block; width: 10px; height: 10px; "></span>我已阅读此条款</b></p><p style="text-align: center; margin-top: 20px;"></p></div>'),
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
                $("#closeCotton").on("click", function() {
                    $("#agreeShade,#agreeBox").remove()
                }),
                $("#agreeBtnTagA").on("click", function() {
                    1 == $(this).attr("agree") ? alert("请仔细阅读相关条款") : ($("#agreeShade,#agreeBox").remove(),
                        sureAgainPubTask(a))
                })) : sureAgainPubTask(a)
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function sureAgainPubTask(a) {
    return $("#taskid").val(""),
        $("#taskid").val(a),
        $("#payAgainPub").show(),
        !1
}
function closeDoingTask(a) {
    return $("#closeTaskId").val(""),
        $("#closeTaskId").val(a),
        $("#closeDoingTask").show(),
        !1
}
function deletePubTask(a) {
    return confirm("确定删除该活动吗？") && $.ajax({
        type: "post",
        url: getRootPath() + "/seller/deleteChildTask.htm",
        data: {
            id: a
        },
        success: function(a) {
            a.flag ? (alert("删除成功！"),
                window.location.reload()) : alert("删除失败！")
        }
    }),
        !1
}
function exportExcel() {
    $(".export_button").attr("disabled", "disabled");
    var a = $("#tabs");
    $("#taskStatusflag").val($("ul.tabs_ul li.tabsSeletedLi", a).attr("value"));
    var b = $("#pagination li.active").attr("jp-data");
    b || (b = 1),
        $("#page").val(b);
    var c = $("#paramForm").serialize();
    window.open("exportTaskList.htm?" + c),
        $(".export_button").removeAttr("disabled")
}
function bacthSendOrBack(a) {
    if ($("img.checkbox[value=1]", $("#tabs")).length < 1)
        return alert("请勾选！"),
            !1;
    var b = "";
    $(".content_div img.checkbox[value=1]", $("#tabs")).each(function() {
        var a = $(this).attr("id");
        b += a + ","
    }),
        window.location.href = "/seller/batchOperation.htm?type=" + a + "&childTaskIds=" + b
}
$(function() {
    $(".search_button").click(function() {
        $("#tabs").addClass("tabsDiv");
        var a = $("ul.tabs_ul li.tabsSeletedLi").val()
            , b = formToJson($("#paramForm"));
        b.taskStatusflag = a,
            b.page = 1,
            useAjaxCount(b),
            loadTaskStatusCount(b)
    }),
        $("#receivetaskstarttime").click(function() {
            WdatePicker({
                readOnly: !0,
                dateFmt: "yyyy-MM-dd HH:mm:ss",
                maxDate: "#F{$dp.$D('receivetaskendtime')||'%y-%M-%d'}"
            })
        }),
        $("#receivetaskendtime").click(function() {
            WdatePicker({
                readOnly: !0,
                dateFmt: "yyyy-MM-dd HH:mm:ss",
                minDate: "#F{$dp.$D('receivetaskstarttime')}",
                maxDate: "%y-%M-%d"
            })
        }),
        $("#taskBeginTimestart").click(function() {
            WdatePicker({
                readOnly: !0,
                dateFmt: "yyyy-MM-dd HH:mm:ss",
                maxDate: "#F{$dp.$D('taskBeginTimeend')||'%y-%M-%d'}"
            })
        }),
        $("#taskBeginTimeend").click(function() {
            WdatePicker({
                readOnly: !0,
                dateFmt: "yyyy-MM-dd HH:mm:ss",
                minDate: "#F{$dp.$D('taskBeginTimestart')}",
                maxDate: "%y-%M-%d"
            })
        }),
        $("#cancel_button2").click(function() {
            return $("#payAgainPub").hide(),
                !1
        }),
        $("#suerAgaginPub").click(function() {
            return showWaitingDiv("请稍候..."),
                $.ajax({
                    type: "post",
                    url: "/seller/ptask/checkChildTaskMoneyAndCoinEnough.htm",
                    data: {
                        id: $("#taskid").val()
                    },
                    dataType: "json",
                    success: function(a) {
                        if ($("#payAgainPub").hide(),
                            removeWaitingDiv(),
                            a.flag)
                            $("#surePayAgainPub").show(),
                                $("#payAgainPub").hide(),
                                $("#pwd_text").val("");
                        else {
                            var b = parseFloat($.trim(a.moneyAndCoinLack));
                            $.ajax({
                                url: "/account/createAlipay.htm",
                                data: {
                                    act: "YU_E_CHONG_ZHI",
                                    count: b
                                },
                                dataType: "json",
                                success: function(a) {
                                    a.message ? alert(a.message) : payTip2()
                                },
                                error: function(a, b, c) {
                                    alert("出错了")
                                }
                            })
                        }
                    },
                    error: function(a, b, c) {
                        alert(c),
                            removeWaitingDiv()
                    }
                }),
                !1
        }),
        $(".closeAgaginPub").click(function() {
            return $("#surePayAgainPub").hide(),
                !1
        }),
        $("#confirm_button2").click(function() {
            if ($("#confirm_button2").attr("disabled", "disabled"),
                $("#pwd_text").val().trim()) {
                showWaitingDiv("正在再次发布...");
                var a = {};
                a.id = $("#taskid").val(),
                    a.payPwd = $("#pwd_text").val(),
                    $.ajax({
                        type: "post",
                        url: "ptask/againPubTask.htm",
                        data: a,
                        success: function(a) {
                            if (removeWaitingDiv(),
                            "true" == a.flag)
                                $("#surePayAgainPub").hide(),
                                    alert(a.msg),
                                    window.location.reload();
                            else if ("false" == a.flag) {
                                if ($("#confirm_button2").removeAttr("disabled"),
                                    a.tiptype) {
                                    var b = getRootPath() + "/account/accountmanage.htm?tab=1";
                                    "account_coin_not_enough" == a.tiptype && (b = getRootPath() + "/account/accountmanage.htm?tab=2"),
                                        alert(a.msg),
                                        window.location.href = b
                                } else
                                    alert(a.msg);
                                return !1
                            }
                        }
                    })
            } else
                $("#confirm_button2").removeAttr("disabled"),
                    alert("请输入支付密码");
            return !1
        }),
        $("#cancelCloseDoingTask").click(function() {
            return $("#closeDoingTask").hide(),
                !1
        }),
        $("#suerCloseDoingTask").click(function() {
            $("#suerCloseDoingTask").attr("disabled", "disabled"),
                showWaitingDiv("正在关闭活动...");
            var a = {};
            return a.id = $("#closeTaskId").val(),
                $.ajax({
                    type: "post",
                    url: "sellerCloseDoingTask.htm",
                    data: a,
                    success: function(a) {
                        if (removeWaitingDiv(),
                        "true" == a.flag)
                            $("#closeDoingTask").hide(),
                                alert(a.msg),
                                window.location.href = "/seller/zrwlb.htm";
                        else if ("false" == a.flag)
                            return $("#suerCloseDoingTask").removeAttr("disabled"),
                                alert(a.msg),
                                !1
                    }
                }),
                !1
        }),
        $(".batchAllSpan").click(function() {
            return $(this).prev("img").click(),
                !1
        })
});
