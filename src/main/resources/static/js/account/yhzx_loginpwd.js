/*!  2018-10-22 */

function checkSubmit() {
    var a = parseInt($.trim($("#phoneNoId").val()))
        , b = $("#verifyCode").val()
        , c = /^1[0-9]{10}/;
    return null != a && c.test(a) ? !!b || (alert("请填写图片验证码"),
        !1) : (alert("请填写正确的手机号码"),
        !1)
}
function changeCode() {
    $(".randomCodeImg").attr("src", "/auth/code.htm?_" + (new Date).getTime())
}
function sendSMS(a, b, c) {
    $.ajax({
        type: "post",
        data: {
            phoneNo: a,
            checkExists: !0,
            code: b,
            voice: c
        },
        url: "../sendSms.htm",
        dataType: "json",
        async: !0,
        success: function(a) {
            if ("true" == a.status) {
                c ? alert("语音验证码发送中，您将会收到从0514-82043269打开的电话，请放心接听") : alert("短信验证码已发送");
                var b = $("#sendSmsId");
                if ("获取短信验证码" == b.val()) {
                    var d = 60;
                    int = setInterval(function() {
                        b.attr("disabled", !0),
                            d >= 1 ? b.val("已发送(" + --d + ")") : (clearInterval(int),
                                b.val("获取短信验证码"),
                                b.attr("disabled", !1))
                    }, 1e3)
                }
            } else {
                var e = a.statusCode
                    , f = "";
                f = 0 == e ? "请输入手机号码。" : 1 == e ? "手机号码没有注册。" : 2 == e ? "手机号码有误。" : 5 == e ? "图片验证码错误。" : 6 == e ? a.msg : "未知错误，请联系客服。",
                    alert(f)
            }
        },
        error: function(a, b, c) {
            alert("出错了")
        }
    })
}
function getRolePath(a) {
    var b;
    return b = a ? parseInt(a) : $("#role").val(),
        1 == b ? "seller" : 3 == b ? "buyer_admin" : "buyer"
}
function getRootPath() {
    var a = window.document.location.href
        , b = window.document.location.pathname
        , c = a.indexOf(b)
        , d = a.substring(0, c);
    b.substring(0, b.substr(1).indexOf("/") + 1);
    return d
}
$(function() {
    $("#passwordNewS").click(function() {
        if ($.trim($("#passwordNew").val()) != $("#passwordNew2").val().trim())
            return void alert("两次密码不一致");
        var a = $("#passwordF").serialize();
        $.ajax({
            type: "post",
            data: a,
            url: "setuseraccountloginpwd.htm",
            dataType: "json",
            success: function(a, b) {
                var c = !0;
                a.message && (alert(a.message),
                    c = !1),
                c && (alert("设置成功"),
                    window.location.href = getRootPath() + "/" + getRolePath() + "/index.htm")
            },
            error: function(a, b, c) {
                alert("出错了")
            }
        })
    }),
        $("#passwordS2").click(function() {
            if ($.trim($("#password3").val()) != $.trim($("#password4").val()))
                return void alert("两次密码不一致");
            var a = $("#passwordF2").serialize()
                , b = "setuseraccountloginpwd.htm";
            $("#forgetFlag").val() && (b = "setforgetloginpwd.htm"),
                $.ajax({
                    type: "post",
                    data: a,
                    url: b,
                    dataType: "json",
                    success: function(a, b) {
                        var c = !0;
                        if (a.message && (alert(a.message),
                            c = !1),
                            c) {
                            alert("设置成功");
                            var d;
                            a.role ? window.location.href = "/" : (d = getRolePath(),
                                window.location.href = getRootPath() + "/" + d + "/index.htm")
                        }
                    },
                    error: function(a, b, c) {
                        alert("出错了")
                    }
                })
        }),
        $("#sendSmsId").click(function() {
            if (checkSubmit()) {
                sendSMS(parseInt($.trim($("#phoneNoId").val())), $("#verifyCode").val(), !1)
            }
        }),
        $("#voice_check").click(function() {
            if (!$("#sendSmsId").attr("disabled") && checkSubmit()) {
                sendSMS(parseInt($.trim($("#phoneNoId").val())), $("#verifyCode").val(), !0)
            }
        })
});
