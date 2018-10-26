/*!  2018-10-22 */

function successSetValueCallBack(a, b) {
    $("#blackCheckImgShow").attr("src", getCosRootPath() + b + "!small90"),
        $("#blackCheckImg").val(b)
}
function successCallBack(a) {}
function errorCallBack(a) {
    alert("上传失败，请重试！")
}
function successTbkSetValueCallBack(a, b) {
    $("#tbkBlackCheckImgShow").attr("src", getCosRootPath() + b + "!small90"),
        $("#tbkBlackCheckImg").val(b)
}
function successTbkCallBack(a) {}
function errorCallBack(a) {
    alert("上传失败，请重试！")
}
function successTaskSetValueCallBack(a, b) {
    $("#taskBlackCheckImgShow").attr("src", getCosRootPath() + b + "!small90"),
        $("#taskBlackCheckImg").val(b)
}
function storeImg(a) {
    $("#blackCheckImgShow").attr("src", getFileUrl(a))
}
function getFileUrl(a) {
    var b, c = navigator.userAgent;
    return c.indexOf("MSIE") >= 0 ? b = a.value : (c.indexOf("Firefox") > 0 || c.indexOf("Chrome") > 0) && (b = window.URL.createObjectURL(a.files.item(0))),
        b
}
function init() {
    headerStyle(1),
        navigatorStyle(4),
        getBlacklist()
}
function getBlacklist() {
    $.ajax({
        type: "post",
        url: "/seller/blacklist/getBlackList.htm",
        success: function(a) {
            $("#blacklist").html("");
            for (var b = a.length, c = 0; c < b; c++) {
                var d = a[c];
                d.createTime = new Date(d.createTime).Format("yyyy-MM-dd HH:mm:ss"),
                    d.operator = "<a style='color: #6EC9EA' href='javascript:removeBlacklist(" + d.id + ',"' + d.blankName + "\")'>删除黑名单</a>",
                    d.assessReason = '<div style="display:table-cell;vertical-align: middle;line-height: normal;color: #7b8da0;font-size: 14px;">' + d.assessReason + "</div>",
                    d.blankUsername && d.blankUsername.length > 0 ? 11 == d.blankUsername.length ? d.blankUsername = d.blankUsername.substring(0, 3) + "****" + d.blankUsername.substring(d.blankUsername.length - 4, d.blankUsername.length) : d.blankUsername.length > 1 ? d.blankUsername = d.blankUsername.substring(0, 1) + "****" + d.blankUsername.substring(d.blankUsername.length - 1, d.blankUsername.length) : d.blankUsername = d.blankUsername + "****" + d.blankUsername : d.blankUsername = "未绑定",
                    1 == d.type ? d.typeName = "淘宝/天猫" : 2 == d.type ? d.typeName = "京东" : 3 == d.type && (d.typeName = "拼多多"),
                    0 == d.status ? d.status = "无效黑名单" : 1 == d.status ? d.status = "有效黑名单" : 2 == d.status ? d.status = "审核中" : d.status = "黑名单被移除"
            }
            $("#blacklist").loadTemplate("#blacklistRow", a),
                $("#Content").height($(".mainDiv").height())
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function removeBlacklist(a, b) {
    $("body").append('<div class="CloseTask" style="position: fixed;left: 0px;top: 0px;opacity: 0.9;background: #666;\tz-index: 1010;\twidth: 100%;height: 100%;"></div><div class="CloseTask" style="position: fixed;left: 50%;top: 50%;width: 500px;height: 244px;margin-top: -122px;margin-left: -250px;z-index: 10010;background-color: #ffffff;border-radius: 15px;opacity: 1;"><div><p style="font-size: 20px;color: #666666;text-align: center;margin-top: 55px;">确认把“' + b + '”移出黑名单吗？</p><p style="font-size: 18px;margin-top: 20px;padding-left: 50px;color: #9F9F9F;">删除黑名单后，该账号将能正常接手您发布的活动</p></div><div><div id="confirmCloseTask" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 120px;height: 40px;font-size: 16px;color: #ffffff;cursor: pointer;line-height: 40px;margin: 34px 0 0 100px;">确认删除</div><div id="cancelCloseTask" style="background-color: #59C2E6;border-radius: 3px;text-align: center;float: left;width: 120px;height: 40px;font-size: 16px;color: #ffffff;cursor: pointer;line-height: 40px;margin: 34px 0 0 44px;">取消</div></div></div>'),
        $("#cancelCloseTask").click(function() {
            $(".CloseTask").remove()
        }),
        $("#confirmCloseTask").click(function() {
            $(".CloseTask").remove(),
                $.ajax({
                    type: "get",
                    url: "/seller/blacklist/removeBlackList.htm?id=" + a,
                    dataType: "json",
                    success: function(a) {
                        a.flag ? (alert("移除黑名单成功"),
                            getBlacklist()) : alert("移除黑名单失败")
                    },
                    error: function(a, b, c) {
                        alert(c)
                    }
                })
        })
}
function click2Other(a) {
    $("#" + a).click()
}
function submitPatchUploadForm() {
    var a = $("#blackFile").eq(0).val();
    if (a) {
        if (!(a.indexOf(".xlsx") > -1 || a.indexOf(".xls") > -1))
            return void alert("亲导入的文件不正确，请导入.xls或.xlsx的文件");
        var b = {
            target: "#patchUploadForm",
            dataType: "json",
            cache: !1,
            url: "/seller/blacklist/patchSaveBlacklist.htm",
            success: function(a) {
                a && (a.flag ? (alert("添加黑名单成功"),
                    getBlacklist()) : alert(a.msg))
            }
        };
        $("#patchUploadForm").ajaxSubmit(b)
    }
}
function doSubmit() {
    var a = !0
        , b = $("#blackType option:selected")
        , c = $("#assessReason option:selected");
    if (isBlank($("#blankName").val()) && (a = !1,
        3 == b ? alert("请输入子任务编号") : alert("请输入淘宝账号（旺旺ID）")),
    a && "ZI_DING_YI" == c.val() && isBlank($("#remarks").val()) && (a = !1,
        alert("请输入自定义拉黑的原因")),
    a && "TAO_BAO_KE" == c.val() && (isBlank($("#childTaskNum").val()) && (a = !1,
        alert("请输入子活动编号")),
    a && isBlank($("#payOrder").val()) && (a = !1,
        alert("请输入淘宝订单编号")),
    a && isBlank($("#tkNick").val()) && (a = !1,
        alert("请输入淘客昵称")),
    a && isBlank($("#tbkBlackCheckImg").val()) && (a = !1,
        alert("请上传截图")),
    a && isBlank($("#taskBlackCheckImg").val()) && (a = !1,
        alert("请上传截图"))),
    a && "ZI_DING_YI" != c.val() && "TAO_BAO_KE" != c.val() && isBlank($("#blackCheckImg").val()) && (checkImageType($("#infoForm")) || (a = !1,
        alert("请上传截图"))),
        a) {
        var d = {
            target: "#infoForm",
            dataType: "json",
            cache: !1,
            url: "/seller/blacklist/saveBlacklist.htm",
            beforeSubmit: function(a, b) {},
            error: function(a) {},
            success: function(a) {
                a && (a.flag ? (alert("添加黑名单成功"),
                    getBlacklist(),
                    $("#blankName").val(""),
                    $("#remarks").val(""),
                    $(".addBlackName").addClass("hidden")) : alert(a.msg))
            }
        };
        $("#infoForm").ajaxSubmit(d)
    }
}
$(function() {
    $(".addDp_button").click(function() {
        $(".addBlackName").removeClass("hidden"),
            $("#blackCheckImg").val(""),
            $("#blackCheckImgShow").attr("src", "/asserts/images/i88_img.png"),
            $("#tbkBlackCheckImg").val(""),
            $("#tbkBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png"),
            $("#taskBlackCheckImg").val(""),
            $("#taskBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png")
    }),
        $("#blackType").change(function() {
            3 == $(this).val() ? ($("#assessReason").val("PDD"),
                $(".TBJD").addClass("hidden"),
                $(".PDD").removeClass("hidden"),
                $(".add_black_content").css("height", "290px"),
                $(".remarks_div").removeClass("hidden"),
                $("#remarks").val(""),
                $(".add_black_content").css("height", "500px"),
                $(".pjscjt_div").removeClass("hidden"),
                $(".taobaoke").addClass("hidden"),
                $("#tips").removeClass("hidden"),
                $("#tkTips").addClass("hidden"),
                $("#tbkBlackCheckImg").val(""),
                $("#tbkBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png"),
                $("#taskBlackCheckImg").val(""),
                $("#taskBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png")) : ($("#assessReason").val("PING_JIA_BEI_SHAN_CHU"),
                $(".PDD").addClass("hidden"),
                $(".TBJD").removeClass("hidden"))
        }),
        $("#assessReason").change(function() {
            "ZI_DING_YI" == $(this).val() ? ($(".pjscjt_div").addClass("hidden"),
                $(".add_black_content").css("height", "384px"),
                $(".remarks_div").removeClass("hidden"),
                $(".taobaoke").addClass("hidden"),
                $("#tips").css("top", "290px"),
                $("#selectPic").css("top", "360px"),
                $("#tips").removeClass("hidden"),
                $("#tkTips").addClass("hidden"),
                $("#tbkBlackCheckImg").val(""),
                $("#tbkBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png"),
                $("#taskBlackCheckImg").val(""),
                $("#taskBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png")) : "TAO_BAO_KE" == $(this).val() ? ($(".add_black_content").css("height", "605px"),
                $(".remarks_div").addClass("hidden"),
                $(".taobaoke").removeClass("hidden"),
                $(".pjscjt_div").addClass("hidden"),
                $("#selectTaskPic").css("top", "472px"),
                $("#tips").addClass("hidden"),
                $("#tkTips").removeClass("hidden"),
                $("#blackCheckImg").val(""),
                $("#blackCheckImgShow").attr("src", "/asserts/images/i88_img.png")) : ($(".add_black_content").css("height", "290px"),
                $(".remarks_div").removeClass("hidden"),
                $("#remarks").val(""),
                $(".add_black_content").css("height", "500px"),
                $(".pjscjt_div").removeClass("hidden"),
                $(".taobaoke").addClass("hidden"),
                $("#tips").removeClass("hidden"),
                $("#tkTips").addClass("hidden"),
                $("#tbkBlackCheckImg").val(""),
                $("#tbkBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png"),
                $("#taskBlackCheckImg").val(""),
                $("#taskBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png"))
        }),
        $("#confirmAddBlack").click(function() {
            doSubmit()
        }),
        $("#cancelAddBlack").click(function() {
            $(".addBlackName").addClass("hidden")
        }),
        $("#selectPic").click(function() {
            $("#picValue").click(),
                $("#blackCheckImg").val(""),
                $("#blackCheckImgShow").attr("src", "/asserts/images/i88_img.png")
        }),
        $("#blackCheckImgShow").click(function() {
            $("#picValue").click(),
                $("#blackCheckImg").val(""),
                $(this).attr("src", "/asserts/images/i88_img.png")
        }),
        $("#selectTbkPic").click(function() {
            $("#tbkPicValue").click(),
                $("#tbkBlackCheckImg").val(""),
                $("#tbkBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png")
        }),
        $("#tbkBlackCheckImgShow").click(function() {
            $("#tbkPicValue").click(),
                $("#tbkBlackCheckImg").val(""),
                $("#tbkBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png")
        }),
        $("#selectTaskPic").click(function() {
            $("#taskPicValue").click(),
                $("#taskBlackCheckImg").val(""),
                $("#taskBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png")
        }),
        $("#taskBlackCheckImgShow").click(function() {
            $("#taskPicValue").click(),
                $("#taskBlackCheckImg").val(""),
                $("#taskBlackCheckImgShow").attr("src", "/asserts/images/i88_img.png")
        })
});
