/*!  2018-10-22 */

function showConfirmationDialog(a, b, c) {
    _showDialog("confirmation", a, b, null, c)
}
function showConfirmationDialog(a, b, c, d, e) {
    _showDialog("confirmation", a, b, d, c, e)
}
function showQuestionDialog(a, b, c, d) {
    _showDialog("question", a, b, c, d)
}
function showNotify(a, b) {
    var c = b || !1;
    return new $.Zebra_Dialog(a,{
        buttons: !1,
        modal: !1,
        position: ["right - 20", "top + 20"],
        auto_close: c
    })
}
function showAutoCloseMsg(a, b) {
    var c = b || !1
        , d = 0 != c;
    return new $.Zebra_Dialog(a,{
        overlay_close: !1,
        show_close_button: d,
        buttons: !1,
        modal: !0,
        position: ["center", "top + 200"],
        auto_close: c
    })
}
function showImportDialog(a, b, c, d) {
    var e = {
        type: "Information",
        title: a,
        message: b,
        position: ["center", "top + 200"],
        width: 800,
        buttons: [{
            caption: "确认",
            callback: function() {
                c && d()
            }
        }],
        onClose: function() {
            d && d()
        }
    };
    $.Zebra_Dialog(e)
}
function showQQ(a, b, c, d) {
    var e = {
        type: "Information",
        title: a,
        message: b,
        position: ["center", "top + 200"],
        width: 800,
        buttons: [{
            caption: "联系毛经理",
            callback: function() {
                openQQ1()
            }
        }, {
            caption: "联系高经理",
            callback: function() {
                openQQ2()
            }
        }, {
            caption: "联系周华",
            callback: function() {
                openQQ3()
            }
        }],
        onClose: function() {
            d && d()
        }
    };
    $.Zebra_Dialog(e)
}
function openQQ1() {
    window.open("http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852366295")
}
function openQQ2() {
    window.open("http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852368900")
}
function openQQ3() {
    window.open("http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852365085")
}
function _showDialog(a, b, c, d, e, f, g, h) {
    d = d || "确认",
        f = f || "取消";
    var i = {
        type: a,
        title: b,
        message: c,
        buttons: [{
            caption: d,
            callback: function() {
                if (e && !e())
                    return !1
            }
        }, {
            caption: f,
            callback: function() {
                g && g()
            }
        }]
    };
    return i = $.extend(!0, h, i),
        $.Zebra_Dialog(i)
}
function showEmergencyDialog(a, b, c, d, e, f, g) {
    var h = {
        type: "confirmation",
        title: a,
        message: b,
        keyboard: e,
        overlay_close: f,
        show_close_button: g,
        buttons: [{
            caption: "确认",
            callback: function() {
                if (c && !c())
                    return !1
            }
        }]
    };
    $.Zebra_Dialog(h)
}
