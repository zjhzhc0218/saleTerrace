/*!  2018-10-22 */

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
function closeShowAdd() {
    $("#shopAddBox").hide(),
        $(".dp_check").addClass("hidden"),
        $(".new_dp_title").removeClass("hidden"),
        $(".add_steps").removeClass("hidden"),
    $(".success_back").hasClass("already_callback") && ($(".success_back").removeClass("already_callback").addClass("hidden"),
        $(".screenBox").show(),
        $(".new_dp").addClass("hidden"))
}
function dpyzBtnClick() {
    $("input, textarea").each(function() {
        $(this).val(jQuery.trim($(this).val()))
    });
    var a = $("#wangwangid").val()
        , b = $(".tb_valid_code").text()
        , c = $("#goodUrl").val()
        , d = $("#storeUrl").val();
    return null == a || 0 == a.trim().length ? void alert("请填写淘宝账号") : null == c || 0 == c.trim().length ? void alert("请填写商品网址") : (showWaitingDiv("正在验证店铺..."),
        void $.ajax({
            type: "post",
            url: getRootPath() + "/seller/bind/store_info.htm",
            data: {
                wangwangid: a,
                checkItemCode: b,
                checkItemUrl: c,
                storeUrl: d
            },
            cache: !1,
            success: function(a) {
                removeWaitingDiv();
                var b = a.errorMsg;
                b ? alert(b) : ($(".dp_check").removeClass("hidden"),
                    $(".new_dp .new_dp_title").addClass("hidden"),
                    $(".add_steps").addClass("hidden"),
                    $("#wangwangid").attr("disabled", !0),
                    $(".dp_account").text(a.wangwangid),
                    $(".dp_name").text(a.shopName),
                    $(".dp_location").text(a.sendAddr),
                    $("#bsid").val(a.id),
                    $("#bsstatus").val(a.status),
                    $("#bsversion").val(a.version + 1),
                    $("#sendDetail").val(" "))
            },
            error: function(a, b, c) {
                alert(c)
            }
        }))
}
function bindSendAddr() {
    var a = $(".fhrPhone_input_text").val();
    $.ajax({
        type: "post",
        url: getRootPath() + "/seller/bind/bindSendInfo.htm",
        data: {
            id: $("#sendInfoId").val(),
            version: $("#sendInfoVersion").val(),
            sellerId: $("#bsid").val(),
            sendName: $(".fhrName_input_text").val(),
            sendPhone: a,
            sendProvince: $("#sendProvince2").val(),
            sendCity: $("#sendCity2").val(),
            sendDistrict: $("#sendDistrict2").val(),
            sendDetail: $("#sendDetail").val()
        },
        success: function(a) {
            a.status ? (alert("店铺绑定成功"),
                $("#shopWW").val(),
                $("#shopWW").append('<option value="' + $(".dp_account").text() + '" selected>' + $(".dp_name").text() + "</option>"),
                closeShowAdd()) : alert("发货地址绑定有误")
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function shopBind(a) {
    "tb" == a ? ($("#bindImg").attr("href", "/asserts/images/dpbd/dianpubangding02.png"),
        $("#storeType").val(""),
        $(".jdHidden").show(),
        $("#shopAddBox").show(),
        $("#shopUrl").removeClass("hidden"),
        $("#shopWwBind").text("请输入掌柜旺旺"),
        $("#shoPWWBindMark").html("（<span>*</span>店铺旺旺绑定后不可更改）"),
        generateValidCode()) : "jd" == a ? ($("#storeType").val(4),
        $(".bindWay li").eq(0).click(),
        $(".jdHidden").hide(),
        $(".screenBox").show(),
        $(".new_dp").addClass("hidden"),
        $("#bindImg").attr("href", "/asserts/images/dpbd/JDstoreBind.png"),
        $("#shopAddBox").show(),
        $("#shopUrl").removeClass("hidden"),
        $("#shopWwBind").text("请输入店铺名称"),
        $("#shoPWWBindMark").html("（<span>*</span>店铺名称绑定后不可更改）")) : "pdd" == a && ($("#storeType").val(5),
        $(".bindWay li").eq(0).click(),
        $(".jdHidden").hide(),
        $(".screenBox").show(),
        $(".new_dp").addClass("hidden"),
        $("#bindImg").attr("href", "/asserts/images/dpbd/JDstoreBind.png"),
        $("#shopAddBox").show(),
        $("#shopUrl").addClass("hidden"),
        $("#shopWwBind").text("请输入店铺名称"),
        $("#shoPWWBindMark").html("（<span>*</span>店铺名称绑定后不可更改）"))
}
function doSubmit() {
    var a = !0
        , b = $("#storeType").val();
    if (isBlank($("#wwId").val()) && (a = !1,
        4 == b ? alert("请输入店铺名称") : alert("请输入旺旺号")),
    5 != b && a && isBlank($("#storeUrl").val()) && (a = !1,
        alert("请输入店铺首页网址")),
    a && isBlank($("#storeCheckImg").val()) && (a = !1,
        alert("请上传店铺后台截图")),
    a && (checkImageType($("#infoForm")) || (a = !1,
        alert("请上传店铺后台截图"))),
    a && showWaitingDiv("正在验证店铺..."),
        a) {
        var c = {
            target: "#infoForm",
            dataType: "json",
            cache: !1,
            beforeSubmit: function(a, b) {},
            error: function(a) {},
            success: function(a) {
                removeWaitingDiv();
                var b = a.errorMsg;
                b ? alert(b) : ($(".success_back").removeClass("hidden").addClass("already_callback"),
                    $(".screenBox").hide(),
                    $("#wwId").val(""),
                    $("#storeUrl").val(""),
                    $("#picValue").val(""),
                    $("#storeCheckImgShow").attr("src", "/asserts/images/i88_img.png"))
            }
        };
        $("#infoForm").ajaxSubmit(c)
    }
}
function getFileUrl(a) {
    var b, c = navigator.userAgent;
    return c.indexOf("MSIE") >= 0 ? b = a.value : (c.indexOf("Firefox") > 0 || c.indexOf("Chrome") > 0) && (b = window.URL.createObjectURL(a.files.item(0))),
        b
}
function successSetValueCallBack(a, b) {
    $("#storeCheckImgShow").attr("src", getCosRootPath() + b + "!small90"),
        $("#storeCheckImg").val(b)
}
function successCallBack(a) {}
function errorCallBack(a) {
    alert("上传失败，请重试！")
}
function goCodeCheck() {
    $(".bindWay li").eq(1).click()
}
function removeStep4Img() {
    var a = $(this).prev("img").attr("src")
        , b = a.split("/");
    a = b[b.length - 3] + "/" + b[b.length - 2] + "/" + b[b.length - 1];
    var c = $(this).parentsUntil("#pjImgs").parent().find(".picUrl")
        , d = c.val()
        , e = d.split(",");
    e = e.slice(0, e.indexOf(a)).concat(e.slice(e.indexOf(a) + 1, e.length)),
        c.val(e.join(",")),
        $(this).prev("img").attr("src", "/asserts/images/add_icon.png"),
        $(this).remove()
}
$(function() {
    $("#copy_btn").zclip({
        path: getRootPath() + "/asserts/js/vendor/jquery-zclip/1.1.jquery-zclip-1.1.2/ZeroClipboard.swf",
        copy: function() {
            return $(".tb_valid_code").text()
        },
        beforeCopy: function() {
            $(this).css("color", "orange")
        },
        afterCopy: function() {
            var a = $("<div class='copy-tips'><div class='copy-tips-wrap'>☺ 复制成功</div></div>");
            $("body").find(".copy-tips").remove().end().append(a),
                $(".copy-tips").fadeOut(3e3),
                $(this).css("color", "#11ade2")
        }
    }),
        $(".remove_img").click(removeStep4Img),
        province($("#sendProvince2")),
        $("#sendProvince2").bind("change", function() {
            selectChangeEvent(this)
        }),
        $("#sendCity2").bind("change", function() {
            selectChangeEvent(this)
        }),
        $("input[name='itemurl']").val("  "),
        $(".recommendBox .unRecommend").click(function() {
            $(".icon").hasClass("current") ? $(this).find(".icon").removeClass("current") : $(this).find(".icon").addClass("current")
        }),
        $(".recommendBox .reClose").click(function() {
            $(".icon").hasClass("current") ? (store.set("recommendStateBuyer", "1"),
                $(".recommendBox").hide()) : $(".recommendBox").hide()
        }),
        $(".wnd_Close_Icon").click(function() {
            $(this).parents(".popWrapper").hide(),
                $("#name").html(""),
                $("#name_app").html(""),
                $("#moneyNeedPay").html(""),
                $("#item").html("")
        }),
        $(".bindWay li").click(function() {
            $(this).addClass("current").siblings("li").removeClass("current");
            var a = $(this).index();
            0 == a ? $(".success_back").hasClass("already_callback") ? ($(".success_back").removeClass("hidden"),
                $(".new_dp").addClass("hidden")) : ($(".screenBox").show(),
                $(".new_dp").addClass("hidden")) : 1 == a && ($(".screenBox").hide(),
                $(".new_dp").removeClass("hidden"),
                $(".success_back").addClass("hidden"))
        }),
        $("#selectPic").click(function() {
            $("#picValue").click(),
                $("#storeCheckImgShow").attr("src", "/asserts/images/i88_img.png")
        }),
        $("#storeCheckImgShow").click(function() {
            $("#picValue").click(),
                $(this).attr("src", "/asserts/images/i88_img.png")
        }),
        $("input[name='itemurl']").val("  "),
        $("#contact_service").click(function() {
            window.open("http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852505269")
        }),
        $("#store_manage").click(function() {
            window.location.href = "/seller/bindStore.htm?rt=n"
        })
});
