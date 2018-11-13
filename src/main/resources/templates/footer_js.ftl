

<script type="text/javascript" src="/saleterrace/js/verdor/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-zclip/jquery.zclip.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-jqPaginator/jqPaginator.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-loadTemplate/jquery.loadTemplate-1.4.4.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery.form.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-first-event.js"></script>
<script type="text/javascript" src="/saleterrace/js/angular/angular.js"></script>
<script type="text/javascript" src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/top.js"></script>

<script type="text/javascript" src="/saleterrace/js/angular/ng-file-upload.js"></script>
<script type="text/javascript" src="/saleterrace/js/angular/ng-file-upload-shim.min.js"></script>


<#--<script type="text/javascript" src="/saleterrace/js/verdor/datepicker/WdatePicker.js"></script>-->




<#--<script type="text/javascript" src="/saleterrace/js/account/accountmanage.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/account/yhzx_loginpwd.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/account/yhzx_zfpwd.js"></script>-->
<#--<script type="text/javascript" src="https://js.users.51.la/19492995.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/common.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/cos-js-sdk-v4.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/homePage.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/page.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/popdg.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/store+json2.min.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/store.expire.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/store.min.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/task.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/taskComment.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/common/uploadImageCommon.js"></script>-->

<#--<script type="text/javascript" src="/saleterrace/js/dist/viewer.js"></script>-->

<#--<script type="text/javascript" src="/saleterrace/js/seller/bindStore.js"></script>-->
<#--&lt;#&ndash;<script type="text/javascript" src="/saleterrace/js/seller/bindStorePop.js"></script>&ndash;&gt;-->
<#--<script type="text/javascript" src="/saleterrace/js/seller/blacklist.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/seller/homePage.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/seller/jfbrw.js"></script>-->
<#--<script type="text/javascript" src="/saleterrace/js/seller/newPrefbrw.js"></script>-->

<#--<script type="text/javascript" src="/saleterrace/js/verdor/zebra_dialog/zebra_dialog.js"></script>-->

<#--<script type="text/javascript" src="/saleterrace/js/selectize.js"></script>-->

<!--angularJs-->
<script type="text/javascript" src="/saleterrace/js/controller/saleterrace.js"></script>


<script type="text/javascript">
    $(".menu_li").click(function () {
        $(".menu_li").removeClass("add");
        // $(this).addClass("add").siblings().removeClass();
        $(this).addClass("add")
    })
    var searchLogin = function (name) {
        $('#'+name).modal('show');
        return;
    }
    // var searchLogin = function (name) {
    //     $('#'+name).modal('hide');
    //     return;
    // }
</script>


<#--<script>-->
    <#--function closeImg() {-->
        <#--$(".contentBox").remove();-->
        <#--if($('#userRole').val()) {-->
            <#--pddexpires();-->
        <#--}-->
    <#--}-->

    <#--function closeImg2() {-->
        <#--$(".contentBox").remove();-->
    <#--}-->
    <#--/*function tongzhi(obj){-->
<#--var str = "<div class='contentBox'  onclick='closeImg();'>" +-->
        <#--"<div class='content' style='height:400px;width: 470px;'>" +-->
        <#--"<div class='noAgain'><i></i>不再提示</div>"+-->
        <#--"<span onclick='closeImg();'></span>" +-->
        <#--"<p style='width: 600px;margin-bottom:0px;margin-left:150px;margin-top: 10px;font-size: 17px;' >公告：</p>"+-->
        <#--"<p style='width: 600px;margin-bottom:0px;margin-left:0px;margin-top: 50px;' >亲，平台将于16日23:30-17日8:00进行数据库升级，</p>"+-->
        <#--"<p style='width: 600px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >届时网站将停止访问，请大家提前做好活动安排 </p>"+-->
        <#--/!*"<p style='width: 600px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >试客多平台双11吞吐量上限10万单</p>"+-->
        <#--"<p style='width: 600px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >目前已被各大商家提前预定7万单，仅剩3万单的额度</p>"+-->
        <#--"<p style='width: 600px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >资源非常紧张，请马上联系我提前落位，时间就是金钱！</p>"+-->
        <#--"<p style='width: 600px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >还有几个小时就要开始了，请马上联系我预登记单量</p>"+-->
        <#--"<p style='width: 650px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >人满即止，额度非常有限! </p>" +-->
        <#--"<p style='width: 650px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >不要跟钱过不去，抓紧机会,避免踏空！</p>" +-->
        <#--"<p style='width: 650px;margin-bottom:0px;margin-left:10px;margin-top: 10px;' >毛经理：QQ：2852366295  TEL：17557296910 </p>" +*!/-->
<#--//                "<p style='width: 650px;margin-bottom:0px;margin-left:0px;margin-top: 10px;' >非常感谢各位商家一直以来对试客多的支持，祝大家放单愉快！</p>" +-->
        <#--/!*"<p style='width: 650px;margin-bottom:0px;margin-left:-15px; '>3.平台新增复购活动，提高宝贝回购率，做好老客户维护权重；</p>" +-->
        <#--"<p style='width: 650px;margin-bottom:0px;margin-left:-15px; '>4.试用间隔时间自定义设置（店铺管理），根据类目情况设置间隔时间，合理布局复购率，提高补单</p>" +-->
        <#--"<p style='width: 650px;margin-bottom:0px;margin-left:-3px; '>安全性。</p>" +*!/-->
        <#--"<p></p>"+-->
        <#--"<p></p>"+-->
        <#--"<p></p>"+-->
        <#--"<p></p>"+-->
        <#--"<p></p>"+-->
        <#--"<p></p>"+-->
        <#--"<p></p>"+-->
        <#--"</div>" +-->
        <#--"</div>";-->
<#--$('body').prepend(str);-->
<#--$(".content").css({-->
    <#--"width":"750x",-->
    <#--// "height":"280px",-->
    <#--"margin":"-210px 0 0 -275px",-->
    <#--"background":"url(/asserts/images/roleBg2.png) no-repeat"-->
<#--});-->
<#--$(".content").click(function(){-->
    <#--return false;-->
<#--});-->
<#--$(".noAgain").click(function(){-->
    <#--var keep = new Date();-->
    <#--var active = $(this).find("i").hasClass("active");-->
    <#--if(active){-->
        <#--$(this).find("i").removeClass("active");-->
        <#--store.set("isShow",'');-->
    <#--}else{-->
        <#--$(this).find("i").addClass("active");-->
        <#--store.set("isShow",keep.getTime());-->
    <#--}-->
<#--});-->
<#--}*/-->

    <#--// function pddexpires() {-->
    <#--//     //        var str = ;-->
    <#--//     //        $('body').prepend(str);-->
    <#--//     $(".contentBox").show();-->
    <#--//     $(".content").css({-->
    <#--//         "width": "750x",-->
    <#--//         // "height":"280px",-->
    <#--//         "margin": "-320px 0 0 -215px",-->
    <#--//         //"background":"url(/asserts/images/pddtip.jpg) no-repeat",-->
    <#--//         "background-size": "400px 600px"-->
    <#--//     });-->
    <#--//     $(".content").click(function() {-->
    <#--//         return false;-->
    <#--//     });-->
    <#--//     $(".noAgain").click(function() {-->
    <#--//         var keep = new Date();-->
    <#--//         var active = $(this).find("i").hasClass("active");-->
    <#--//         if(active) {-->
    <#--//             $(this).find("i").removeClass("active");-->
    <#--//             store.set("isShow", '');-->
    <#--//         } else {-->
    <#--//             $(this).find("i").addClass("active");-->
    <#--//             store.set("isShow", keep.getTime());-->
    <#--//         }-->
    <#--//     });-->
    <#--// }-->
    <#--//vip弹框-->
    <#--function showVipAlert(msg) {-->
        <#--var html = '<div class="shade" style="position: absolute;top: 0; left: 0;width: 100%;background: #000;opacity: 0.5; "></div>' +-->
                <#--'<div class="shade-box" style="position: absolute;  left: 50%; width: 400px; height: 300px; z-index: 300;background-color: #fff; border-radius: 10px; margin-left: -200px;" >' +-->
                <#--'<a class="shade-close" style="font-size: 18px;float: right;margin: 6px 15px 0 0px;">X</a>' +-->
                <#--'<p style="clear:both; font-size: 16px; font-weight: bold; text-align: center; margin-top: 99px;">' + msg + '</p>' +-->
                <#--'<a href="/saleterrace/jnbzj_index" target="_blank" style="background-color: #5AC2E7;padding: 9px 31px;float: left;margin-top: 48px;margin-left: 132px;color: #fff;border-radius: 5px;font-size: 16px;">去缴纳保证金</a>' +-->
                <#--'</div>';-->
        <#--var body = $("body")-->
        <#--body.append(html);-->
        <#--$(".shade").height(body.height());-->
        <#--$(".shade-box").css({-->
            <#--top: (document.body.offsetHeight) / 2 + document.body.scrollTop - 400 + 'px'-->
        <#--});-->
        <#--$(".shade-box a").css({-->
            <#--cursor: 'pointer'-->
        <#--});-->
        <#--$(".shade-close").on("click", function() {-->
            <#--$(".shade, .shade-box").remove();-->
        <#--})-->
    <#--}-->

    <#--//协议弹框-->
    <#--// protocolTemplate-->
    <#--function showProtocolAlert() {-->
        <#--var html = '<div class="protocol-shade" style="position: absolute;top: 0; left: 0;width: 100%;background: #000;opacity: 0.5; height: 300%; z-index: 1099;"></div>' +-->
                <#--'<div class="protocol-shade-box" style="position: absolute; top: 10%; left: 50%; width: 700px;  z-index: 1100;background-color: #fff; border-radius: 10px; margin-left: -350px;" >' +-->
                <#--'<p style="font-size: 12px; clear: both; padding:20px;">请先自己阅读并接受协议：</p>' +-->
                <#--'<h2 style="text-align: center;">试客多服务协议（商家版）</h2>' +-->
                <#--'<div class="protocol-shade-box-text" style="width: 610px; border: 1px solid #ddd; height: 300px; padding: 10px; overflow-y: scroll; overflow-x:hidden;  margin: 30px auto;"></div>' +-->
                <#--'<div style="padding: 20px;">' +-->
                <#--'<label for="protocolAgree" >' +-->
                <#--'<input type="radio"  value="1" id="protocolAgree" name="protocolAgree" style="vertical-align: -1px; margin: 0 5px;">' +-->
                <#--'我已仔细阅读并同意以上条款和条件' +-->
                <#--'</label>' +-->
                <#--'<span class="protocol-agree-tip" style="color: red; display: none; padding-left: 40px;">请仔细阅读并选中</span>' +-->
                <#--'</div>' +-->
                <#--'<div style="padding: 10px 20px 30px 20px; text-align: center;">' +-->
                <#--'<button id="protocolAgreeBtn" type="button" style="border-radius: 5px; padding: 5px 20px;  margin-right: 30px; outline: none;">同意</button>' +-->
                <#--'<button type="button" style="border-radius: 5px; padding: 5px 20px;  margin-left: 30px; outline: none;">不同意</button>' +-->
                <#--'</div>' +-->
                <#--'</div>';-->
        <#--var body = $("body");-->
        <#--var protocolTemplate = $("#protocolTemplate").html();-->
        <#--body.append(html).css({-->
            <#--overflow: 'hidden',-->
        <#--});-->
        <#--$(".protocol-shade-box-text").html(protocolTemplate);-->
        <#--$(".protocol-shade-box").css({-->
            <#--top: '10%',-->
        <#--});-->
        <#--$(".protocol-shade-box a").css({-->
            <#--cursor: 'pointer'-->
        <#--});-->

        <#--$("#protocolAgreeBtn").on("click", function() {-->
            <#--if($('input:radio[name="protocolAgree"]:checked').val()) {-->
                <#--$("body").css({-->
                    <#--overflow: 'auto',-->
                <#--});-->
                <#--$(".protocol-shade, .protocol-shade-box").remove();-->
                <#--store.set("protocol", "1");-->
            <#--} else {-->
                <#--$(".protocol-agree-tip").show();-->
            <#--}-->

        <#--});-->

    <#--}-->

    <#--function function1() {-->
        <#--var newVar = request("new");-->
        <#--var protocol = store.get('protocol');-->
        <#--if(newVar && newVar === "1" && !protocol) {-->
            <#--showProtocolAlert();-->
        <#--}-->
    <#--}-->

    <#--if(window.location.hostname=='115.159.84.78'){-->
        <#--window.location.href="http://budingdan.com";-->
    <#--}-->
    <#--<!-- 百度统计 &ndash;&gt;-->
    <#--//        var _hmt = _hmt || [];-->
    <#--//        (function() {-->
    <#--//            var hm = document.createElement("script");-->
    <#--//            hm.src = "https://hm.baidu.com/hm.js?4e62b0120a2ce8478d446718527ae0ce";-->
    <#--//            var s = document.getElementsByTagName("script")[0];-->
    <#--//            s.parentNode.insertBefore(hm, s);-->
    <#--//        })();-->

    <#--if (!store.enabled) {-->
        <#--alert('您的浏览器不支持使用！！ 请关闭浏览器的"隐私模式"或者升级到主流浏览器已达到最佳体验');-->
    <#--}-->

    <#--var uid = 162036;-->
    <#--//用户是否登录-->
    <#--function isLogin() {-->
        <#--return uid != null ? true : false;-->
    <#--}-->

    <#--//上帝是否选择了你^_^ 可以提前看到一些东西-->
    <#--function isGodChoose(){-->
        <#--//id结尾为0的，大概为10分之一几率-->
        <#--var lastNumber = Math.abs(uid)%10;-->
        <#--return uid!=null?lastNumber<=9:false;-->
<#--//            return true;-->
    <#--}-->

    <#--//移除所有input和textarea的前后空格-->
    <#--function removeSpaceFunction() {-->
        <#--$('input[type=text], textarea').each(function(){-->
            <#--$(this).val(jQuery.trim($(this).val()));-->
        <#--});-->
    <#--}-->

    <#--//绑定可能是按钮触发的click事件，将该event插入到第一位，在点击后第一时间将所有的前后空格去除-->
    <#--$(window).load(function () {-->
        <#--$("input").firstOn("click",removeSpaceFunction);-->
    <#--});-->

    <#--$(function(){-->
        <#--var isShow = store.get("isShow");-->
        <#--var beforeTime = (new Date(isShow)).Format("yyyy-MM-dd");-->
        <#--var now = (new Date()).Format("yyyy-MM-dd");-->
        <#--//获取年份-->
        <#--var BY = Number(beforeTime.substring(0,4));-->
        <#--var NY = Number(now.substring(0,4));-->
        <#--//获取月份-->
        <#--var BM = Number(beforeTime.substring(5,7));-->
        <#--var NM = Number(now.substring(5,7));-->
        <#--//获取日期-->
        <#--var BD = Number(beforeTime.substring(8,10));-->
        <#--var ND = Number(now.substring(8,10));-->

        <#--var flag = false;-->
        <#--if(BD < ND){-->
            <#--flag = true;-->
        <#--}else if(BM < NM){-->
            <#--flag = true;-->
        <#--}else if(BY < NY){-->
            <#--flag = true;-->
        <#--}-->

<#--//			if(!isShow){-->
<#--//				$("#sellerInform").click();-->
<#--//			}else if(isShow && flag){-->
<#--//				$("#sellerInform").click();-->
<#--//			}-->

    <#--})-->

    <#--$(document).ready(function() {-->
        <#--if(isGodChoose()) {-->
            <#--var gotoxiuba = $("#goto-xiuba-href");-->
            <#--if (gotoxiuba&&gotoxiuba.length>0){-->
                <#--gotoxiuba.css("display","inline-block");-->
            <#--}-->
        <#--}-->
    <#--});-->

    <#--$(document).ready(function () {-->
        <#--if (isGodChoose()) {-->
            <#--var gotoxiuba = $("#goto-xiuba-href");-->
            <#--if (gotoxiuba && gotoxiuba.length > 0) {-->
                <#--gotoxiuba.css("display", "inline-block");-->
            <#--}-->
        <#--}-->
    <#--});-->
    <#--// $(".content").click(function () {-->
    <#--//     return false;-->
    <#--// });-->
    <#--// $(".noAgain").click(function () {-->
    <#--//     var keep = new Date();-->
    <#--//     var active = $(this).find("i").hasClass("active");-->
    <#--//     if (active) {-->
    <#--//         $(this).find("i").removeClass("active");-->
    <#--//         store.set("isShow", '');-->
    <#--//     } else {-->
    <#--//         $(this).find("i").addClass("active");-->
    <#--//         store.set("isShow", keep.getTime());-->
    <#--//     }-->
        <#--var body = $("body")-->
        <#--body.append(html);-->
        <#--$(".shade").height(body.height());-->
        <#--$(".shade-box").css({-->
            <#--top: (document.body.offsetHeight) / 2 + document.body.scrollTop - 400 + 'px'-->
        <#--});-->
        <#--$(".shade-box a").css({-->
            <#--cursor: 'pointer'-->
        <#--});-->
        <#--$(".shade-close").on("click", function () {-->
            <#--$(".shade, .shade-box").remove();-->
        <#--})-->
    <#--});-->
    <#--$(document).ready(function () {-->
        <#--if (isGodChoose()) {-->
            <#--var gotoxiuba = $("#goto-xiuba-href");-->
            <#--if (gotoxiuba && gotoxiuba.length > 0) {-->
                <#--gotoxiuba.css("display", "inline-block");-->
            <#--}-->
        <#--}-->
    <#--});-->
    <#--function payTip() {-->
        <#--var dg;-->
        <#--var html = "<span style='font-size: 16px;display: block;margin-bottom: 10px;'>请前往充值页面进行充值</span>";-->
        <#--var okCallback = function () {-->
            <#--dg.close();-->
        <#--};-->
        <#--var cancelCallbak = function () {-->
            <#--window.location.reload();-->
        <#--};-->
        <#--var options = {-->
            <#--width: 400,-->
            <#--overlay_close: false,-->
            <#--show_close_button: false,-->
            <#--center_buttons: true-->
        <#--};-->
        <#--dg = _showDialog('confirmation', "支付小贴士：", html, "充值遇到问题", okCallback, "已完成充值", cancelCallbak, options);-->
    <#--}-->

    <#--function payTip2() {-->
        <#--var dg;-->
        <#--var html = "<span style='font-size: 16px;display: block;margin-bottom: 10px;'>当前余额不足，请先充值。</span>";-->
        <#--var okCallback = function () {-->
            <#--window.open("/saleterrace/zjgl_index");-->
        <#--};-->
        <#--var cancelCallbak = function () {-->
            <#--window.location.reload();-->
        <#--};-->
        <#--var options = {-->
            <#--width: 400,-->
            <#--overlay_close: false,-->
            <#--show_close_button: false,-->
            <#--center_buttons: true-->
        <#--};-->
        <#--dg = _showDialog('confirmation', "支付小贴士：", html, "马上去充值", okCallback, "已完成充值", cancelCallbak, options);-->
    <#--}-->
    <#--$(".finding_ways .remember_finding").click(function(){-->
        <#--$(".set_payPwd").removeClass("hidden");-->
        <#--$(".finding_ways").addClass("hidden");-->
        <#--$(".title_div2 img").attr("src","/saleterrace/images/step2.png");-->
        <#--$(".title_div2 b").text("设置新登录密码");-->
    <#--});-->
    <#--if(request("type")=="buyer_admin"){-->
        <#--$(".finding_ways .remember_finding").click();-->
        <#--$(".reset_payPwd_div .title_div2").hide();-->
    <#--}-->
    <#--$(function(){-->
        <#--/*$(".finding_ways .remember_finding").click(function(){-->
            <#--$(".set_payPwd").removeClass("hidden");-->
            <#--$(".finding_ways").addClass("hidden");-->
            <#--$(".title_div2 img").attr("src","/asserts/images/fbrw/step2.png");-->
            <#--$(".title_div2 b").text("设置新登录密码");-->
        <#--});*/-->
        <#--$(".finding_ways .forget_finding").click(function(){-->
            <#--$(".finding_ways").addClass("hidden");-->
            <#--$(".safety_check").removeClass("hidden");-->

            <#--$(".title_div2 img").attr("src","/saleterrace/images/step2.png");-->
            <#--$(".title_div2 b").text("进行安全验证");-->
            <#--$("#passwordF2").removeClass("hidden")-->
        <#--});-->
        <#--$("#otherway").click(function(){-->
            <#--$(".finding_ways").removeClass("hidden");-->
            <#--$(".safety_check").addClass("hidden");-->
            <#--$(".title_div2 img").attr("src","/saleterrace/images/step1.png");-->
            <#--$(".title_div2 b").text("选择重置方式");-->
        <#--});-->
        <#--$(".safety_check .next_step_button").click(function(){-->
            <#--var code=$("#verifyCode").val();-->
            <#--if(!code){-->
                <#--alert("请填写图片验证码");-->
                <#--return;-->
            <#--}-->
            <#--var phoneNo=parseInt($.trim($("#phoneNoId").val()));-->
            <#--var phoneReg=/^1[0-9]{10}/;-->
            <#--if(phoneNo==null||!phoneReg.test(phoneNo)){-->
                <#--alert("请填写正确的手机号码");-->
                <#--return;-->
            <#--}-->
            <#--var checkCode = $("#checkW").val();-->
            <#--if(!checkCode||checkCode.length<6){-->
                <#--alert("请输入短信验证码");-->
                <#--return;-->
            <#--}-->
            <#--$.ajax({-->
                <#--type: "POST",-->
                <#--url: "/checkSms.htm",-->
                <#--data: "phoneNo=" + phoneNo + "&smsCode=" + checkCode,-->
                <#--success: function(msg){-->
                    <#--if (msg.checkResult == "true") {-->
                        <#--$("#checkW_id").val($("#checkW").val());-->
                        <#--$(".set_newPwd").removeClass("hidden");-->
                        <#--$(".safety_check").addClass("hidden");-->
                        <#--$(".title_div2 img").attr("src","/saleterrace/images/step3.png");-->
                        <#--$(".title_div2 b").text("设置新登录密码");-->
                    <#--} else{-->
                        <#--alert("短信验证码有误！");-->
                    <#--}-->
                <#--}-->
            <#--});-->

        <#--});-->
        <#--$(".prev_step_button").click(function () {-->
            <#--$(".finding_ways").removeClass("hidden");-->
            <#--$("#passwordF2").addClass("hidden");-->
        <#--});-->
        <#--$("#passwordPrv2").click(function () {-->
            <#--$(".set_newPwd").addClass("hidden");-->
            <#--$(".safety_check").removeClass("hidden");-->
        <#--})-->
        <#--$("#passwordPrv").click(function () {-->
            <#--$(".finding_ways").removeClass("hidden");-->
            <#--$(".set_payPwd").addClass("hidden");-->
        <#--});-->
    <#--});-->
    <#--var code ; //在全局 定义验证码-->
    <#--function createCode(){-->
        <#--code = new Array();-->
        <#--var codeLength = 4;//验证码的长度-->
        <#--var checkCode = document.getElementById("checkCode");-->
        <#--checkCode.value = "";-->

        <#--var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');-->

        <#--for(var i=0;i<codeLength;i++) {-->
            <#--var charIndex = Math.floor(Math.random()*32);-->
            <#--code +=selectChar[charIndex];-->
        <#--}-->
        <#--if(code.length != codeLength){-->
            <#--createCode();-->
        <#--}-->
        <#--checkCode.value = code;-->
    <#--}-->
    <#--function changeImg() {-->
        <#--var imgSrc = $("#imgObj");-->
        <#--var src = imgSrc.attr("src");-->
        <#--imgSrc.attr("src", chgUrl(src));-->
    <#--}-->
    <#--function chgUrl(url) {-->
        <#--var timestamp = (new Date()).valueOf();-->
        <#--// url = url.substring(0, 17);-->
        <#--if ((url.indexOf("&") >= 0)) {-->
            <#--url = url + "×tamp=" + timestamp;-->
        <#--} else {-->
            <#--url = url + "?timestamp=" + timestamp;-->
        <#--}-->
        <#--return url;-->
    <#--}-->

    <#--$(function(){-->
        <#--/* $(".getCode_button").click(function(){-->
            <#--var obj=$(this);-->
            <#--if($(this).val()=="获取短信验证码"){-->
                <#--var seconds=60;-->
                <#--$(this).css("cursor","default");-->
                <#--int=setInterval(function(){-->
                    <#--if(seconds>=1){-->
                        <#--obj.val("已发送("+--seconds+")");-->
                    <#--}else{-->
                        <#--clearInterval(int);-->
                        <#--obj.val("获取短信验证码");-->
                        <#--$(this).css("cursor","pointer");-->
                    <#--}-->
                <#--},1000);-->
            <#--}-->
        <#--}); */-->
        <#--$(".finding_ways .remember_finding").click(function(){-->
            <#--$(".set_payPwd").removeClass("hidden");-->
            <#--$(".finding_ways").addClass("hidden");-->
            <#--$(".title_div2 img").attr("src","/saleterrace/images/step2.png");-->
            <#--$(".title_div2 b").text("设置新支付密码");-->
        <#--});-->
        <#--$(".finding_ways .forget_finding").click(function(){-->
            <#--$(".finding_ways").addClass("hidden");-->
            <#--$(".safety_check").removeClass("hidden");-->

            <#--$(".title_div2 img").attr("src","/saleterrace/images/step2.png");-->
            <#--$(".title_div2 b").text("进行安全验证");-->
            <#--$("#passwordF2").removeClass("hidden")-->
        <#--});-->
        <#--$("#otherway").click(function(){-->
            <#--$(".finding_ways").removeClass("hidden");-->
            <#--$(".safety_check").addClass("hidden");-->
            <#--$(".title_div2 img").attr("src","/saleterrace/images/step1.png");-->
            <#--$(".title_div2 b").text("选择重置方式");-->
        <#--});-->
        <#--$(".safety_check .next_step_button").click(function(){-->
            <#--var phoneNo=parseInt($.trim($("#phoneNoId").val()));-->
            <#--var checkCode = $("#smsCode").val();-->
            <#--if(!checkCode){-->
                <#--alert("请输入短信验证码");-->
                <#--return;-->
            <#--}-->
            <#--if(checkCode.length<6){-->
                <#--alert("短信验证码有误！");-->
                <#--return;-->
            <#--}-->
            <#--$.ajax({-->
                <#--type: "POST",-->
                <#--url: "/checkSms.htm",-->
                <#--data: "phoneNo=" + phoneNo + "&smsCode=" + checkCode,-->
                <#--success: function(msg){-->
                    <#--if (msg.checkResult == "true") {-->
                        <#--$(".set_newPwd").removeClass("hidden");-->
                        <#--$(".safety_check").addClass("hidden");-->
                        <#--$(".title_div2 img").attr("src","/saleterrace/images/step3.png");-->
                        <#--$(".title_div2 b").text("设置新支付密码");-->
                    <#--} else{-->
                        <#--alert("短信验证码有误！");-->
                    <#--}-->
                <#--}-->
            <#--});-->
        <#--});-->
        <#--$(".prev_step_button").click(function () {-->
            <#--$(".finding_ways").removeClass("hidden");-->
            <#--$("#passwordF2").addClass("hidden");-->
        <#--});-->
        <#--$("#passwordPrv2").click(function () {-->
            <#--$(".set_newPwd").addClass("hidden");-->
            <#--$(".safety_check").removeClass("hidden");-->
        <#--})-->
        <#--$("#passwordPrv").click(function () {-->
            <#--$(".finding_ways").removeClass("hidden");-->
            <#--$(".set_payPwd").addClass("hidden");-->
        <#--});-->
    <#--});-->
    <#--var code ; //在全局 定义验证码-->
    <#--function createCode(){-->
        <#--code = new Array();-->
        <#--var codeLength = 4;//验证码的长度-->
        <#--var checkCode = document.getElementById("checkCode");-->
        <#--checkCode.value = "";-->

        <#--var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');-->

        <#--for(var i=0;i<codeLength;i++) {-->
            <#--var charIndex = Math.floor(Math.random()*32);-->
            <#--code +=selectChar[charIndex];-->
        <#--}-->
        <#--if(code.length != codeLength){-->
            <#--createCode();-->
        <#--}-->
        <#--checkCode.value = code;-->
    <#--}-->
    <#--function changeImg() {-->
        <#--var imgSrc = $("#imgObj");-->
        <#--var src = imgSrc.attr("src");-->
        <#--imgSrc.attr("src", chgUrl(src));-->
    <#--}-->
    <#--function chgUrl(url) {-->
        <#--var timestamp = (new Date()).valueOf();-->
        <#--// url = url.substring(0, 17);-->
        <#--if ((url.indexOf("&") >= 0)) {-->
            <#--url = url + "×tamp=" + timestamp;-->
        <#--} else {-->
            <#--url = url + "?timestamp=" + timestamp;-->
        <#--}-->
        <#--return url;-->
    <#--}-->
<#--</script>-->
<#--<script>-->
    <#--$(function () {-->
        <#--(function ($) {-->
            <#--$.fn.tabs = function (options) {-->
                <#--var defualts = {switchingMode: "click"};-->
                <#--var opts = $.extend({}, defualts, options);-->
                <#--var obj = $(this);-->
                <#--var clickIndex = 0;-->
                <#--obj.addClass("tabsDiv");-->
                <#--$(".tabs_ul li:first", obj).addClass("tabsSeletedLi");-->
                <#--$(".tabs_ul li:first", obj).css("border-right", "0px");-->
                <#--$(".tabs_ul li", obj).not(":first").addClass("tabsUnSeletedLi");-->
                <#--$(".content_div", obj).not(":first").hide();-->
                <#--$(".tabs_ul li", obj).css("display", "block");-->
                <#--$(".tabs_ul li", obj).bind(opts.switchingMode, function () {-->
<#--// 					if (clickIndex != $("ul li", obj).index($(this))) {-->
<#--// 						clickIndex = $("ul li", obj).index($(this));-->
<#--// 						$(".tabsSeletedLi", obj).removeClass("tabsSeletedLi").addClass("tabsUnSeletedLi");-->
<#--// 						$(this).removeClass("tabsUnSeletedLi").addClass("tabsSeletedLi");-->
<#--// 						$(".content_div", obj).hide();-->
<#--// 						$(".content_div", obj).eq(clickIndex).show();-->
<#--// 					};-->
                    <#--clickIndex = $("ul li", obj).index($(this));-->
                    <#--if (clickIndex == 1) {-->
                        <#--location.href = "withdrawhistory.htm"-->
                    <#--}-->
                <#--});-->
            <#--};-->
        <#--})(jQuery);-->
        <#--//------------执行方法-->
        <#--$("#zjjl_tabs").tabs();-->
        <#--$("#zjjl_tabs").css("visibility", "visible")-->
        <#--$(".option_button").click(function () {-->
            <#--if ($(this).attr("class").indexOf("hide_chosen_button") > 0) {-->
                <#--$(this).parent().parent().find(".option_button").addClass("hide_chosen_button");-->
                <#--$(this).removeClass("hide_chosen_button");-->
            <#--}-->
        <#--});-->
        <#--$(".number_button").click(function () {-->
            <#--$(".number_button").removeClass("number_button_chosen");-->
            <#--$(this).addClass("number_button_chosen");-->
        <#--});-->
    <#--});-->

    <#--$("#dateStart").click(function () {-->
        <#--WdatePicker({-->
            <#--readOnly: true,-->
            <#--dateFmt: 'yyyy-MM-dd HH:mm:ss',-->
            <#--maxDate: '#F{$dp.$D(\'dateEnd\',{d:0});}',-->
            <#--onpicked: function () {-->
                <#--/*findByDate()*/-->
            <#--}-->
        <#--});-->
    <#--});-->

    <#--$("#dateEnd").click(function () {-->
        <#--WdatePicker({-->
            <#--readOnly: true,-->
            <#--dateFmt: 'yyyy-MM-dd HH:mm:ss',-->
            <#--minDate: '#F{$dp.$D(\'dateStart\',{d:0});}',-->
            <#--onpicked: function () {-->
                <#--/*findByDate()*/-->
            <#--}-->
        <#--});-->
    <#--});-->
    <#--$(".nextDetailBtn").click(function () {-->
        <#--if ($(this).parent().parent().next().css("display") == "none") {-->
            <#--$(".nextDetailBtn").parent().parent().next().hide();-->
            <#--$(this).parent().parent().next().show();-->
        <#--} else {-->
            <#--$(this).parent().parent().next().hide();-->
        <#--}-->
    <#--});-->

    <#--function findResult(payType) {-->
        <#--$("#payTpyeId").val(payType)-->
        <#--$("#pageId").val(1)-->
        <#--submitForm();-->
    <#--}-->

    <#--function submitForm() {-->
        <#--$('input, textarea').each(function () {-->
            <#--$(this).val(jQuery.trim($(this).val()));-->
        <#--});-->
        <#--$("#findCondition").submit();-->
    <#--}-->

    <#--function searchTask() {-->
        <#--$("#pageId").val(1);-->
        <#--var ctno = $("#_ctaskno").val();-->
        <#--$("#childTaskNum").val(ctno);-->
        <#--submitForm();-->
    <#--}-->

    <#--function exportExcel() {-->
        <#--$("#export").attr("disabled", "disabled");-->
        <#--var ctno = $("#_ctaskno").val();-->
        <#--$("#childTaskNum").val(ctno);-->
        <#--$('input, textarea').each(function () {-->
            <#--$(this).val(jQuery.trim($(this).val()));-->
        <#--});-->
        <#--var params = $("#findCondition").serialize();-->
        <#--window.open("/account/exportAccountHistory.htm?" + params);-->
        <#--$("#export").removeAttr("disabled");-->
    <#--}-->

    <#--function findSomeDateResult(payType) {-->
        <#--//  $("#pageId").val(1)-->
        <#--$("#timeTypeId").val(payType)-->
        <#--$("#dateStart,#dateEnd").val("")-->
        <#--//submitForm();-->
    <#--}-->

    <#--function go(page) {-->
        <#--$("#pageId").val(page)-->
        <#--submitForm();-->
    <#--}-->

    <#--function findByDate() {-->
        <#--if ($("#dateStart").val() && $("#dateStart").val()) {-->
            <#--$("#pageId").val(1)-->
            <#--submitForm();-->
        <#--}-->
    <#--}-->

    <#--function init() {-->
        <#--$("#Content").height($(".zjjl_div").height() + 40);-->
        <#--headerStyle(1);-->
        <#--var type = $("#nav_hidden").val();-->
        <#--if (type == 1) {-->
            <#--navigatorStyle(5);-->
        <#--} else if (type == 2) {-->
            <#--navigatorStyle(6);-->
        <#--}-->
    <#--}-->

    <#--/*复选点击事件*/-->
    <#--$(".dl_two dd i").on("click", function () {-->
        <#--if ($(this).attr("disabled") != "disabled") {-->
            <#--if ($(this).hasClass("current")) {-->
                <#--if ($("dd i.current", $(this).parent("dd").parent(".dl_two")).size() <= 1) {-->
                    <#--alert("最少选择一个交易类型。");-->
                <#--} else {-->
                    <#--$(this).removeClass("current");-->
                <#--}-->
            <#--} else {-->
                <#--$(this).addClass("current");-->
            <#--}-->
        <#--}-->
        <#--transactionTypes();-->
        <#--return false;-->
    <#--});-->
    <#--$(".mColumn").on("click", function () {-->
        <#--if ($(this).prev("i").attr("disabled") != "disabled") {-->
            <#--if ($(this).prev("i").hasClass("current")) {-->
                <#--if ($("dd i.current", $(this).parent("dd").parent(".dl_two")).size() <= 1) {-->
                    <#--//提示-->
                    <#--alert("最少选择一个交易类型。");-->
                <#--} else {-->
                    <#--$(this).prev("i").removeClass("current");-->
<#--//                $("dt i",$(this).parent("dd").parent(".dl_two")).removeClass("current");-->
                <#--}-->
            <#--} else {-->
                <#--$(this).prev("i").addClass("current");-->
            <#--}-->
        <#--}-->
        <#--transactionTypes();-->
        <#--return false;-->
    <#--});-->

    <#--function transactionTypes() {-->
        <#--var transactionTypes = "";-->
        <#--$("dd i.current span", $(".dl_two")).each(function (i) {-->
            <#--if (i == 0) {-->
                <#--transactionTypes = $(this).attr("value");-->
            <#--} else {-->
                <#--transactionTypes = transactionTypes + "," + $(this).attr("value");-->
            <#--}-->
        <#--});-->
        <#--$("#transactionTypes").val(transactionTypes);-->
    <#--}-->
<#--</script>-->
