/*!  2018-10-22 */

function modifyQQ() {
    var a = function() {
        var a = $("#mdqqtext").val();
        if (!/[1-9][0-9]{4,}/.test(a))
            return alert("请输入正确的qq号！"),
                !1;
        var b = {
            type: "post",
            data: {
                qq: a
            },
            url: "/account/modifyqq",
            dataType: "json",
            success: function(a, b) {
                a.msg ? alert(a.msg) : (alert("设置成功"),
                    window.location.reload())
            },
            error: function(a, b, c) {
                alert("出错了")
            }
        };
        $.ajax(b)
    };
    $(".lead").hide(),
        $(".leadBox").hide(),
        showConfirmationDialog("修改会员QQ", "<strong>请输入QQ号</strong><div><input type='text' id='mdqqtext'/></div>", a)
}
function modifyEmergency() {
    var a = function() {
        var a = $("#mdemergencytext").val();
        if (!/^1\d{10}$/.test(a))
            return alert("请输入正确的手机号码！"),
                !1;
        var b = {
            type: "post",
            data: {
                emergency: a
            },
            url: "/account/modifyEmergency",
            dataType: "json",
            success: function(a, b) {
                a.msg ? alert(a.msg) : (alert("设置成功"),
                    window.location.reload())
            },
            error: function(a, b, c) {
                alert("出错了")
            }
        };
        $.ajax(b)
    };
    $(".lead").hide(),
        $(".leadBox").hide(),
        showConfirmationDialog("修改紧急联系人手机号码", "<div>亲，为了方便平台能第一时间联系到您，平台邀请您设置紧急联系人号码</div><br><strong>请输入紧急联系人手机号码</strong><div><input type='text' id='mdemergencytext'/></div>", a)
}
function modifyForbidEmergency(a, b, c) {
    var d = function() {
        var a = $("#mdemergencytext").val();
        if (!/^1\d{10}$/.test(a))
            return alert("请输入正确的手机号码！"),
                !1;
        var b = {
            type: "post",
            data: {
                emergency: a
            },
            url: "/account/modifyEmergency",
            dataType: "json",
            success: function(a, b) {
                a.msg ? alert(a.msg) : (alert("设置成功"),
                    window.location.reload())
            },
            error: function(a, b, c) {
                alert("出错了")
            }
        };
        $.ajax(b)
    };
    $(".lead").hide(),
        $(".leadBox").hide(),
        showEmergencyDialog("修改紧急联系人手机号码", "<div>亲，为了方便平台能第一时间联系到您，平台邀请您设置紧急联系人号码</div><br><strong>请输入紧急联系人手机号码</strong><div><input type='text' id='mdemergencytext'/></div>", d, function() {}, a, b, c)
}

function modify_dlpwd() {
    var a = function() {
        var a = $("#mdqqtext").val();
        if (!/^1\d{10}$/.test(a))
            return alert("请输入正确的手机号码！"),
                !1;
    }
};

function modify_zfpwd() {

}

