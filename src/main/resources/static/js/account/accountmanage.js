/*!  2018-10-22 */

function tonglianPayTip() {
    var a, b = function() {
        a.close()
    }, c = function() {
        window.location.reload()
    }, d = {
        width: 800,
        overlay_close: !1,
        show_close_button: !1
    };
    a = _showDialog("confirmation", "支付小贴士：", "<span style='font-size: 16px;display: block;margin-bottom: 10px;'>1，若无支付页弹出，请单击浏览器地址栏最右边的带红x按钮，选择“始终允许弹出”。</span><span style='font-size: 16px;display: block;margin-bottom: 10px;'>jquery-zclip-1.1.2，如果银行页面没有打开，请您设置您的浏览器为允许弹出，并确保已经安装了银行的 ActiveX 安全控件，然后点击下面的“返回重新选择支付方式”。</span>", "返回重新选择支付方式", b, "已完成充值", c, d)
}
function sendSMS(a, b) {
    $.ajax({
        type: "post",
        data: {
            phoneNo: a,
            validPhoneNumber: !1,
            code: b
        },
        url: "../sendSms.htm",
        dataType: "json",
        async: !0,
        success: function(a) {
            if ("true" == a.status) {
                alert("短信验证码已发送");
                var b = $("#sendSmsId");
                if ("获取验证码" == b.val()) {
                    var c = 60;
                    int = setInterval(function() {
                        b.attr("disabled", !0),
                            c >= 1 ? b.val("已发送(" + --c + ")") : (clearInterval(int),
                                b.val("获取短信验证码"),
                                b.attr("disabled", !1))
                    }, 1e3)
                }
            } else {
                var d = a.statusCode
                    , e = "";
                e = 0 == d ? "请输入手机号码。" : 1 == d ? "手机号码没有注册。" : 2 == d ? "手机号码有误。" : 5 == d ? "图片验证码错误。" : 6 == d ? a.msg : "未知错误，请联系客服。",
                    alert(e)
            }
        },
        error: function(a, b, c) {
            alert("出错了")
        }
    })
}
function closeImg() {
    $(".contentBox").remove()
}
function initUnionPaySelect() {
    $("#UnionPayBankName").selectize({
        maxItems: 1,
        delimiter: ",",
        persist: !1,
        createOnBlur: !0,
        create: !0,
        items: null
    }),
        $("#UnionIncomeBankName").selectize({
            maxItems: 1,
            delimiter: ",",
            persist: !1,
            createOnBlur: !0,
            create: !0,
            items: null
        })
}
function init() {
    headerStyle(1);
    var a = $("#nav_hidden").val();
    1 == a ? navigatorStyle(6) : 2 == a && navigatorStyle(7),
        hasAccount(),
        initUnionPaySelect()
}
function hasAccount() {
    $("#submitPay").show(),
        $.ajax({
            type: "post",
            url: "/userpayment/findByUid.htm",
            dataType: "json",
            async: !0,
            success: function(a) {
                if (a.length < 1)
                    $("#addAccount").show(),
                        $("#noData").show(),
                        $(".alipay-box .leftext").append("亲还没有绑定支付宝账号，请先绑定后再进行充值");
                else {
                    $(".payBox").show(),
                        $("#aliPay").show(),
                        $(".alipay-box .leftext").append("特别提醒：请使用已绑定的支付宝进行充值，并保持昵称为最新，否则充值无法到账！"),
                        $(".alipay-box .leftext").css("color", "#ff3300");
                    for (var b = "", c = 0; c < a.length; c++)
                        b = b + "<ul><li><h2>" + a[c].pay_name + "</h2><h2>" + a[c].pay_account + "</h2></li><li><p onclick='updata(" + a[c].id + ",this)'>修改</p></li><li><p onclick='del(" + a[c].id + ",this)'>删除</p></li></ul>";
                    $("#accSum").append(b)
                }
            },
            error: function(a, b, c) {
                alert("出错了")
            }
        })
}
function bindAccount() {
    var a = $("#payName").val()
        , b = $("#payAccount").val()
        , c = /^[A-Za-z0-9\u4e00-\u9fa5]+$/
        , d = !0;
    d && (a ? a.length < 2 ? (alert("昵称不得少于2个字符!"),
        d = !1) : c.test(a) || (alert("昵称暂不支持特殊字符，仅限输入中文、英文、数字！"),
        d = !1) : (alert("请输入支付宝昵称！"),
        d = !1),
    b || (alert("请输入支付宝账号！"),
        d = !1),
    d && confirm("是否确认绑定支付宝账号：" + a + "(" + b + ")") && $.ajax({
        type: "post",
        url: "/userpayment/create.htm",
        data: {
            pay_name: a,
            pay_account: b
        },
        dataType: "json",
        success: function(a) {
            console.log(a),
                "0" == a.code ? (alert("添加成功！"),
                    window.location.href = "/saleterrace/zjgl_index") : alert(a.msg)
        },
        error: function(a, b, c) {
            alert("出错了")
        }
    }))
}
function del(a, b) {
    var c = $(b).parents("ul").find("h2").eq(0).text()
        , d = $(b).parents("ul").find("h2").eq(1).text();
    confirm("是否确认删除支付宝账号：" + c + "(" + d + ")") && $.ajax({
        type: "post",
        url: "/userpayment/delete.htm",
        data: {
            id: a
        },
        dataType: "json",
        success: function(a) {
            console.log(a),
                window.location.href = "/saleterrace/zjgl_index"
        },
        error: function(a, b, c) {
            alert("出错了")
        }
    })
}
function updata(a, b) {
    $("#aliPay").hide(),
        $("#addAccount").show();
    var c = $(b).parents("ul").find("h2").eq(0).text()
        , d = $(b).parents("ul").find("h2").eq(1).text();
    $("#payName").val(c),
        $("#payAccount").val(d),
        $("#submitUpdataPay").show(),
        $("#back").show(),
        $("#submitPay").hide(),
        $("#submitUpdataPay").attr("data-id", a)
}
function updataAccount(a) {
    var b = $("#payName").val()
        , c = $("#payAccount").val()
        , d = /^[A-Za-z0-9\u4e00-\u9fa5]+$/
        , e = $(a).attr("data-id")
        , f = !0;
    f && (b ? b.length < 2 ? (alert("昵称不得少于2个字符!"),
        f = !1) : d.test(b) || (alert("昵称暂不支持特殊字符，仅限输入中文、英文、数字！"),
        f = !1) : (alert("请输入支付宝昵称！"),
        f = !1),
    c || (alert("请输入支付宝账号！"),
        f = !1),
    f && confirm("是否确认修改支付宝账号：" + b + "(" + c + ")") && $.ajax({
        type: "post",
        url: "/userpayment/update.htm",
        data: {
            id: e,
            pay_name: b,
            pay_account: c
        },
        dataType: "json",
        success: function(a) {
            console.log(a),
                "0" == a.code ? (alert("修改成功！"),
                    window.location.href = "/saleterrace/zjgl_index") : alert(a.msg)
        },
        error: function(a, b, c) {
            alert("出错了")
        }
    }))
}
function closeImg() {
    $(".contentBox").remove()
}
function whatalipay() {
    $("body").prepend("<div class='contentBox' onclick='closeImg();'><div class='content'><span onclick='closeImg();'>x</span><img src='/asserts/images/nicheng.png' alt=''></div></div>"),
        $(".content").css({
            width: "288px",
            height: "512px",
            margin: "-256px 0 0 -144px"
        }),
        $(".content").click(function() {
            return !1
        })
}
function howset() {
    $("body").prepend("<div class='contentBox' onclick='closeImg();'><div class='content'><span onclick='closeImg();'>x</span><img src='/asserts/images/nichengshezhi.png' alt=''></div></div>"),
        $(".content").css({
            width: "880px",
            height: "441px",
            margin: "-220px 0 0 -440px"
        }),
        $(".content").click(function() {
            return !1
        })
}
function payMethod() {
    var a = $('input[name="unionPayType"]:checked').val();
    1 != a && 2 != a || ($("#cNameOraName").text("转出银行卡持卡人姓名："),
        $("#BankName").text("转出银行名称：")),
    3 == a && ($("#cNameOraName").text("支付宝绑定姓名："),
        $("#BankName").text("转出渠道："))
}
function changeName(a) {
    $("#accountName").val(a)
}
$(function() {
    function a() {
        var a = this;
        a.init = function() {
            a.paySelect(),
                a.weChart(),
                a.closePop(),
                a.popNext(),
                $(".pay-select>a:first").click()
        }
            ,
            a.paySelect = function() {
                $(".pay-select > a").click(function() {
                    if (!$(this).hasClass("active")) {
                        $(this).addClass("active");
                        var a = $(this);
                        $.each($(this).parent().children(), function(b, c) {
                            var d = $(c)
                                , e = d.attr("bind-box-class");
                            if (a[0] == d[0]) {
                                $("." + e).show();
                                var f = d.attr("change-nodify-id");
                                if (f) {
                                    var g = $("#" + f);
                                    g && g.change()
                                }
                                if ("true" == $("#changePay").val())
                                    return void $(".payBefore").hide();
                                "alipay-box" == e ? ($(".payBefore").show(),
                                    $(".alipay-box").hide()) : ($(".payBefore").hide(),
                                    $(".tonglian-box").show())
                            } else
                                $("." + e).hide()
                        }),
                            $(this).siblings("a").removeClass("active")
                    }
                }),
                    $("#sltAlipay").on("click", function() {
                        $(".payBefore").hide(),
                            $(".alipay-box").show()
                    }),
                    $("#sltTlpay,.slt-tlpay").on("click", function() {
                        $(".payBefore").hide(),
                            $(".tonglian-box").show(),
                            $(".unionpay-box").hide(),
                            $(".tonglian").addClass("active").siblings("a").removeClass("active")
                    })
            }
            ,
            a.weChart = function() {
                $("#weChartPayNext").click(function() {
                    var a = ($("#weChartPaySum").val(),
                        $("#weChartPaySum").val());
                    $.ajax({
                        url: "/account/createPayOrder.htm",
                        data: {
                            act: "YU_E_CHONG_ZHI",
                            count: a,
                            paytype: "weixin"
                        },
                        dataType: "json",
                        success: function(a) {
                            a.message ? alert(message) : ($(".moneyNeedPay").html(a.totalFee),
                                $(".zf_mark").html(a.mark),
                                $(".zf_item").html(a.item),
                                $("#lackOfMoney").html(a.totalFee),
                                fadeBitianImage())
                        },
                        error: function(a, b, c) {
                            alert("出错了")
                        }
                    })
                })
            }
            ,
            a.validateWeChartSum = function(a, b, c) {
                var d = /^\d+(\.\d{0,2})?$/;
                if ("" == a)
                    return void alert("充值金额不能为空");
                d.test(a) ? b(c) : alert("请输入正确充值金额！")
            }
            ,
            a.popBox = function(a) {
                a ? ($(".shade").show(),
                    $(".pop-box").show()) : ($(".shade").hide(),
                    $(".pop-box").hide(),
                    $(".pop-step-one").removeClass("hidden"),
                    $(".pop-step-two").addClass("hidden"))
            }
            ,
            a.closePop = function() {
                $("#closedPop").click(function() {
                    a.popBox(!1)
                })
            }
            ,
            a.popNext = function() {
                $("#popOneBtn").click(function() {
                    $(".pop-step-one").addClass("hidden"),
                        $(".pop-step-two").removeClass("hidden")
                }),
                    $("#popTwoPrevBtn").click(function() {
                        $(".pop-step-one").removeClass("hidden"),
                            $(".pop-step-two").addClass("hidden")
                    }),
                    $("#popTwoNextBtn").click(function() {
                        a.popBox(!1),
                            confirmPay()
                    }),
                    $(".pop-step-one").click(function() {})
            }
    }
    if ($("#next-submit-timer").length)
        var b = Number($("#next-submit-timer").attr("delay-submit-time"))
            , c = Number($("#next-submit-timer").attr("now"))
            , d = b - c
            , e = setInterval(function() {
            (d -= 1e3) <= 0 && (d = 0,
                clearInterval(e));
            var a = d / 1e3;
            Math.floor(a / 3600);
            a %= 3600;
            var b = Math.floor(a / 60)
                , c = Math.floor(a % 60);
            0 == d ? ($("#next-submit-timer").hide(),
                $("#moneyUnionPayBtn").removeClass("noSubmit").removeAttr("disabled")) : $("#next-submit-timer .leave-time").text((b < 10 ? "0" + b : b) + " 分钟" + (c < 10 ? "0" + c : c) + "秒")
        }, 1e3);
    $("#bindCardSubmit").click(function() {
        var a = $("#bindCardForm").serialize();
        $.ajax({
            type: "post",
            data: a,
            url: "addbankcard.htm",
            dataType: "json",
            success: function(a, b) {
                $("#bindCardForm .redinput").removeClass("redinput"),
                    $("#addCardErrorMsg").empty();
                var c = !0;
                a.message && ($("#addCardErrorMsg").append(a.message),
                    c = !1);
                var d = a.info;
                if (d) {
                    for (x in d)
                        alert(d[x]),
                            $("#bindCardForm ." + x).addClass("redinput");
                    $("#addCardErrorMsg").append("银行卡信息填写有误"),
                        c = !1
                }
                c && (alert("绑定成功"),
                    location.reload())
            },
            error: function(a, b, c) {
                alert("出错了")
            }
        })
    }),
        $("#upCardSubmit").click(function() {
            var a = $("#bindCardFormUp").serialize();
            $.ajax({
                type: "post",
                data: a,
                url: "updateBankcard.htm",
                dataType: "json",
                success: function(a, b) {
                    $("#bindCardFormUp .redinput").removeClass("redinput"),
                        $("#addCardErrorMsgUp").empty();
                    var c = !0;
                    a.message && ($("#upCardErrorMsg").append(a.message),
                        c = !1);
                    var d = a.info;
                    if (d) {
                        for (x in d)
                            alert(d[x]),
                                $("#bindCardForm ." + x).addClass("redinput"),
                                $("#bindCardFormUp ." + x).addClass("redinput");
                        $("#addCardErrorMsgUp").append("银行卡信息填写有误"),
                            c = !1
                    }
                    c && (alert("修改成功"),
                        location.reload())
                },
                error: function(a, b, c) {
                    alert("出错了")
                }
            })
        }),
        $("#deleteBankCard").click(function() {
            if (confirm("确定删除吗？")) {
                var a = $(this).attr("bankId");
                $.ajax({
                    type: "post",
                    data: {
                        id: a
                    },
                    url: "deleteBankCard.htm",
                    dataType: "json",
                    success: function(a) {
                        location.reload()
                    },
                    error: function(a, b, c) {
                        alert("出错了")
                    }
                })
            }
        }),
        $("#coinAccount").keyup(function() {
            var a = parseFloat($.trim($("#coinAccount").val()));
            if (isNaN(a))
                return void $("#coinTurn").html(0);
            $("#coinTurn").html(a)
        }),
        $("#moneyToCoinAccount").keyup(function() {
            var a = parseFloat($.trim($("#moneyToCoinAccount").val()));
            if (isNaN(a))
                return void $("#moneyToCoinTurn").html(0);
            $("#moneyToCoinTurn").html(a)
        }),
        $("#coinToMoneyAccount").keyup(function() {
            var a = parseFloat($.trim($("#coinToMoneyAccount").val()));
            if (isNaN(a))
                return void $("#coinToMoneyTurn").html(0);
            $("#coinToMoneyTurn").html(a)
        }),
        $("#moneyOutB").click(function() {
            var a = parseFloat($.trim($("#moneyOutC").val()))
                , b = $.trim($("#moneyOutP").val()) + "";
            if (isNaN(a))
                return void alert("请正确输入");
            if ("SELLER" == $("#role").val()) {
                if (a < 1)
                    return void alert("提现金额1起")
            } else if ("BUYER" == $("#role").val() && a < 1)
                return void alert("提现金额1起");
            $.ajax({
                type: "post",
                dataType: "json",
                data: {
                    money: a,
                    at: "YU_E",
                    pwd: b
                },
                url: "dowithdraw.htm",
                success: function(a) {
                    0 == a ? (alert("提现申请成功,当日12:00-当日15:00间申请提现的，在当日15:00处理；当日15:00-次日12:00间申请提现的，在次日12:00处理，你可以在提现记录中查看进度！"),
                        location.reload()) : alert(a.message)
                },
                error: function(a, b, c) {
                    alert("出错了")
                }
            })
        }),
        $("#coinOutB").click(function() {
            var a = $.trim(parseFloat($("#coinOutC").val()))
                , b = $("#coinOutP").val().trim();
            return isNaN(a) ? void alert("请正确输入") : a < 30 ? void alert("提现金币30起") : void $.ajax({
                type: "post",
                data: {
                    money: a,
                    at: "JIN_BI",
                    pwd: b
                },
                url: "dowithdraw.htm",
                success: function(a) {
                    0 == a ? (alert("提现申请成功，当日12:00-当日15:00间申请提现的，在当日15:00处理；当日15:00-次日12:00间申请提现的，在次日12:00处理，你可以提现记录中查看提现进度！"),
                        location.reload()) : alert(a.message)
                },
                error: function(a, b, c) {
                    alert("出错了")
                }
            })
        }),
        $("#sendSmsId").click(function() {
            var a = parseInt($.trim($("#phoneNoId").val()))
                , b = /^1[0-9]{10}/;
            if (null == a || !b.test(a))
                return void alert("请填写正确的手机号码");
            var c = $("#verifyCode").val();
            if (!c)
                return void alert("请输入图片验证码");
            sendSMS(a, c)
        }),
        $("#sendSmsIdUp").click(function() {
            var a = parseInt($.trim($("#phoneNoIdUp").val()))
                , b = /^1[0-9]{10}/;
            if (null == a || !b.test(a))
                return void alert("请填写正确的手机号码");
            var c = $("#verifyCodeUp").val();
            if (!c)
                return void alert("请输入图片验证码");
            sendSMS(a, c)
        }),
        $("#weChartPaySum,#moneyAccount").bind("input propertychange change", function() {
            var a = parseFloat(parseFloat($(this).val()).toFixed(2))
                , b = $(this).attr("pay-type");
            $.ajax({
                url: "/account/getFeeInfo.htm",
                data: {
                    fee: a,
                    payType: b
                },
                dataType: "json",
                success: function(a) {
                    "success" == a.code ? ($(".totalFee").text(a.totalFee),
                        $(".chargeFee").text(a.price),
                        $(".poundageFee").text(a.poundage)) : alert(a.msg)
                },
                error: function(a, b, c) {
                    alert("出错了")
                }
            })
        }),
        $("#moneyUnionPayBtn").click(function() {
            $("#moneyUnionPayBtn").attr("disabled", "disabled");
            var a = $("#moneyUnionPayAccount").val()
                , b = $('input[name="unionPayType"]:checked').val()
                , c = $("#UnionPayUserName").val()
                , d = $("#UnionPayBankName").val()
                , e = $("#UnionIncomeBankName").val();
            return b ? 0 == c.length ? (alert("请输入持卡人名称"),
                void $("#moneyUnionPayBtn").removeAttr("disabled")) : 0 == d.length ? (alert("请选择/输入转出银行名称"),
                void $("#moneyUnionPayBtn").removeAttr("disabled")) : 0 == e.length ? (alert("请选择转入银行名称"),
                void $("#moneyUnionPayAccount").removeAttr("disabled")) : "" == a ? (alert("充值金额不能为空"),
                void $("#moneyUnionPayBtn").removeAttr("disabled")) : /^\d+(\.\d{0,2})?$/.test(a) ? [998, 1398, 1798, 2398, 8998, 998, 1398, 1798, 2398, 8998, 998, 1398, 1798, 2398, 8998].includes(parseFloat(a)) ? (alert("部分数额（998,1398,1798,2398,8998）无法正常提交，请联系客服处理。"),
                void $("#moneyUnionPayBtn").removeAttr("disabled")) : void $.ajax({
                url: "/account/createPayOrder.htm",
                data: {
                    act: "YU_E_CHONG_ZHI",
                    count: a,
                    paytype: "unionpay",
                    payChannel: b,
                    payUserName: c,
                    payBankName: d,
                    incomeBankName: e
                },
                dataType: "json",
                success: function(a) {
                    function b() {
                        window.open("http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852368898", "_BLANK"),
                            window.location.href = "/saleterrace/zjgl_index"
                    }
                    function c() {
                        window.location.href = "/saleterrace/zjgl_index"
                    }
                    a.flag ? showImportDialog("提示", "已成功提交，如果15分钟之后没有到账请联系客服处理", b, c) : (alert(a.msg),
                        $("#moneyUnionPayBtn").removeAttr("disabled"))
                },
                error: function(a, b, c) {
                    alert("出错了"),
                        window.location.href = "/saleterrace/zjgl_index"
                }
            }) : (alert("请输入正确充值金额！"),
                void $("#moneyUnionPayBtn").removeAttr("disabled")) : (alert("请选择支付渠道"),
                void $("#moneyUnionPayBtn").removeAttr("disabled"))
        }),
        $(".addAccountRight .bottom p").click(function() {
            var a = 0;
            $("#accSum").find("ul").each(function() {
                a += 1
            }),
                a < 3 ? (a > 0 && $("#back").show(),
                    $("#aliPay").hide(),
                    $("#submitUpdataPay").hide(),
                    $("#addAccount").show(),
                    $("#submitPay").show(),
                    $("#payName").val(""),
                    $("#payAccount").val("")) : alert("最多绑定3个支付宝账号!")
        }),
        $("#back").click(function() {
            $("#back").hide(),
                $("#submitPay").hide(),
                $("#addAccount").hide(),
                $("#submitUpdataPay").show(),
                $("#aliPay").show()
        }),
        (new a).init()
});
