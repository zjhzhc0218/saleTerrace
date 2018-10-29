<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<script type="text/javascript" src="/saleterrace/js/account/accountmanage.js"></script>
<script type="text/javascript" src="/saleterrace/js/account/yhzx_loginpwd.js"></script>
<script type="text/javascript" src="/saleterrace/js/account/yhzx_zfpwd.js"></script>

<script type="text/javascript" src="/saleterrace/js/common/common.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/cos-js-sdk-v4.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/homePage.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/page.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/popdg.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store+json2.min.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store.expire.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store.min.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/task.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/taskComment.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/top.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/uploadImageCommon.js"></script>

<script type="text/javascript" src="/saleterrace/js/dist/viewer.js"></script>

<script type="text/javascript" src="/saleterrace/js/seller/bindStore.js"></script>
<script type="text/javascript" src="/saleterrace/js/seller/bindStorePop.js"></script>
<script type="text/javascript" src="/saleterrace/js/seller/blacklist.js"></script>
<script type="text/javascript" src="/saleterrace/js/seller/homePage.js"></script>
<script type="text/javascript" src="/saleterrace/js/seller/jfbrw.js"></script>
<script type="text/javascript" src="/saleterrace/js/seller/newPrefbrw.js"></script>

<script type="text/javascript" src="/saleterrace/js/verdor/jquery.form.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-first-event.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/datepicker/WdatePicker.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-jqPaginator/jqPaginator.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-loadTemplate/jquery.loadTemplate-1.4.4.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-zclip-1.1.2/jquery.zclip.js"></script>

<script type="text/javascript" src="/saleterrace/js/verdor/zebra_dialog/zebra_dialog.js"></script>

<script type="text/javascript" src="/saleterrace/js/selectize.js"></script>
</body>
<script>
    function closeImg() {
        $(".contentBox").remove();
        if($('#userRole').val()) {
            pddexpires();
        }
    }

    function closeImg2() {
        $(".contentBox").remove();
    }
    /*function tongzhi(obj){
var str = "<div class='contentBox'  onclick='closeImg();'>" +
        "<div class='content' style='height:400px;width: 470px;'>" +
        "<div class='noAgain'><i></i>不再提示</div>"+
        "<span onclick='closeImg();'></span>" +
        "<p style='width: 600px;margin-bottom:0px;margin-left:150px;margin-top: 10px;font-size: 17px;' >公告：</p>"+
        "<p style='width: 600px;margin-bottom:0px;margin-left:0px;margin-top: 50px;' >亲，平台将于16日23:30-17日8:00进行数据库升级，</p>"+
        "<p style='width: 600px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >届时网站将停止访问，请大家提前做好活动安排 </p>"+
        /!*"<p style='width: 600px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >试客多平台双11吞吐量上限10万单</p>"+
        "<p style='width: 600px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >目前已被各大商家提前预定7万单，仅剩3万单的额度</p>"+
        "<p style='width: 600px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >资源非常紧张，请马上联系我提前落位，时间就是金钱！</p>"+
        "<p style='width: 600px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >还有几个小时就要开始了，请马上联系我预登记单量</p>"+
        "<p style='width: 650px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >人满即止，额度非常有限! </p>" +
        "<p style='width: 650px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >不要跟钱过不去，抓紧机会,避免踏空！</p>" +
        "<p style='width: 650px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >毛经理：QQ：2852366295  TEL：17557296910 </p>" +*!/
//                "<p style='width: 650px;margin-bottom:0px;margin-left:0px;margin-top: 10px;' >非常感谢各位商家一直以来对试客多的支持，祝大家放单愉快！</p>" +
        /!*"<p style='width: 650px;margin-bottom:0px;margin-left:-15px; '>3.平台新增复购活动，提高宝贝回购率，做好老客户维护权重；</p>" +
        "<p style='width: 650px;margin-bottom:0px;margin-left:-15px; '>4.试用间隔时间自定义设置（店铺管理），根据类目情况设置间隔时间，合理布局复购率，提高补单</p>" +
        "<p style='width: 650px;margin-bottom:0px;margin-left:-3px; '>安全性。</p>" +*!/
        "<p></p>"+
        "<p></p>"+
        "<p></p>"+
        "<p></p>"+
        "<p></p>"+
        "<p></p>"+
        "<p></p>"+
        "</div>" +
        "</div>";
$('body').prepend(str);
$(".content").css({
    "width":"750x",
    // "height":"280px",
    "margin":"-210px 0 0 -275px",
    "background":"url(/asserts/images/roleBg2.png) no-repeat"
});
$(".content").click(function(){
    return false;
});
$(".noAgain").click(function(){
    var keep = new Date();
    var active = $(this).find("i").hasClass("active");
    if(active){
        $(this).find("i").removeClass("active");
        store.set("isShow",'');
    }else{
        $(this).find("i").addClass("active");
        store.set("isShow",keep.getTime());
    }
});
}*/

    function pddexpires() {
        //        var str = ;
        //        $('body').prepend(str);
        $(".contentBox").show();
        $(".content").css({
            "width": "750x",
            // "height":"280px",
            "margin": "-320px 0 0 -215px",
            //"background":"url(/asserts/images/pddtip.jpg) no-repeat",
            "background-size": "400px 600px"
        });
        $(".content").click(function() {
            return false;
        });
        $(".noAgain").click(function() {
            var keep = new Date();
            var active = $(this).find("i").hasClass("active");
            if(active) {
                $(this).find("i").removeClass("active");
                store.set("isShow", '');
            } else {
                $(this).find("i").addClass("active");
                store.set("isShow", keep.getTime());
            }
        });
    }
    //vip弹框
    function showVipAlert(msg) {
        var html = '<div class="shade" style="position: absolute;top: 0; left: 0;width: 100%;background: #000;opacity: 0.5; "></div>' +
                '<div class="shade-box" style="position: absolute;  left: 50%; width: 400px; height: 300px; z-index: 300;background-color: #fff; border-radius: 10px; margin-left: -200px;" >' +
                '<a class="shade-close" style="font-size: 18px;float: right;margin: 6px 15px 0 0px;">X</a>' +
                '<p style="clear:both; font-size: 16px; font-weight: bold; text-align: center; margin-top: 99px;">' + msg + '</p>' +
                '<a href="/saleterrace/jnbzj_index" target="_blank" style="background-color: #5AC2E7;padding: 9px 31px;float: left;margin-top: 48px;margin-left: 132px;color: #fff;border-radius: 5px;font-size: 16px;">去缴纳保证金</a>' +
                '</div>';
        var body = $("body")
        body.append(html);
        $(".shade").height(body.height());
        $(".shade-box").css({
            top: (document.body.offsetHeight) / 2 + document.body.scrollTop - 400 + 'px'
        });
        $(".shade-box a").css({
            cursor: 'pointer'
        });
        $(".shade-close").on("click", function() {
            $(".shade, .shade-box").remove();
        })
    }

    //协议弹框
    // protocolTemplate
    function showProtocolAlert() {
        var html = '<div class="protocol-shade" style="position: absolute;top: 0; left: 0;width: 100%;background: #000;opacity: 0.5; height: 300%; z-index: 1099;"></div>' +
                '<div class="protocol-shade-box" style="position: absolute; top: 10%; left: 50%; width: 700px;  z-index: 1100;background-color: #fff; border-radius: 10px; margin-left: -350px;" >' +
                '<p style="font-size: 12px; clear: both; padding:20px;">请先自己阅读并接受协议：</p>' +
                '<h2 style="text-align: center;">试客多服务协议（商家版）</h2>' +
                '<div class="protocol-shade-box-text" style="width: 610px; border: 1px solid #ddd; height: 300px; padding: 10px; overflow-y: scroll; overflow-x:hidden;  margin: 30px auto;"></div>' +
                '<div style="padding: 20px;">' +
                '<label for="protocolAgree" >' +
                '<input type="radio"  value="1" id="protocolAgree" name="protocolAgree" style="vertical-align: -1px; margin: 0 5px;">' +
                '我已仔细阅读并同意以上条款和条件' +
                '</label>' +
                '<span class="protocol-agree-tip" style="color: red; display: none; padding-left: 40px;">请仔细阅读并选中</span>' +
                '</div>' +
                '<div style="padding: 10px 20px 30px 20px; text-align: center;">' +
                '<button id="protocolAgreeBtn" type="button" style="border-radius: 5px; padding: 5px 20px;  margin-right: 30px; outline: none;">同意</button>' +
                '<button type="button" style="border-radius: 5px; padding: 5px 20px;  margin-left: 30px; outline: none;">不同意</button>' +
                '</div>' +
                '</div>';
        var body = $("body");
        var protocolTemplate = $("#protocolTemplate").html();
        body.append(html).css({
            overflow: 'hidden',
        });
        $(".protocol-shade-box-text").html(protocolTemplate);
        $(".protocol-shade-box").css({
            top: '10%',
        });
        $(".protocol-shade-box a").css({
            cursor: 'pointer'
        });

        $("#protocolAgreeBtn").on("click", function() {
            if($('input:radio[name="protocolAgree"]:checked').val()) {
                $("body").css({
                    overflow: 'auto',
                });
                $(".protocol-shade, .protocol-shade-box").remove();
                store.set("protocol", "1");
            } else {
                $(".protocol-agree-tip").show();
            }

        });

    }

    function function1() {
        var newVar = request("new");
        var protocol = store.get('protocol');
        if(newVar && newVar === "1" && !protocol) {
            showProtocolAlert();
        }
    }

    <script>
    if(window.location.hostname=='115.159.84.78'){
        window.location.href="http://budingdan.com";
    }
    <!-- 百度统计 -->
    //        var _hmt = _hmt || [];
    //        (function() {
    //            var hm = document.createElement("script");
    //            hm.src = "https://hm.baidu.com/hm.js?4e62b0120a2ce8478d446718527ae0ce";
    //            var s = document.getElementsByTagName("script")[0];
    //            s.parentNode.insertBefore(hm, s);
    //        })();

    if (!store.enabled) {
        alert('您的浏览器不支持使用！！ 请关闭浏览器的"隐私模式"或者升级到主流浏览器已达到最佳体验');
    }

    var uid = 162036;
    //用户是否登录
    function isLogin() {
        return uid != null ? true : false;
    }

    //上帝是否选择了你^_^ 可以提前看到一些东西
    function isGodChoose(){
        //id结尾为0的，大概为10分之一几率
        var lastNumber = Math.abs(uid)%10;
        return uid!=null?lastNumber<=9:false;
//            return true;
    }

    //移除所有input和textarea的前后空格
    function removeSpaceFunction() {
        $('input[type=text], textarea').each(function(){
            $(this).val(jQuery.trim($(this).val()));
        });
    }

    //绑定可能是按钮触发的click事件，将该event插入到第一位，在点击后第一时间将所有的前后空格去除
    $(window).load(function () {
        $("input").firstOn("click",removeSpaceFunction);
    });

    $(function(){
        var isShow = store.get("isShow");
        var beforeTime = (new Date(isShow)).Format("yyyy-MM-dd");
        var now = (new Date()).Format("yyyy-MM-dd");
        //获取年份
        var BY = Number(beforeTime.substring(0,4));
        var NY = Number(now.substring(0,4));
        //获取月份
        var BM = Number(beforeTime.substring(5,7));
        var NM = Number(now.substring(5,7));
        //获取日期
        var BD = Number(beforeTime.substring(8,10));
        var ND = Number(now.substring(8,10));

        var flag = false;
        if(BD < ND){
            flag = true;
        }else if(BM < NM){
            flag = true;
        }else if(BY < NY){
            flag = true;
        }

//			if(!isShow){
//				$("#sellerInform").click();
//			}else if(isShow && flag){
//				$("#sellerInform").click();
//			}

    })

    $(document).ready(function() {
        if(isGodChoose()) {
            var gotoxiuba = $("#goto-xiuba-href");
            if (gotoxiuba&&gotoxiuba.length>0){
                gotoxiuba.css("display","inline-block");
            }
        }
    });

    $("#yhzx").click(function () {
        $('grxx_div').show()
        $('mainDiv').hide()
    });
</script>
</script>
</html>