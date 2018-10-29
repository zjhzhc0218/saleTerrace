/*!  2018-10-22 */

function getRootPath() {
    var a = window.document.location.href
        , b = window.document.location.pathname
        , c = a.indexOf(b)
        , d = a.substring(0, c);
    b.substring(0, b.substr(1).indexOf("/") + 1);
    return d
}
function getCosRootPath() {
    return $("#imageRootPath").val()
}
function getCosAppId() {
    return $("#cosAppId").val()
}
function getCosBucketName() {
    return $("#cosBucketName").val()
}
function getCosDownRootPath() {
    return $("#cosDownRootPath").val()
}
function request(a) {
    for (var b = new Object, c = location.search.substring(1), d = c.split("&"), e = 0; e < d.length; e++) {
        var f = d[e].indexOf("=");
        if (-1 != f) {
            var g = d[e].substring(0, f)
                , h = d[e].substring(f + 1);
            h = decodeURIComponent(h),
                b[g] = h
        }
    }
    return b[a]
}
function clone(a) {
    var b;
    switch (typeof a) {
        case "undefined":
            break;
        case "string":
            b = a + "";
            break;
        case "number":
            b = a - 0;
            break;
        case "boolean":
            b = a;
            break;
        case "object":
            if (null === a)
                b = null;
            else if (a instanceof Array) {
                b = [];
                for (var c = 0, d = a.length; c < d; c++)
                    b.push(clone(a[c]))
            } else {
                b = {};
                for (var e in a)
                    b[e] = clone(a[e])
            }
            break;
        default:
            b = a
    }
    return b
}
function loadData(a) {
    var b = new Object;
    return a.parent().siblings(".dp_hidden").each(function(a, c) {
        var d = $(c)
            , e = d.attr("column-id")
            , f = d.val();
        b[e] = f
    }),
        b
}
function jsonToString(a) {
    var b = {};
    return b.jsonString = JSON.stringify(a),
        b
}
function x(a, b) {
    var c = b.attr("data-search-value");
    c && (a[b.attr("data-id")] = c)
}
function xa(a, b) {
    if (isJson(b))
        for (var c in b)
            a[c] = b[c];
    else
        $.each(b, function(b, c) {
            c instanceof jQuery ? x(a, c) : c instanceof HTMLElement && x(a, $(c))
        })
}
function xf(a, b) {}
function isJson(a) {
    return "object" == typeof a && "[object object]" == Object.prototype.toString.call(a).toLowerCase() && !a.length
}
function JTrim(a) {
    return a.replace(/(^\s*)|(\s*$)/g, "")
}
function copyEvent(a) {
    a.zclip({
        path: getRootPath() + "/asserts/js/vendor/jquery-zclip/1.1.jquery-zclip-1.1.2/ZeroClipboard.swf",
        copy: function() {
            return a.siblings("b").children("span").text()
        },
        beforeCopy: function() {
            $(this).css("color", "orange")
        },
        afterCopy: function() {
            var a = $("<div class='copy-tips'><div class='copy-tips-wrap'>☺ 复制成功</div></div>");
            $("body").find(".copy-tips").remove().end().append(a),
                $(".copy-tips").fadeOut(3e3),
                $(this).css("color", "#FFFFFF")
        }
    })
}
function checkImageType(a) {
    var b = void 0;
    b = a instanceof jQuery ? a : $(a);
    var c = !0;
    return b.find("input[type=file]").each(function(a, b) {
        var d = $(b)
            , e = d.val();
        if (e) {
            validSuffix(e.substring(e.lastIndexOf(".") + 1, e.length).toLowerCase()) || (c = !1)
        } else
            c = !1
    }),
        c
}
function validSuffix(a) {
    for (var b = 0; b < fileTypes.length; b++)
        if (fileTypes[b] == a)
            return !0;
    return !1
}
function province(a) {
    a.html(""),
        $.ajax({
            type: "post",
            url: getRootPath() + "/area/info.htm",
            async: !1,
            data: {
                areaCode: 1
            },
            success: function(b) {
                a.append("<option value=''>请选择省...</option>");
                for (var c = 0; c < b.length; c++)
                    a.append("<option value=" + b[c].code + ">" + b[c].areaName + "</option>")
            },
            error: function(a, b, c) {
                alert(c)
            }
        })
}
function getNextOptions(a, b) {
    b.html(""),
        $.ajax({
            type: "post",
            url: getRootPath() + "/area/info.htm",
            async: !1,
            data: {
                areaCode: a.val()
            },
            success: function(c) {
                if (b.append("<option value=''>请选择市...</option>"),
                c.length > 0)
                    for (var d = 0; d < c.length; d++)
                        b.append("<option value=" + c[d].code + ">" + c[d].areaName + "</option>");
                else
                    b.append("<option value=" + a.val() + ">" + a.find("option:selected").text() + "</option>")
            },
            error: function(a, b, c) {
                alert(c)
            }
        })
}
function selectChangeEvent(a) {
    var b = void 0;
    a instanceof jQuery ? b = a : a instanceof HTMLElement && (b = $(a)),
        getNextOptions(b, b.siblings("select[data-reference=" + b.attr("id") + "]"))
}
function showWaitingDiv(a) {
    $("body").append('<div class="hiddentemp"><img id="showwaitingdiv"  class="Content_fgimg"><a class="Content_fgimga1">' + a + "</a></div>"),
        $("#showwaitingdiv").attr("src", getRootPath() + "/asserts/images/buffer.gif");
    var b = $("body").width() / 2 - 104;
    $(".Content_fgimg").css("left", b + "px"),
        $(".Content_fgimga1").css("left", b + 88 + "px"),
        $(".hiddentemp").height($(document.body).height() + 50)
}
function removeWaitingDiv() {
    $(".hiddentemp").size() > 0 && $(".hiddentemp").remove()
}
function tipsIn(a) {
    $(a).siblings(".tips").show()
}
function tipsOut(a) {
    $(a).siblings(".tips").hide()
}
function complete() {
    $.ajax({
        type: "get",
        url: getRootPath() + "/buyer/bind/checkBuyerTagNeedComplete.htm",
        dataType: "json",
        success: function(a) {
            a.flag || $(".topPrompt").show()
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function showPwd(a) {
    "password" == $(a).siblings("input").attr("type") ? ($(a).siblings("input").attr("type", "text"),
        $(a).css("background-image", "url(/asserts/images/i16_mopen.png)")) : ($(a).siblings("input").attr("type", "password"),
        $(a).css("background-image", "url(/asserts/images/i16_mclose.png)"))
}
function lookPic(a) {
    var b = $(a).attr("src");
    $("body").append('<img id="rotateBoxImg" style="display: none" src="">'),
        $("#rotateBoxImg").attr("src", b.replace("!small80", "!orgin75")),
        $("#rotateBoxImg").viewer(),
        $("#rotateBoxImg").click()
}
function downFile(a) {
    var b = $(a).attr("down");
    window.location.href = getCosDownRootPath() + b
}
function lookPicDli(a) {
    var b = $(a).attr("src2");
    $(".rotateBox").show(),
        $(".rotateBox img").attr("src", b);
    var c = $(a).context.naturalWidth
        , d = $(a).context.naturalHeight
        , e = window.screen.height - 120;
    if (d > e) {
        $(".rotateBox img").css("height", e);
        var f = c / d;
        d = e,
            c = e * f
    }
    $(".rotateBox img").css({
        marginTop: "-" + d / 2 + "px",
        marginLeft: "-" + c / 2 + "px"
    }),
        $("body").css("overflow-y", "hidden")
}
function closePic() {
    $(".rotateBox").hide(),
        $("body").css("overflow-y", "auto"),
        $(".rotateBox img").attr("src", ""),
        $(".rotateBox img").css("transform", "rotateZ(0deg)"),
        rotateNumber = 0
}
function isBlank(a) {
    return null == a || "" == a || "" == a.trim()
}
function getDelayTime(a) {
    return a / 1440 >= 1 ? a / 1440 + "天" : a / 60 + "小时"
}
function getSaleType(a) {
    return 11 == a ? "淘宝客" : 12 == a ? "淘口令" : 13 == a ? "聚划算" : 14 == a ? "淘抢购" : 15 == a ? "淘金币" : 16 == a ? "天天特价" : 17 == a ? "自定义入口" : 1 == a ? "查看更多订单" : 2 == a ? "已买到宝贝" : void 0
}
function getQueryString(a, b) {
    var c, d = a.indexOf("?");
    a = a.substr(d + 1);
    for (var e = a.split("&"), f = 0; f < e.length; f++)
        (d = e[f].indexOf("=")) > 0 && e[f].substring(0, d) == b && (c = e[f].substr(d + 1));
    return c
}
function checkJdUrl(a) {
    var b = a.indexOf("?");
    return b > 0 && (a = a.substring(0, b)),
        b = a.indexOf("://"),
        a = a.substr(b + 1)
}
function getPlatBaseFee(a, b, c) {
    var d = 0;
    return 1 != a ? d = c < new Date(2018,4,15,13,55,10).getTime() ? 0 : c < new Date(2018,4,21,14,4,18).getTime() ? 1.5 : c < new Date(2018,7,13,10,7,18).getTime() ? 2 : c < new Date(2018,7,15,15,50,55).getTime() ? 3 : 98 == b ? 2 : 3 : 1 == a && (d = 3),
        d
}
function transform(a) {
    return a ? 0 == a.indexOf("/") || 0 == a.indexOf("http") ? 0 == a.indexOf("/task") ? getCosRootPath() + a + "!small80" : a : getCosRootPath() + "/" + a + "!small80" : getRootPath()
}
function onlyNum(a) {
    1 == a.value.length ? a.value = a.value.replace(/[^1-9*]/g, "") : a.value = a.value.replace(/[^\d]/g, "")
}
function randomWord(a, b, c) {
    var d = ""
        , e = b
        , f = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "-"];
    a && (e = Math.round(Math.random() * (c - b)) + b);
    for (var g = 0; g < e; g++)
        pos = Math.round(Math.random() * (f.length - 1)),
            d += f[pos];
    return d
}
function getCurrentDate() {
    return $("#currentDate").val()
}
function checkPayOrderNum(a) {
    return /^[0-9]+[0-9]*]*$/.test(a)
}
function checkPayOrderNumPdd(a) {
    return /^[0-9]+(-)+[0-9]*]*$/.test(a)
}
var visiblePages = 5
    , fileTypes = ["jpg", "jpeg", "gif", "png"];
$(document).scroll(function() {
    document.body.scrollTop > 94 ? ($("#Content-Left").css({
        position: "fixed",
        top: "0"
    }),
        $(".topPrompt").css({
            position: "fixed",
            top: "0",
            marginLeft: "10px"
        })) : ($("#Content-Left").css("position", "relative"),
        $(".topPrompt").css({
            position: "relative",
            marginLeft: "0px"
        }))
});
var rotateNumber = 0;
$(document).ready(function() {
    $("input, textarea").each(function() {
        $(this).val(jQuery.trim($(this).val()))
    }),
        $(".topPrompt i").click(function() {
            $(".topPrompt").hide()
        }),
    $("#tabsSwitch").size() > 0 && $("#tabsSwitch .tabsSwitch_ul li").click(function() {
        var a = $(this).attr("value");
        0 == a ? window.location.href = "/seller/zrwlb.htm" : 1 == a ? window.location.href = "/seller/ptask/pTaskList2.htm?publishIndex=3" : 2 == a ? window.location.href = "/seller/ptask/pTaskList.htm" : 3 == a && (window.location.href = "/seller/ptask/templet.htm")
    }),
        $(".rotateBox .box a").click(function() {
            rotateNumber++;
            var a = 90 * rotateNumber;
            $(this).parent().siblings("img").css("transform", "rotateZ(" + a + "deg)")
        }),
        $(".rotateBox img").click(function() {
            return !1
        }),
        $(".rotateBox .box").click(function() {
            return !1
        })
}),
    String.prototype.trim = function() {
        return this.replace(/(^\s*)|(\s*$)/g, "")
    }
    ,
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
