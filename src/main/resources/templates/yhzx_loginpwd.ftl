<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="/saleterrace/images/favicon.ico" type="image/x-icon" />
    <title>【试客多】-重置登录密码</title>

    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/common.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/page.js"></script>
    <script type="text/javascript" src="/saleterrace/js/account/yhzx_loginpwd.js?"></script>
</head>
<style>
    *{
        margin:0px;
        padding:0px;
    }
    p,span,input,div,b{
        font-family: 微软雅黑;
        font-size: 14px;
        font-weight: normal;
    }
    .reset_payPwd_div{
        width:854px;
        background-color: #F8F8F8;
    }
    .title_div,.title_div2{
        width: 100%;
        background-color: #ffffff;
        height:50px;
        line-height: 50px;
        position:relative;
        top:10px;
    }
    .title_div2{
        margin-top:20px;
        top:0px;
    }
    .title_div2 span{
        color:#384655;
        margin-right:25px;
        font-size: 14px;
    }
    .title_div2 b{
        font-size: 16px;
        margin-left:5px;
        color:#666666;
    }
    .title_div2 img{
        position:relative;
        top:8px;
        /*margin-left:25px;*/
    }
    .title_div p{
        font-size: 18px;
        color:#1d1d26;
        /*margin-left:25px;*/
    }
    .title_div p span{
        color:#384655;
        font-size: 18px;
    }
    .foot_div{
        width:100%;
        height:20px;
        clear:both;
    }
    .reset_payPwd_content_div{
        width:854px;
        background-color: #ffffff;
        height:305px;
        margin-top:10px;
    }
    .finding_ways{
        width:854px;
        color:#384655;
        position:relative;
        top:40px;
    }
    .finding_ways img{
        margin-left:15px;
        margin-right:10px;
        position:relative;
        top:5px;
    }
    .floatLeft{
        float:left;
    }
    .hidden{
        display:none;
    }
    .check_surrounding{
        width:437px;
        height:37px;
        line-height: 37px;
        background-color: #5AC2E7;
        border:1px solid #E8E8E8;
        color:#ffffff;
    }
    .remember_finding,.forget_finding{
        width:437px;
        height:66px;
        line-height: 66px;
        background-color: #ffffff;
        border:1px solid #E8E8E8;
        color:#11ade2;
        cursor:pointer;
        margin-top:20px;
    }
    .halfDiv{
        width:50%;
        height:100%;
        float:left;
    }
    .remember_finding span{
        margin-left:20px;
    }
    .forget_finding span{
        margin-left:20px;
        position:relative;
        top:7px;
    }
    .forget_finding{
        line-height: 23px;
    }
    .remember_finding b{
        margin-right:20px;
        font-size: 45px;
    }
    .forget_finding .arrow_div{
        line-height: 66px;
    }
    .forget_finding span.tip_label{
        color:#AEAEAE;
    }
    .forget_finding b{
        margin-right:20px;
        font-size: 45px;
    }
    .set_payPwd{
        width:505px;
        color:#384655;
        position:relative;
        top:35px;
        line-height: 50px;
    }
    .newPwd_field{
        clear:both;
        width:70px;
        margin-right:10px;
    }
    .oldPayPwd_text,.newPayPwd_text,.newPayPwd_text2{
        width:274px;
        height:27px;
        border:1px solid #E8E8E8;
        line-height: 27px;
        font-size: 12px;
    }
    .confirm_button{
        width: 101px;
        height: 30px;
        border:1px solid #E8E8E8;
        background-color: #5AC2E7;
        color:#ffffff;
        font-size: 18px;
        cursor:pointer;
    }
    .set_payPwd span.tip_label{
        color:#AEB1B6;
        margin-left:20px;
    }
    .safety_check{
        width:355px;
        position:relative;
        top:45px;
        color:#384655;
    }
    .safety_check img{
        margin-right:10px;
        position:relative;
        top:4px;
    }
    .code_text{
        width:274px;
        height:27px;
        border:1px solid #E8E8E8;
        line-height: 27px;
        font-size: 12px;
        margin-top:20px;
        margin-bottom:20px;
    }
    .safety_check a{
        color:#7b8da0;
        position:relative;
        top:25px;
        text-decoration: none;
    }
    .set_newPwd{
        width:370px;
        position:relative;
        top:35px;
        line-height: 50px;
        color:#384655;
    }
    .next_step_button{
        width:101px;
        height:30px;
        border:1px solid #E8E8E8;
        background-color: #5AC2E7;
        color:#ffffff;
        font-size: 18px;
        cursor:pointer;
    }
    .prev_step_button{
        width: 101px;
        height: 30px;
        border: 1px solid #E8E8E8;
        background-color: #5AC2E7;
        color: #ffffff;
        font-size: 18px;
        cursor: pointer;
        margin-left: 77px;
    }
    .getCode_button{
        width:118px;
        height:28px;
        color: #384655;
        border:1px solid #F3F3F5;
        font-size: 12px;
        background-color: #ECF0F3;
        cursor:pointer;
        margin-left:15px;
    }
    .set_newPwd{
        width:370px;
        position:relative;
        top:35px;
        line-height: 50px;
        color:#384655;
    }
    .newPwd_text,.newPwd_text2{
        width:274px;
        height:27px;
        border:1px solid #E8E8E8;
        line-height: 27px;
        font-size: 12px;
    }
    .reset_payPwd_div{
        float: left;
    }
    .top-margin{
        height: 25px;
        width: 100%;
        float: left;
        background-color: #f8f8f8;
    }
    .set_payPwd .pwdm{
        position:absolute;
        right:5px;
        top:16px;
        width:18px;
        height:16px;
        background:#fff url(/saleterrace/images/i16_mclose.png) no-repeat;
        cursor:pointer;
    }
    .set_newPwd .pwdm{
        position:absolute;
        right:5px;
        top:18px;
        width:16px;
        height:16px;
        background:#fff url(/saleterrace/images/i16_mclose.png) no-repeat;
        cursor:pointer;
    }
</style>
<body>

<link rel="stylesheet" type="text/css" href="/saleterrace/css/top.css"/>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-first-event.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store+json2.min.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store.expire.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/top.js"></script>
<script type="text/javascript" src="/saleterrace/js/dist/viewer.js"></script>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/viewer.css" />

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
</script>

<script>
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
</script>
<style>
    .contentBox{
        position:fixed;
        width:100%;
        height:100%;
        background-color:rgba(0,0,0,.6);
        z-index:1000;
        display: none;
    }
    .contentBox .content{
        position:absolute;
        left:50%;
        top:50%;
        padding:15px;
        margin-left: -220px;
        margin-top: -300px;
    }
    .contentBox .content span{
        position:absolute;
        right:23px;
        top:20px;
        width:15px;
        height:15px;
        font-size:15px;
        line-height:15px;
        text-align:center;
        cursor:pointer;
    }
    .contentBox .content h2{
        font-size:24px;
        font-weight:normal;
        color:rgb(255,51,1);
        text-align:center;
        margin:20px 0 35px 0;
    }
    .contentBox .content p{
        font-size:14px;
        line-height:25px;
        text-align:justify;
        width:480px;
        margin:0 auto 30px;
        text-indent:30px;
    }
    .contentBox .content p i{
        font-size:14px;
        color:#ff3300;
        font-style:normal;
    }
    .contentBox .content h3{
        text-align:right;
        font-weight:normal;
        font-size:14px;
        color:rgb(71,195,136);
        margin-right:15px;
    }
    .contentBox .content .noAgain{
        position:absolute;
        right:50px;
        top:20px;
    }
    .contentBox .content .noAgain i{
        float:left;
        width:10px;
        height:10px;
        border:1px solid #999;
        cursor:pointer;
        margin:2px;
    }
    .contentBox .content .noAgain i.active{
        background: url(/saleterrace/images/gou.png) no-repeat center;
    }
</style>
<div class='contentBox'  onclick='closeImg2();'>
    <div class='content' style="width: 440px; height: 640px;">

        <a class="sPopupImgJump" target="_blank" style=" margin: auto; display: block; ">
            <img class='sPopup' src='' alt='' style="position: absolute; left: 0; top: 0; width: 100%;">
        </a>



        <span onclick='closeImg();' style='color: #999;right: 50px;'>X</span>
    </div>
</div>

<a class="sImgJump" style=" margin: auto; display: block; ">
    <img class="sTongZhi" src="/saleterrace/images/demo_01.jpg" alt="" style="display: block; width: 100%; height: 51px;">
</a>

<a class="sImgJump" href="#" style=" margin: auto; display: block;text-align: center;color: red;font-style: italic;text-decoration: underline;font-size: 17px; background-color: bisque;line-height: 40px;">
    本站所有赏金均由商家提供，旨在激励试客生成优质的买家秀内容，本站从中不获取任何盈利！
</a>
<div class="top">

    <a href="yhzx_index.ftl">
        <div class="logo"></div>
    </a>

    <div class="qun_for_seller qun_tip">
        <a href="//shang.qq.com/wpa/qunwpa?idkey=96519ab8b4c99204d736e67685b5354a45c8fbeae3a38df059a1ef4bd8f53575" target="_blank">活动交流群：540995352</a>
    </div>

    <ul class="LR_USER">
        <li class="pos-rel menu-box">

            <a href="#" class="menu-select-icon">
                <img src="/saleterrace/images/menu_select_icon.png" alt="" class="pos-menu-select">
                <p class="user-name">
                    15355056891
                </p>
                <p class="user-tag" style="text-align: center; line-height:normal;">

                    VIP X 天试用中

                </p>
            </a>

            </a>

            <ul class="menu-select-box">
                <li style="background-color: #f3f3f3; padding-left: 20px">
                    货款：<b class="clfdaa29" id="top_user_money"></b>元 &nbsp;&nbsp;&nbsp; 金币：
                    <b class="clfdaa29" id="top_user_coin"></b>个

                </li>
                <li style="padding-left: 20px; clear: both;">
                    <a href="/saleterrace/zjgl_index?tab=2" class="cl000 menu-select-a">充值</a>
                    <a href="/saleterrace/zjgl_index?tab=3" class="cl000 menu-select-a">提现</a>

                    <a href="jnbzj_index.ftl" target="_blank" class="menu-select-myCenter">缴纳保证金</a>

                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:logout();" class="cl01b76c">退出登陆
            </a>
        </li>

    </ul>
    <input type="hidden" id="exam" value="0">

</div>

<div class="right-menu">
    <a href="javascript:void(0);" id="offKfqq">
        <img src="/saleterrace/images/colsed-kfqq.png" alt="">
    </a>
    <!--<div class="bg1">
        <span class="menuTitleOne">不会放单找我</span>
        <span class="menuTitleTwo">其他问题找我</span>
        <div class="right-menu-one">
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852505269">小高</a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852382973">二珍</a>
        </div>
        <div class="right-menu-two">
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852505268">玫瑰</a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852505268">丁香</a>
        </div>
    </div>-->
    <div class="bg">
        <img class="bg-img" src="/saleterrace/images/kfqq.png" alt="">
        <div class="right-menu-content">
            <a href="/seller/publish/publish_mission.htm">
                <img src="/saleterrace/images/sjscfd.png" class="right-menu-content-top-img" alt="">
            </a>

            <span class="menuTitleTwo">客服问题找我</span>
            <div class="right-menu-two">
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852368872">
                    <img src="/saleterrace/images/yckf_03.png" alt=""> 宝宝
                </a>
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852365086">
                    <img src="/saleterrace/images/yckf_03.png" alt=""> 贝贝
                </a>
            </div>

            <span class="menuTitleOne">活动发布找我</span>
            <div class="right-menu-one">
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852368900">
                    &nbsp;&nbsp;&nbsp;<img src="/saleterrace/images/yckf_03.png" alt=""> 高经理
                </a>
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852356150">
                    <img src="/saleterrace/images/yckf_03.png" alt=""> 安娜老师
                </a>

                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852365085">
                    <img src="/saleterrace/images/yckf_03.png" alt=""> 周华老师
                </a>
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852366295">
                    <img src="/saleterrace/images/yckf_03.png" alt=""> 毛经理
                </a>
            </div>
            <span class="menuTitleOne">上班时间</span>
            <div class="right-menu-one">
                <p style="font-size: 12px;">
                    周一至周日
                    <br> 9:00-18:00
                </p>
            </div>
        </div>
        <div class="right-menu-content" style="padding-top: 0px;margin-top: 2px;">
            <span>商家交流群</span>
            <div class="right-menu-two">
                <img src="/saleterrace/images/er.jpg" class="QRCode" style="width: 105px;">
            </div>
            <a class="clickAdd" target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=96519ab8b4c99204d736e67685b5354a45c8fbeae3a38df059a1ef4bd8f53575">点击加入</a>
        </div>
    </div>

</div>

<a href="javascript:void(0);" id="onKfqq">
    <img src="/saleterrace/images/kfqqsmall.png" alt="">
</a>

<input type="hidden" id="imageRootPath" value="http://image-1254237507.image.myqcloud.com">
<input type="hidden" id="cosAppId" value="1254237507">
<input type="hidden" id="cosBucketName" value="image">
<input type="hidden" id="cosDownRootPath" value="http://image-1254237507.cosgz.myqcloud.com">
<input type="hidden" id="currentDate" value="20181025">
<input type="hidden" id="userRole" value="true">
<script type="text/javascript" src="https://js.users.51.la/19492995.js"></script>
<script>
    function closeImg(){
        $(".contentBox").remove();
        if($('#userRole').val()){
            pddexpires();
        }
    }
    function closeImg2(){
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

    function pddexpires(){
//        var str = ;
//        $('body').prepend(str);
        $(".contentBox").show();
        $(".content").css({
            "width":"750x",
            // "height":"280px",
            "margin":"-320px 0 0 -215px",
            //"background":"url(/asserts/images/pddtip.jpg) no-repeat",
            "background-size":"400px 600px"
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
    }
    //vip弹框
    function showVipAlert(msg) {
        var html = '<div class="shade" style="position: absolute;top: 0; left: 0;width: 100%;background: #000;opacity: 0.5; "></div>'+
                '<div class="shade-box" style="position: absolute;  left: 50%; width: 400px; height: 300px; z-index: 300;background-color: #fff; border-radius: 10px; margin-left: -200px;" >'+
                '<a class="shade-close" style="font-size: 18px;float: right;margin: 6px 15px 0 0px;">X</a>'+
                '<p style="clear:both; font-size: 16px; font-weight: bold; text-align: center; margin-top: 99px;">'+msg+'</p>'+
                '<a href="/seller/orderVip.htm" target="_blank" style="background-color: #5AC2E7;padding: 9px 31px;float: left;margin-top: 48px;margin-left: 132px;color: #fff;border-radius: 5px;font-size: 16px;">去缴纳保证金</a>'+
                '</div>';
        var body = $("body")
        body.append(html);
        $(".shade").height(body.height());
        $(".shade-box").css({
            top: (document.body.offsetHeight  )/2 + document.body.scrollTop - 400 + 'px'
        });
        $(".shade-box a").css({
            cursor: 'pointer'
        });
        $(".shade-close").on("click",function () {
            $(".shade, .shade-box").remove();
        })
    }



</script>

<link rel="stylesheet" type="text/css" href="/saleterrace/css/layout.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/header.css"/>
<div class="top-margin"></div>
<div style="height: 600px; width:1200px; margin: 0 auto">
    <div style="float: left;width: 190px;">
        <link rel="stylesheet" type="text/css" href="/saleterrace/css/navigator.css" />
        <ul class="left_menu" style="margin-bottom: 10px;">
            <li class="menu_selected" >
                <a href="/saleterrace/yhzx_index"><i class="grxx"></i>
                    <span>用户中心</span></a>
            </li>
            <li>
                <a href="/saleterrace/dpgl_index"><i class="dpbt"></i>
                    <span>店铺管理</span></a>
            </li>
            <li>
                <a href="/saleterrace/syhd_release_index"><i class="fbrw"></i>
                    <span>试用活动发布</span></a>
            </li>
            <li>
                <a  href="/saleterrace/syhd_management_index"><i class="yfbrw"></i>
                    <span>试用活动管理</span></a>
            </li>

            <li>
                <a href="/saleterrace/black_index"><i class="hmd"></i>
                    <span>试客黑名单</span>
                    <div class="new" style="left:90px;"></div></a>
            </li>

            <li>
                <a href="/saleterrace/ckzd_index"><i class="ckzd"></i>
                    <span>查看账单</span></a>
            </li>
            <li>
                <a href="/saleterrace/zjgl_index"><i class="zjgl"></i>
                    <span>资金管理</span></a
            </li>
            <li>
                <a  href="/saleterrace/ptzf_index"><i class="ckzz"></i>
                    <span>平台资费说明</span></a>
            </li>

            <li>
                <a  href="/saleterrace/tjzjb_index"><i class="rcd"></i>
                    <img src="/saleterrace/images/hot.gif" alt="" style="position: relative;top: -2px;left: 5px;">
                    <span>推荐赚金币</span></a>
            </li>

            <!--<li href="/popular/popular.htm?pg=task.pcFlow" target="_blank">-->
            <li>
                <a href="https://burenqi.com/task-pc-flow" target="_blank"><i class="i16_brq" ></i>补人气</a>
                <!--<span>补人气</span>-->
            </li>

            <li>
                <a href="http://www.chapaiming.com/" target="_blank" style="overflow:hidden;display:block;margin:0;">
                    <i class="i16_cpm"></i>
                    <span>查排名</span>
                </a>
            </li>

            <li>
                <a href="http://www.maijiabus.com/" target="_blank" style="overflow:hidden;display:block;margin:0;">
                    <i class="i16_mjbs"></i>
                    <span>流量捕手</span>
                </a>
            </li>

            <li>
                <a href="/saleterrace/sjxy_index" style="overflow:hidden;display:block;margin:0;">
                    <i class="i16_protocol"></i>
                    <span>商家电子协议</span>
                </a>
            </li>
        </ul>
        <a class="sLeftImgJump" target="_blank" style="float: left; margin: 10px 0 0 0;">
            <img class="sLeft " src="/saleterrace/images/lwds.jpg" alt="" style="width: 190px; height: 62px;">
        </a>
        <input type="hidden" id="nav_hidden" value="1" />

        <script>
            $(document).ready(function() {
                if(isGodChoose()) {
                    var gotoxiuba = $("#goto-xiuba-href");
                    if (gotoxiuba&&gotoxiuba.length>0){
                        gotoxiuba.css("display","inline-block");
                    }
                }
            });
        </script>
    </div>

    <div class="reset_payPwd_div" align="center" style="margin: 0 20px">

        <div class="title_div" align="left"><p>试客多|<span>重置登录密码</span></p></div>
        <div class="title_div2" align="left"><div class="halfDiv"><img src="/saleterrace/images/fbrw/step1.png"><b>选择重置方式</b></div><div class="halfDiv" align="right"><span>您正在找回15355056891的登录密码</span></div></div>
        <div class="reset_payPwd_content_div" align="center">
            <div class="finding_ways">
                <div class="floatLeft" style="margin-left: 100px">请选择重置方式：<img src="/saleterrace/images/success_icon.png"></div>
                <div class="floatLeft">
                    <div class="check_surrounding" align="center">基于对您账户及操作环境的检测, 我们将提供以下方式供您选择</div>
                    <div class="forget_finding">
                        <div class="halfDiv" align="left"><span>我忘记登录密码了</span><br><span class="tip_label">忘记密码或是密码被锁定了</span></div>
                        <div class="halfDiv arrow_div" align="right"><b>›</b></div>
                    </div>
                    <div class="remember_finding">
                        <div class="halfDiv" align="left"><span>我记得原来的密码</span></div>
                        <div class="halfDiv" align="right"><b>›</b></div>
                    </div>
                </div>
            </div>
            <div class="set_payPwd hidden">
                <form id="passwordF">
                    <input type="hidden" id="role" value="1">
                    <div class="floatLeft newPwd_field" align="right">原始密码：</div>
                    <div class="floatLeft" style="position:relative;">
                        <input name="passwordCheck" id="passwordOld" type="password" class="oldPayPwd_text">
                        <span class="pwdm" onclick="showPwd(this)"></span>
                        <!-- <span class="tip_label">登录密码长度大于6</span> -->
                    </div>
                    <div class="floatLeft newPwd_field" align="right">新密码：</div>
                    <div class="floatLeft" style="position:relative;">
                        <input name="password" id="passwordNew" type="password" class="newPayPwd_text">
                        <span class="pwdm" onclick="showPwd(this)"></span>
                    </div>
                    <div class="floatLeft newPwd_field" align="right">重复密码：</div>
                    <div class="floatLeft" style="position:relative;">
                        <input id="passwordNew2" type="password" class="newPayPwd_text2">
                        <span class="pwdm" onclick="showPwd(this)"></span>
                    </div>
                    <div class="floatLeft newPwd_field">&nbsp;</div>
                    <div class="floatLeft">
                        <input id="passwordNewS" type="button" value="确 定" class="confirm_button">
                        <input id="passwordPrv" type="button" value="返 回" class="confirm_button" style="margin-left: 71px">
                    </div>
                </form>
            </div>
            <form id="passwordF2">
                <div class="safety_check hidden" align="left">
                    <div class="floatLeft"><img src="/saleterrace/images/mobile_icon.png"></div>
                    <div class="floatLeft" style="margin-top: 14px;">
                        通过手机&nbsp;&nbsp;15355056891<br>
                        <input name="phoneNoId" type="hidden" id="phoneNoId" value="15355056891"/>
                        图片验证码&nbsp;&nbsp;<input type="text" id="verifyCode" style="width: 115px;" name="verifyCode" class="code_text"/><img id="imgObj" alt="验证码" style="margin-left: 10px;" class="validate_code" src="/saleterrace/images/code1.jpg" onClick="changeImg()" /><br>
                        <input name="smsCode" id="checkW" type="text" style="width: 170px;" class="code_text"><input id="sendSmsId" type="button" value="获取短信验证码" class="getCode_button"><br>

                        <input type="hidden" name="checkW" id="checkW_id">
                        <input type="button" value="下一步" class="next_step_button">
                        <input type="button" value="上一步" class="prev_step_button"><br>
                        <a id="otherway" href="javascript:void(0);">选择其他找回方式>></a>
                    </div>
                </div>
                <div class="set_newPwd hidden">
                    <div class="floatLeft newPwd_field" align="right">新密码：</div>
                    <div class="floatLeft" style="position:relative;">
                        <input name=password id="password3" type="password" class="newPwd_text">
                        <span class="pwdm" onclick="showPwd(this)"></span>
                    </div>
                    <div class="floatLeft newPwd_field" align="right">重复密码：</div>
                    <div class="floatLeft" style="position:relative;">
                        <input id="password4" type="password" class="newPwd_text2">
                        <span class="pwdm" onclick="showPwd(this)"></span>
                    </div>
                    <div class="floatLeft newPwd_field">&nbsp;</div>
                    <div class="floatLeft">
                        <input id="passwordS2" type="button" value="确 定" class="confirm_button">
                        <input id="passwordPrv2" type="button" value="返 回" class="confirm_button" style="margin-left: 71px">
                    </div>
                </div>
            </form>
        </div>
        <!-- <div class="foot_div"></div> -->
    </div>
</div>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/footer.css"/>
<div class="foot_div">

    <div class="foot_div_div1">
        <a class="foot_div_div1_a1"></a>
    </div>
    <div style="text-align: center;">




    </div>

</div>
</body>
<script type="text/javascript">
    $(".finding_ways .remember_finding").click(function(){
        $(".set_payPwd").removeClass("hidden");
        $(".finding_ways").addClass("hidden");
        $(".title_div2 img").attr("src","/saleterrace/images/step2.png");
        $(".title_div2 b").text("设置新登录密码");
    });
    if(request("type")=="buyer_admin"){
        $(".finding_ways .remember_finding").click();
        $(".reset_payPwd_div .title_div2").hide();
    }
    $(function(){
        /*$(".finding_ways .remember_finding").click(function(){
            $(".set_payPwd").removeClass("hidden");
            $(".finding_ways").addClass("hidden");
            $(".title_div2 img").attr("src","/asserts/images/fbrw/step2.png");
            $(".title_div2 b").text("设置新登录密码");
        });*/
        $(".finding_ways .forget_finding").click(function(){
            $(".finding_ways").addClass("hidden");
            $(".safety_check").removeClass("hidden");

            $(".title_div2 img").attr("src","/saleterrace/images/step2.png");
            $(".title_div2 b").text("进行安全验证");
            $("#passwordF2").removeClass("hidden")
        });
        $("#otherway").click(function(){
            $(".finding_ways").removeClass("hidden");
            $(".safety_check").addClass("hidden");
            $(".title_div2 img").attr("src","/saleterrace/images/step1.png");
            $(".title_div2 b").text("选择重置方式");
        });
        $(".safety_check .next_step_button").click(function(){
            var code=$("#verifyCode").val();
            if(!code){
                alert("请填写图片验证码");
                return;
            }
            var phoneNo=parseInt($.trim($("#phoneNoId").val()));
            var phoneReg=/^1[0-9]{10}/;
            if(phoneNo==null||!phoneReg.test(phoneNo)){
                alert("请填写正确的手机号码");
                return;
            }
            var checkCode = $("#checkW").val();
            if(!checkCode||checkCode.length<6){
                alert("请输入短信验证码");
                return;
            }
            $.ajax({
                type: "POST",
                url: "/checkSms.htm",
                data: "phoneNo=" + phoneNo + "&smsCode=" + checkCode,
                success: function(msg){
                    if (msg.checkResult == "true") {
                        $("#checkW_id").val($("#checkW").val());
                        $(".set_newPwd").removeClass("hidden");
                        $(".safety_check").addClass("hidden");
                        $(".title_div2 img").attr("src","/saleterrace/images/step3.png");
                        $(".title_div2 b").text("设置新登录密码");
                    } else{
                        alert("短信验证码有误！");
                    }
                }
            });

        });
        $(".prev_step_button").click(function () {
            $(".finding_ways").removeClass("hidden");
            $("#passwordF2").addClass("hidden");
        });
        $("#passwordPrv2").click(function () {
            $(".set_newPwd").addClass("hidden");
            $(".safety_check").removeClass("hidden");
        })
        $("#passwordPrv").click(function () {
            $(".finding_ways").removeClass("hidden");
            $(".set_payPwd").addClass("hidden");
        });
    });
    var code ; //在全局 定义验证码
    function createCode(){
        code = new Array();
        var codeLength = 4;//验证码的长度
        var checkCode = document.getElementById("checkCode");
        checkCode.value = "";

        var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

        for(var i=0;i<codeLength;i++) {
            var charIndex = Math.floor(Math.random()*32);
            code +=selectChar[charIndex];
        }
        if(code.length != codeLength){
            createCode();
        }
        checkCode.value = code;
    }
    function changeImg() {
        var imgSrc = $("#imgObj");
        var src = imgSrc.attr("src");
        imgSrc.attr("src", chgUrl(src));
    }
    function chgUrl(url) {
        var timestamp = (new Date()).valueOf();
        // url = url.substring(0, 17);
        if ((url.indexOf("&") >= 0)) {
            url = url + "×tamp=" + timestamp;
        } else {
            url = url + "?timestamp=" + timestamp;
        }
        return url;
    }
</script>
</html>
