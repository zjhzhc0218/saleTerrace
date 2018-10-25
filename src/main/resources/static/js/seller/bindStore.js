/*!  2018-10-22 */

function bindEvent() {}
function addStore(a) {
    var b = a;
    "jd" == b ? ($(".dp_list_div").addClass("hidden"),
        $("#ignoreCheckStore").val(""),
        $("#yzm").hide(),
        $(".bindWay").show(),
        $(".screenBox").show(),
        $("#otherShop").hide(),
        $("#picUrl").attr("href", "/saleterrace/images/JDstoreBind.png"),
        $("#changeType1").text("京东店铺名称："),
        $("#changeType2").html("（<span>*</span>店铺名称绑定后不可更改）"),
        $("#doSubmitCheck").attr("onclick", "doSubmitJD()"),
        generateValidCode()) : "pdd" == b ? ($(".dp_list_div").addClass("hidden"),
        $("#yzm").hide(),
        $(".bindWay").show(),
        $(".screenBox").show(),
        $("#otherShop").hide(),
        $("#picUrl").attr("href", "/saleterrace/images/PDDstoreBind.png"),
        $("#shopUrl").addClass("hidden"),
        $("#changeType1").text("拼多多店铺名称："),
        $("#changeType2").html("（<span>*</span>店铺名称绑定后不可更改）"),
        $("#doSubmitCheck").attr("onclick", "doSubmitPDD()"),
        generateValidCode()) : "other" == b ? ($(".dp_list_div").addClass("hidden"),
        $("#JD").hide(),
        $(".bindWay").show(),
        $(".screenBox").show(),
        $("#otherShop").show(),
        $("#ignoreCheckStore").val(1),
        $("#picUrl").attr("href", "/saleterrace/images/dianpubangding02.png"),
        $("#changeType1").text("请输入掌柜旺旺："),
        $("#changeType2").html("（<span>*</span>店铺名称绑定后不可更改）"),
        generateValidCode()) : ($(".dp_list_div").addClass("hidden"),
        $("#ignoreCheckStore").val(""),
        $("#otherShop").hide(),
        $("#picUrl").attr("href", "/saleterrace/images/dianpubangding02.png"),
        $(".bindWay").show(),
        $(".screenBox").show(),
        generateValidCode())
}
function successSetValueCallBack(a, b) {
    $("#storeCheckImgShow").attr("src", getCosRootPath() + b + "!small90"),
        $("#storeCheckImg").val(b)
}
function successCallBack(a) {}
function errorCallBack(a) {
    alert("上传失败，请重试！")
}
function storeImg(a) {}
function successEditSetValueCallBack(a, b) {
    $("#storeCheckImgShowEdit").attr("src", getCosRootPath() + b + "!small90"),
        $("#storeCheckImgEdit").val(b)
}
function init() {
    headerStyle(1),
        navigatorStyle(1),
        province($("#sendProvince")),
        "r" == request("rt") ? (generateValidCode(),
            $(".mainDiv").css("width", "1200px"),
            $("#Content-Left").addClass("hidden"),
            $("#Content-Space").addClass("hidden"),
            $(".headMenu").addClass("hidden"),
            $(".dp_list_div").addClass("hidden"),
            $(".return_a").addClass("hidden"),
            $(".new_dp").removeClass("hidden"),
            $(".return_j").removeClass("hidden"),
            $(".bd_button").unbind("click"),
            $(".bd_button").bind("click", function() {
                bindSendAddr(!0)
            })) : ($(".mainDiv").css("width", "1000px"),
            $("#Content-Left").removeClass("hidden"),
            $("#Content-Space").removeClass("hidden"),
            $(".headMenu").removeClass("hidden"),
            $(".new_dp").addClass("hidden"),
            $(".dp_list_div").removeClass("hidden"),
            $(".return_a").removeClass("hidden"),
            $(".dp_check").addClass("hidden"),
            $(".return_j").addClass("hidden"),
            $(".bd_button").unbind("click"),
            $(".bd_button").bind("click", function() {
                bindSendAddr(!1)
            }),
            storeInfo())
}
function bindStoreOperator() {
    $(".dp_li6>img").on("click", function(a) {
        if (!$(this).hasClass("ignoreClass")) {
            var b = $(this);
            changeStatusAction(loadData(b), !1)
        }
    })
}
function finishBind(a) {
    "确认修改" == $(".bd_button").val() ? alert("店铺信息修改成功") : alert("店铺绑定成功"),
        window.location.href = "/seller/bindStore.htm?rt=n"
}
function changeStatusAction(a, b) {
    $.ajax({
        type: "post",
        url: getRootPath() + "/seller/bind/change_status.htm",
        data: a,
        success: function(a) {
            var c = a.status
                , d = $("#storeType").val();
            c && (clearBindInfo(),
                b ? window.location.href = getRootPath() + "/seller/index.htm" : 4 == d ? storeInfo(4) : 5 == d ? storeInfo(5) : storeInfo())
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function storeInfo(a) {
    $.ajax({
        type: "post",
        url: getRootPath() + "/seller/bind/store_list.htm",
        data: {
            storeType: a
        },
        success: function(a) {
            for (var b, c = a.length, d = new Date, e = 0; e < c; e++) {
                var f = a[e];
                if (b = f.storeType,
                4 != b && 5 != b || (f.wangwangid = ""),
                f.shopName.length > 8) {
                    var g;
                    g = f.shopName.length % 8 == 0 ? f.shopName.length / 8 : parseInt(f.shopName.length / 8) + 1,
                        $("#storeInfo .dp_li7").eq(e).find("div").css("top", 40 - 10 * (g - 1) + "px")
                }
                f.operator && (0 == f.status || 4 == f.status ? f.operator = "<img style='cursor: auto;' class='ignoreClass' src='" + getRootPath() + "/asserts/images/" + f.operator + "' /><input type='hidden' id='storeType' value='" + f.storeType + "'><div style='position: absolute;top: 23px;left: 23px;color: #59C2E6;width: 110px;height: 0px;'><a style='color: #59C2E6' href='javascript:editSendBind(" + f.id + ',"' + f.storeType + "\")' >编辑</a></div>" : 5 == f.status ? f.operator = "<img  style='cursor: auto;' class='ignoreClass' src='" + getRootPath() + "/asserts/images/" + f.operator + "' /><input type='hidden' id='storeType' value='" + f.storeType + "'><div style='position: absolute;top: 23px;left: 23px;color: #59C2E6;width: 110px;height: 0px'><a style='color: #59C2E6' href='javascript:editSendInfo(" + f.id + ',"' + f.storeType + "\")' >编辑</a> <span style='color: #59C2E6;font-size: 14px'></div>" : f.operator = "<img src='" + getRootPath() + "/asserts/images/" + f.operator + "' /><input type='hidden' id='storeType' value='" + f.storeType + "'><div style='position: absolute;top: 23px;left: 23px;color: #59C2E6;width: 110px;height: 0px'><a style='color: #59C2E6' href='javascript:editSendInfo(" + f.id + ',"' + f.storeType + "\")' >编辑</a></div>");
                var h, i = f.tbSessionKey;
                if (i && i.length > 0) {
                    var j = f.hbsExpireTime
                        , k = new Date(j)
                        , l = k.getFullYear() + "-" + (k.getMonth() + 1) + "-" + k.getDate();
                    h = d.getTime() > j ? "<span style='color: darkgrey'>已过期</span>" : "<span style='color: #009900;'>已授权</span><div style='position: absolute;top: 23px;color:#59C2E6;width: 117px;height: 0px'>到期:" + l + "</div>"
                } else
                    h = "<span style='color: #FF0000;'>已下线，无法订购</span>";
                f.hbsStatusText = h;
                var m = f.repurchaseDay;
                m || (m = 30),
                    f.repurchaseDayText = "<span>" + m + "天</span><button class='repurchaseDay' onclick='setRepurchaseDay(" + f.id + ',"' + f.repurchaseDay + "\")'>设置</button>"
            }
            4 == b || 5 == b ? $("#storeInfo").loadTemplate("#jdstoreInfoRow", a) : $("#storeInfo").loadTemplate("#storeInfoRow", a),
                bindStoreOperator(),
                $("#Content").height($(".mainDiv").height())
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function gotohbsOrder() {
    window.open("https://login.taobao.com/member/login.jhtml?f=top&redirectURL=https%3A%2F%2Ffuwu.taobao.com%2Fser%2Fdetail.htm%3Fservice_code%3DFW_GOODS-1862410", "_blank")
}
function gotohbsAuthorize() {
    window.open("https://oauth.taobao.com/authorize?response_type=code&client_id=21447047&redirect_uri=http%3A%2F%2F120.26.194.176%2Fhbs%2Findex.action&from_site=fuwu", "_blank")
}
function removeBindSeller(a, b) {
    $.ajax({
        type: "get",
        url: getRootPath() + "/seller/bind/checkTaskExist.htm?id=" + a,
        dataType: "json",
        success: function(c) {
            c.flag ? doSubmitRemoveBindSeller(b, a) : doSubmitRemoveBindSeller(b, a, c.status)
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function doSubmitRemoveBindSeller(a, b, c) {
    c ? "processing_exist" == c ? ($("body").append('<div class="CloseTask" style="position: fixed;left: 0px;top: 0px;opacity: 0.9;background: #666;\tz-index: 1010;\twidth: 100%;height: 100%;"></div><div class="CloseTask" style="position: fixed;left: 50%;top: 50%;width: 500px;height: 244px;margin-top: -122px;margin-left: -250px;z-index: 10010;background-color: #ffffff;border-radius: 15px;opacity: 1;"><div><p style="font-size: 20px;color: #666666;text-align: center;margin-top: 55px;">亲还有未完成的活动哦:(</p><p style="font-size: 17px;margin-top: 20px;padding-left: 31px;color: #9F9F9F;">亲还有进行中的活动，请先完成所有活动后再删除店铺。</p></div><div><div id="goToMyTask" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 120px;height: 40px;font-size: 16px;color: #ffffff;cursor: pointer;line-height: 40px;margin: 34px 0 0 100px;">处理活动</div><div id="cancelCloseTask" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 120px;height: 40px;font-size: 16px;color: #ffffff;cursor: pointer;line-height: 40px;margin: 34px 0 0 44px;">取消</div></div></div>'),
        $("#goToMyTask").click(function() {
            window.location.href = "/seller/zrwlb.htm"
        })) : "unReceive_exist" == c && $("body").append('<div class="CloseTask" style="position: fixed;left: 0px;top: 0px;opacity: 0.9;background: #666;\tz-index: 1010;\twidth: 100%;height: 100%;"></div><div class="CloseTask" style="position: fixed;left: 50%;top: 50%;width: 500px;height: 277px;margin-top: -122px;margin-left: -250px;z-index: 10010;background-color: #ffffff;border-radius: 15px;opacity: 1;"><div><p style="font-size: 20px;color: #666666;text-align: center;margin-top: 55px;">确认删除“' + a + '”吗？</p><p style="font-size: 15px;margin-top: 20px;padding-left: 31px;color: #9F9F9F;">删除后将无法发布该店铺的活动，若再次绑定需重新进行店铺验证</p><p style="font-size:16px;margin-top: 20px;padding-left: 31px;color: #ff0000;margin-left: 40px;">亲还有未接手活动，删除店铺后活动将同步关闭!</p></div><div><div id="confirmCloseTask" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 120px;height: 40px;font-size: 16px;color: #ffffff;cursor: pointer;line-height: 40px;margin: 34px 0 0 100px;">确认删除</div><div id="cancelCloseTask" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 120px;height: 40px;font-size: 16px;color: #ffffff;cursor: pointer;line-height: 40px;margin: 34px 0 0 44px;">取消</div></div></div>') : $("body").append('<div class="CloseTask" style="position: fixed;left: 0px;top: 0px;opacity: 0.9;background: #666;\tz-index: 1010;\twidth: 100%;height: 100%;"></div><div class="CloseTask" style="position: fixed;left: 50%;top: 50%;width: 500px;height: 244px;margin-top: -122px;margin-left: -250px;z-index: 10010;background-color: #ffffff;border-radius: 15px;opacity: 1;"><div><p style="font-size: 20px;color: #666666;text-align: center;margin-top: 55px;">确认删除“' + a + '”吗？</p><p style="font-size: 15px;margin-top: 20px;padding-left: 31px;color: #9F9F9F;">删除后将无法发布该店铺的活动，若再次绑定需重新进行店铺验证</p></div><div><div id="confirmCloseTask" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 120px;height: 40px;font-size: 16px;color: #ffffff;cursor: pointer;line-height: 40px;margin: 34px 0 0 100px;">确认删除</div><div id="cancelCloseTask" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 120px;height: 40px;font-size: 16px;color: #ffffff;cursor: pointer;line-height: 40px;margin: 34px 0 0 44px;">取消</div></div></div>'),
        $("#cancelCloseTask").click(function() {
            $(".CloseTask").remove()
        }),
    $("#confirmCloseTask").size() > 0 && $("#confirmCloseTask").click(function() {
        var a = $("#storeType").val();
        $(".CloseTask").remove(),
            $.ajax({
                type: "get",
                url: getRootPath() + "/seller/bind/remove_bind_seller.htm?id=" + b + "&st=" + a,
                dataType: "json",
                success: function(a) {
                    a.flag ? (alert("店铺删除成功"),
                        window.location.href = "bindStore.htm?rt=n") : alert(a.status)
                },
                error: function(a, b, c) {
                    alert(c)
                }
            })
    })
}
function clearBindInfo() {
    $("#wangwangid").attr("disabled", !1);
    $("#wangwangid").val(""),
        $(".tb_valid_code").text(""),
        $("#goodUrl").val(""),
        $("#storeUrl").val("")
}
function generateValidCode() {
    $.ajax({
        type: "post",
        url: getRootPath() + "/seller/bind/generateCode.htm",
        data: {},
        success: function(a) {
            var b = a.bindValidCode;
            b && $(".tb_valid_code").text(b)
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function checkMobile(a) {
    var b = /^0(\d{2,3}|\d{2,3}-)?\d{7,8}$/;
    return !!/^1\d{10}$/.test(a) || !!b.test(a)
}
function bindSendAddr(a) {
    var b = !1;
    $("#sendInfoId").val() && (b || $("#storeCheckImgEdit").val() || (alert("请上传后台截图"),
        b = !0),
    b || $("#shopNameEdit").val() || (alert("请填写店铺名称"),
        b = !0)),
    b || $.ajax({
        type: "post",
        url: getRootPath() + "/seller/bind/bindSendInfo.htm",
        data: {
            id: $("#sendInfoId").val(),
            version: $("#sendInfoVersion").val(),
            sellerId: $("#bsid").val(),
            storeName: $("#shopNameEdit").val(),
            storeUrl: $("#storeCheckImgEdit").val()
        },
        success: function(b) {
            b.status ? finishBind(a) : alert("修改失败!")
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function editSendInfo(a, b) {
    $(".bd_button").val("确认修改"),
        $(".check_title_div p").html("修改店铺名称"),
        $(".dp_list_div").addClass("hidden"),
        $(".new_dp").removeClass("hidden"),
        $(".dp_check").removeClass("hidden").siblings("div").addClass("hidden"),
        $.ajax({
            type: "post",
            url: "/seller/bind/get_store_and_send_info.htm",
            data: {
                storeId: a,
                storeType: b
            },
            dataType: "json",
            cache: !1,
            success: function(a) {
                a && ($("#wangwangid").attr("disabled", !0),
                    $(".dp_account").text(a.sellerBindDto.wangwangid),
                    $(".dp_name").text(a.sellerBindDto.shopName),
                    $(".dp_location").text(a.sellerBindDto.sendAddr),
                    $("#shopNameEdit").val(a.sellerBindDto.shopName),
                    $("#storeCheckImgEdit").val(a.sellerBindDto.storeUrl),
                    $("#storeCheckImgShowEdit").attr("src", getCosRootPath() + a.sellerBindDto.storeUrl + "!orgin75"),
                    $(".dp_check").removeClass("hidden"),
                    4 == a.sellerBindDto.storeType || 5 == a.sellerBindDto.storeType ? $("#zgww").hide() : $("#zgww").show(),
                    5 == a.sellerBindDto.status ? ($(".bd_button").after("<span style='color: red;margin-left: 25px'>【冻结】" + a.sellerBindDto.assessReason + "</span>"),
                        $(".bd_button").unbind("click"),
                        $(".bd_button").bind("click", function() {
                            alert("该店铺已被冻结，若有疑问请联系客服！")
                        })) : ($("#bsid").val(a.sellerBindDto.id),
                        $("#bsstatus").val(a.sellerBindDto.status),
                        $("#bsversion").val(a.sellerBindDto.version + 1)))
            },
            error: function(a, b, c) {
                alert(c)
            }
        })
}
function doSubmit() {
    var a = !0
        , b = $("#wwId").val().trim();
    if (isBlank(b) ? (a = !1,
        alert("请输入旺旺号")) : $("#wwId").val(b),
    a && 1 == $("#ignoreCheckStore").val()) {
        var c = $("#shopName").val();
        isBlank(c) && (a = !1,
            alert("请输入店铺名称"))
    }
    if (a && isBlank($("#storeUrl").val()) && (a = !1,
        alert("请输入店铺首页网址")),
    a && isBlank($("#storeCheckImg").val()) && (checkImageType($("#infoForm")) || (a = !1,
        alert("请上传店铺后台截图"))),
    a && showWaitingDiv("正在验证店铺..."),
        a) {
        var d = {
            target: "#infoForm",
            dataType: "json",
            cache: !1,
            data: {
                id: $("#storeId").val()
            },
            beforeSubmit: function(a, b) {},
            error: function(a) {},
            success: function(a) {
                removeWaitingDiv();
                var b = a.errorMsg
                    , c = a.bindStatus;
                b ? alert(b) : "success" == c ? (alert("店铺已提交审核，请耐心等待！"),
                    window.location.reload()) : "failure" == c ? alert("店铺提交审核失败！") : alert("未知错误！")
            }
        };
        $("#infoForm").ajaxSubmit(d)
    }
}
function doSubmitJD() {
    $("#doSubmitCheck").after("<input type='hidden' name='storeType' value='4'>");
    var a = !0;
    if (a && isBlank($("#wwId").val()) && (a = !1,
        alert("请输入店铺名称")),
    a && isBlank($("#storeUrl").val()) && (a = !1,
        alert("请输入店铺首页网址")),
    a && isBlank($("#storeCheckImg").val()) && (checkImageType($("#infoForm")) || (a = !1,
        alert("请上传店铺后台截图"))),
    a && showWaitingDiv("正在验证店铺..."),
        a) {
        var b = {
            target: "#infoForm",
            dataType: "json",
            cache: !1,
            data: {
                id: $("#storeId").val()
            },
            beforeSubmit: function(a, b) {},
            error: function(a) {},
            success: function(a) {
                removeWaitingDiv();
                var b = a.errorMsg
                    , c = a.bindStatus;
                b ? alert(b) : "success" == c ? (alert("店铺已提交审核，请耐心等待！"),
                    window.location.reload()) : "failure" == c ? alert("店铺提交审核失败！") : alert("未知错误！")
            }
        };
        $("#infoForm").ajaxSubmit(b)
    }
}
function doSubmitPDD() {
    $("#doSubmitCheck").after("<input type='hidden' name='storeType' value='5'>");
    var a = !0;
    if (a && isBlank($("#wwId").val()) && (a = !1,
        alert("请输入店铺名称")),
    a && isBlank($("#storeCheckImg").val()) && (checkImageType($("#infoForm")) || (a = !1,
        alert("请上传店铺后台截图"))),
    a && showWaitingDiv("正在验证店铺..."),
        a) {
        var b = {
            target: "#infoForm",
            dataType: "json",
            cache: !1,
            data: {
                id: $("#storeId").val()
            },
            beforeSubmit: function(a, b) {},
            error: function(a) {},
            success: function(a) {
                removeWaitingDiv();
                var b = a.errorMsg
                    , c = a.bindStatus;
                b ? alert(b) : "success" == c ? (alert("店铺已提交审核，请耐心等待！"),
                    window.location.reload()) : "failure" == c ? alert("店铺提交审核失败！") : alert("未知错误！")
            }
        };
        $("#infoForm").ajaxSubmit(b)
    }
}
function getFileUrl(a) {
    var b, c = navigator.userAgent;
    return c.indexOf("MSIE") >= 0 ? b = a.value : (c.indexOf("Firefox") > 0 || c.indexOf("Chrome") > 0) && (b = window.URL.createObjectURL(a.files.item(0))),
        b
}
function goCheckCodeValidate(a) {
    $.ajax({
        type: "post",
        url: "/seller/bind/get_store_and_send_info.htm",
        data: {
            storeId: a
        },
        dataType: "json",
        cache: !1,
        success: function(a) {
            a && (0 == a.sellerBindDto.status ? ($("#wwId").val(a.sellerBindDto.wangwangid).attr("readonly", "readonly"),
                $("#storeUrl").val(a.sellerBindDto.storeUrl).attr("readonly", "readonly"),
                $("#storeCheckImgShow").attr("src", getCosRootPath() + a.sellerBindDto.storeCheckImg + "!orgin75"),
                $("#doSubmitCheck").after("<span style='color: red;margin-left: 25px'>【审核中】请等待...</span>"),
                $("#doSubmitCheck").removeAttr("onclick").attr("disabled", "disabled").css("background-color", "#cccccc"),
                $("#wangwangid").val(a.sellerBindDto.wangwangid).attr("readonly", "readonly")) : 4 == a.sellerBindDto.status && ($("#wwId").val(a.sellerBindDto.wangwangid),
                $("#storeUrl").val(a.sellerBindDto.storeUrl),
                $("#storeCheckImgShow").attr("src", getCosRootPath() + a.sellerBindDto.storeCheckImg + "!orgin75"),
                $("#wangwangid").val(a.sellerBindDto.wangwangid),
                $("#storeCheckImg").val(a.sellerBindDto.storeCheckImg),
                $("#doSubmitCheck").val("重新提交审核").after("<span style='color: red;margin-left: 25px'>【审核不通过】" + a.sellerBindDto.assessReason + "</span>")),
                $(".addDp_button").click(),
                $(".bindWay li").eq(1).click(),
                $("#storeId").val(a.sellerBindDto.id))
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function editSendBind(a, b) {
    $.ajax({
        type: "post",
        url: "/seller/bind/get_store_and_send_info.htm",
        data: {
            storeId: a,
            storeType: b
        },
        dataType: "json",
        cache: !1,
        success: function(a) {
            a && (0 == a.sellerBindDto.status ? ($("#wwId").val(a.sellerBindDto.wangwangid).attr("readonly", "readonly"),
                $("#storeUrl").val(a.sellerBindDto.storeUrl).attr("readonly", "readonly"),
                $("#shopName").val(a.sellerBindDto.shopName).attr("readonly", "readonly"),
                $("#storeCheckImgShow").attr("src", getCosRootPath() + a.sellerBindDto.storeCheckImg + "!orgin75"),
                $("#doSubmitCheck").after("<span style='color: red;margin-left: 25px'>【审核中】请等待...</span>"),
                $("#doSubmitCheck").removeAttr("onclick").attr("disabled", "disabled").css("background-color", "#cccccc"),
                $("#wangwangid").val(a.sellerBindDto.wangwangid).attr("readonly", "readonly")) : 4 == a.sellerBindDto.status && ($("#wwId").val(a.sellerBindDto.wangwangid),
                $("#storeUrl").val(a.sellerBindDto.storeUrl),
                $("#shopName").val(a.sellerBindDto.shopName),
                $("#storeCheckImgShow").attr("src", getCosRootPath() + a.sellerBindDto.storeCheckImg + "!orgin75"),
                $("#wangwangid").val(a.sellerBindDto.wangwangid),
                $("#storeCheckImg").val(a.sellerBindDto.storeCheckImg),
                $("#doSubmitCheck").val("重新提交审核").after("<span style='color: red;margin-left: 25px'>【审核不通过】" + a.sellerBindDto.assessReason + "</span>")),
                $("#id").val(a.sellerBindDto.id),
                4 == a.sellerBindDto.storeType ? (addStore("jd"),
                    $("#zgww").hide()) : 5 == a.sellerBindDto.storeType ? (addStore("pdd"),
                    $("#zgww").hide()) : (addStore("other"),
                    $("#zgww").show()))
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function setRepurchaseDay(a, b) {
    $("body").append('<div class="CloseTask" style="position: fixed;left: 0px;top: 0px;opacity: 0.9;background: #666;z-index: 1010;width: 100%;height: 100%;"></div><div class="CloseTask" id="repurchaseDayDiv" style="position: fixed;left: 50%;top: 50%;width: 780px;height: 350px;margin-top: -175px;margin-left: -350px;z-index: 10010;background-color: #ffffff;border-radius: 15px;opacity: 1;"><div class="close-box" ><div ><p style="font-size: 22px;color: #666666;padding-left: 50px;margin-top: 40px;">试用间隔时间限制设置</p><hr><p style="font-size: 16px;margin-top: 15px;padding-left: 50px;">限制时间指用户第一次接活动与第二次接活动之间的时间间隔，不同类目的商家，用户的平均回购时</p><p style="font-size: 16px;margin-top: 15px;padding-left: 50px;">间都不同，适当比例的用户回购对店铺和商品权重有很大好处，所以我们开放了商家店铺对用户的间</p><p style="font-size: 16px;margin-top: 15px;padding-left: 50px;">隔时间设置，大家可以根据自己类目和店铺的需要在规定区间内设置：</p><p style="font-size: 16px;margin-top: 15px;padding-left: 50px;margin-left: 330px;">试用间隔<input type="text" name="repurchaseDay" id="repurchaseDay" onkeyup="onlyNum(this);" value="' + b + '" style="margin: 0 5px 5px 5px;width: 70px;height: 25px;">天</p></div><div><button id="confirmRepurchaseDay" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 130px;height: 45px;font-size: 18px;color: #ffffff;cursor: pointer;line-height: 45px;margin: 34px 0 0 220px;">确认提交</button><button id="cancelRepurchaseDay" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 130px;height: 45px;font-size: 18px;color: #ffffff;cursor: pointer;line-height: 45px;margin: 34px 0 0 100px;">取消退出</button></div></div><div style="display: none;" class="closeTask-delicate2" ><p style="font-size: 22px;color: #666666;text-align: center;margin-top: 40px;">设置成功</p></div></div>'),
        $("#cancelRepurchaseDay").click(function() {
            $(".CloseTask").remove()
        }),
        $("#confirmRepurchaseDay").click(function() {
            return $("#confirmRepurchaseDay").attr("disabled", "disabled"),
                !$("#repurchaseDay").val() || isNaN($("#repurchaseDay").val()) ? ($("#confirmRepurchaseDay").removeAttr("disabled"),
                    alert("请填写正确的时间间隔！"),
                    !1) : parseInt($("#repurchaseDay").val()) > 127 ? ($("#confirmRepurchaseDay").removeAttr("disabled"),
                    alert("接单时间间隔最多127天！"),
                    !1) : void $.ajax({
                    url: "/seller/bind/setRepurchaseDay.htm",
                    type: "post",
                    dataType: "json",
                    cache: !1,
                    data: {
                        id: a,
                        repurchaseDay: $("#repurchaseDay").val()
                    },
                    error: function(a) {
                        $("#confirmRepurchaseDay").removeAttr("disabled")
                    },
                    success: function(a) {
                        a.flag ? (alert("设置成功"),
                            window.location.reload()) : (alert(a.msg),
                            $("#confirmRepurchaseDay").removeAttr("disabled"),
                            $(".CloseTask").remove())
                    }
                })
        })
}
$(function() {
    1 == getQueryString(window.location.href, "new") && $("#sellerInform").click(),
        $(".bindWay li").click(function() {
            $(this).addClass("current").siblings("li").removeClass("current");
            var a = $(this).index();
            0 == a ? ($(".screenBox").show(),
                $(".new_dp").addClass("hidden")) : 1 == a && ($(".screenBox").hide(),
                $(".new_dp").removeClass("hidden"))
        }),
        $("#selectPic").click(function() {
            $("#picValue").click(),
                $("#storeCheckImg").val(""),
                $("#storeCheckImgShow").attr("src", "/saleterrace/images/i88_img.png")
        }),
        $("#storeCheckImgShow").click(function() {
            $("#picValue").click(),
                $("#storeCheckImg").val(""),
                $(this).attr("src", "/saleterrace/images/i88_img.png")
        }),
        $("#selectPicEdit").click(function() {
            $("#picValueEdit").click(),
                $("#storeCheckImgEdit").val(""),
                $("#storeCheckImgShowEdit").attr("src", "/saleterrace/images/i88_img.png")
        }),
        $("#storeCheckImgShowEdit").click(function() {
            $("#picValueEdit").click(),
                $("#storeCheckImgEdit").val(""),
                $(this).attr("src", "/saleterrace/images/i88_img.png")
        })
}),
    $(function() {
        $("#tabsSwitch1").size() > 0 && $("#tabsSwitch1 .tabsSwitch_ul li").click(function() {
            var a = $(this).attr("value");
            0 == a ? ($("#jdStore").attr("class", "tabsSwitchUnSeletedLi"),
                $("#tbStore").attr("class", "tabsSwitchSeletedLi"),
                $("#pddStore").attr("class", "tabsSwitchUnSeletedLi"),
                $(".dp_head").show(),
                $(".good-helper").show(),
                $(".dp_headJD").hide(),
                storeInfo()) : 1 == a ? ($("#jdStore").attr("class", "tabsSwitchSeletedLi"),
                $("#tbStore").attr("class", "tabsSwitchUnSeletedLi"),
                $("#pddStore").attr("class", "tabsSwitchUnSeletedLi"),
                $(".dp_head").hide(),
                $(".good-helper").hide(),
                $(".dp_headJD").show(),
                storeInfo(4)) : 2 == a && ($("#jdStore").attr("class", "tabsSwitchUnSeletedLi"),
                $("#tbStore").attr("class", "tabsSwitchUnSeletedLi"),
                $("#pddStore").attr("class", "tabsSwitchSeletedLi"),
                $(".dp_head").hide(),
                $(".good-helper").hide(),
                $(".dp_headJD").show(),
                storeInfo(5))
        })
    });
