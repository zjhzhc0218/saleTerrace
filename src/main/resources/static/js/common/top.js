/*!  2018-10-22 */

function onOffRightMenu() {
    var a = store.get("show");
    null == a ? $(".right-menu").show() : 2 == a ? $(".right-menu").show() : 1 == a && ($(".right-menu").hide(),
    $("#onKfqq").show()),
    $("#offKfqq").click(function() {
        $(".right-menu").hide(500),
        $("#onKfqq").show(1e3),
        store.set("show", 1)
    }),
    $("#onKfqq").click(function() {
        $(this).hide(),
        $(".right-menu").show(500),
        store.set("show", 2)
    })
}
function readUserAccount() {
    $.ajax({
        type: "get",
        url: "/account/getua",
        data: {},
        success: function(a) {
            if (a.ac) {
                var b = a.ac;
                b.money = b.money && "null" != b.money ? b.money : 0,
                b.freezeMoney = b.freezeMoney && "null" != b.freezeMoney ? b.freezeMoney : 0,
                b.coin = b.coin && "null" != b.coin ? b.coin : 0,
                b.freezeCoin = b.freezeCoin && "null" != b.freezeCoin ? b.freezeCoin : 0,
                $("#top_user_money").html(b.money),
                $("#top_user_coin").html(b.coin);
                var c = $("#top_user_money").html().length
                  , d = $("#top_user_coin").html().length
                  , e = c + d;
                e >= 15 && $(".menu-select-box").width(280),
                e >= 18 && $(".menu-select-box").width(300)
            }
            a.isSuccessAuth && $(".dprz").parent().css({
                display: "none"
            })
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function getQQGroup() {
    var a = "/getSellerGroup.htm"
      , b = "活动交流群";
    $(".qun_for_buyer").size() > 0 && (a = "/getBuyerGroup.htm", b = "试用交流群"),
    ($(".qun_for_buyer").size() > 0 || $(".qun_for_seller").size() > 0) && $.ajax({
        type: "get",
        url: a,
        dataType: "json",
        success: function(a) {
            a && ($(".qun_tip").children("a").attr("href", a.desc).html(b + "：" + a.qq),
            $(".QRCode").attr("src", getCosRootPath() + a.img + "!orgin75"),
            $(".clickAdd").attr("href", a.desc))
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function getTongzhi() {
    $.ajax({
        type: "get",
        url: "/getTongZhi.htm",
        dataType: "json",
        success: function(a) {
            a ? null != a.sImg && "" != a.sImg ? ($(".sTongZhi").attr("src", getCosRootPath() + a.sImg + "!orgin75"),
            $(".sLeft").attr("src", getCosRootPath() + a.sLeft + "!orgin75"),
            $(".sPopup").attr("src", getCosRootPath() + a.sPopup + "!orgin75"),
            $(".sImgJump").attr("href", a.sImgJump),
            $(".sPopupImgJump").attr("href", a.sPopupImgJump),
            $(".sLeftImgJump").attr("href", a.sLeftImgJump)) : ($(".bTongZhi").attr("src", getCosRootPath() + a.bImg + "!orgin75"),
            $(".bLeft").attr("src", getCosRootPath() + a.bLeft + "!orgin75"),
            $(".bPopup").attr("src", getCosRootPath() + a.bPopup + "!orgin75"),
            $(".bImgJump").attr("href", a.bImgJump),
            $(".bPopupImgJump").attr("href", a.bPopupImgJump),
            $(".bLeftImgJump").attr("href", a.bLeftImgJump)) : $(".contentBox").remove()
        },
        error: function(a, b, c) {
            alert(c)
        }
    })
}
function topRoleEvent() {
    $("#wssj_menu > ul > li").bind("click", function() {
        var a = $(this)
          , b = a.attr("href");
        b && (window.location.href = getRootPath() + b)
    }),
    $("#wsms_menu > ul > li").bind("click", function() {
        var a = $(this)
          , b = a.attr("href");
        b && (window.location.href = getRootPath() + b)
    })
}
function logout() {
    window.location.href = "/logout"
}
function topInitRender() {}
function contactUs() {
    window.open("http://wpa.qq.com/msgrd?v=3&uin=2180504347&site=qq&menu=yes")
}
$(function() {
    onOffRightMenu(),
    getTongzhi();
    var a = function(a) {
        var b = new RegExp("(^|&)" + a + "=([^&]*)(&|$)")
          , c = window.location.search.substr(1).match(b);
        return null != c ? unescape(c[2]) : null
    }("new");
    a && 1 == a && pddexpires(),
    $(".menu-box").hover(function() {
        $(".menu-select-box").show(),
        $(this).css({
            backgroundColor: "#F3F3F3",
            borderLeft: "1px solid #ddd",
            borderRight: "1px solid #ddd"
        })
    }, function() {
        $(".menu-select-box").hide(),
        $(this).css({
            backgroundColor: "#fff",
            borderLeft: "none",
            borderRight: "none"
        })
    }),
    readUserAccount(),
    getQQGroup()
});
