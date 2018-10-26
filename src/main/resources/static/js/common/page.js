/*!  2018-10-22 */

function onPageLoad() {}
function initHeader() {
    $(".menu_ul li").click(function() {
        var a = $(this)
            , b = a.find("span").attr("href");
        b && (window.location.href = getRootPath() + b)
    })
}
function initNavigator() {
    $(".left_menu li").not(".line_li").click(function() {
        var a = $(this)
            , b = a.attr("href");
        b && (a.attr("target") ? window.open(getRootPath() + b) : window.location.href = getRootPath() + b)
    })
}
function headerStyle(a) {
    $(".menu_ul li").each(function(a, b) {
        $(b).removeClass("first_li menu_chosen"),
            $(b).find("span>b").removeClass("show")
    }),
        $(".menu_ul li").eq(a).addClass("first_li menu_chosen"),
        $(".menu_ul li").eq(a).find("span>b").addClass("show")
}
function navigatorStyle(a) {
    $(".left_menu li").each(function(a, b) {
        var c = $(b);
        c.removeClass("menu_selected"),
            c.find("p").remove()
    });
    var b = $(".left_menu li").eq(a);
    b.addClass("menu_selected"),
        b.append("<p></p>")
}
function bindEvent() {}
function JdbindEvent() {}
function init() {}
function Jdinit() {}
$(function() {
    $.ajaxSetup({
        complete: function(a, b) {
            var c = a.responseJSON;
            if (c) {
                var d = c.errorCode;
                if (d) {
                    a.responseJSON.message;
                    101 == d ? window.location.href = getRootPath() + "/index.htm" : 102 == d && (window.location.href = getRootPath() + "/unauthorized.htm")
                }
            }
        }
    }),
        initHeader(),
        initNavigator(),
        onPageLoad(),
        bindEvent(),
        JdbindEvent(),
        init(),
        Jdinit()
});
