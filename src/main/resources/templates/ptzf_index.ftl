<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="shortcut icon" href="/saleterrace/images/favicon.ico" type="image/x-icon"/>
    <title>【试客多】-查看账单</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/saleterrace/js/verdor/datepicker/WdatePicker.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/page.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/common.js"></script>

</head>
<style>
    * {
        margin: 0px;
        padding: 0px;
    }

    input {
        font-family: 微软雅黑;
        font-size: 14px;
        outline: none;
    }

    div {
        font-family: 微软雅黑;
        font-size: 14px;
    }

    .zjjl_div, .picBox {
        position: relative;
        width: 998px;
        margin-bottom: 10px;
        /*border: 1px solid #ddd;*/
        background-color: #fff;
    }

    .picBox .picTitle {
        font-size: 18px;
        font-weight: normal;
        text-align: left;
        color: #1d1d26;
        background-color: #ededed;
        height: 50px;
        line-height: 50px;
        padding-left: 20px;
    }

    .picBox a {
        position: absolute;
        top: 83px;
        width: 90px;
        height: 96px;
    }

    .picBox a.a1 {
        left: 175px;
    }

    .picBox a.a2 {
        left: 368px;
    }

    .zjjl_title {
        background-color: #ededed;
        height: 40px;
        text-align: left;
        line-height: 40px;
        position: relative;
    }

    .zjjl_title p {
        font-size: 16px;
        color: #1d1d26;
        padding-left: 50px;
        background: url(/saleterrace/images/i36_lmsq.png) no-repeat 10px center;
        cursor: pointer;
    }

    .left_menu img {
        position: relative;
        top: 8px;
    }

    .seller-table {
        background-color: #ccc;
        margin: auto;
        width: 800px;
        position: relative;
    }

    .seller-table tr {
        height: 34px;
        line-height: 34px;
        text-align: left;
    }

    .seller-table tr td {
        padding: 0 10px;
    }

    .explain-link {
        display: inline-block;
        width: 15px;
        height: 15px;
        line-height: 15px;
        background-color: #52B7E5;
        border-radius: 50%;
        color: #fff;
        font-weight: bolder;
    }

    .tips {
        position: absolute;
        right: 40px;
        top: 20px;
        font-size: 12px;
        line-height: 20px;
        height: 20px;
        padding: 0 5px;
        border: 1px solid #ddd;
        background-color: #f8f8f8;
        display: none;
    }

    .zjjl_div .text img {
        display: block;
        margin: 20px auto;
    }

    .zjjl_div .text {
        margin-top: 10px;
    }

    .zjjl_div .text h2 {
        font-size: 16px;
        line-height: 40px;
        color: #333;
        height: 40px;
    }

    .zjjl_div .text ul {
        margin-bottom: 20px;
        padding-left: 27px;
    }

    .zjjl_div .text ul li {
        font-size: 14px;
        color: #777;
        line-height: 30px;
    }

    .zjjl_div .text ul li span {
        color: red;
        font-size: inherit;
    }

    .zjjl_div .text ul li a {
        color: #70cbf7;
        text-decoration: underline;
        font-size: inherit;
    }
    .cost-line{
        border-bottom: 2px solid #ddd;
        /*text-align: left;*/
        background-color: #fff;
        width: 800px;
        margin: auto auto 20px auto;
    }
    .cost-line>a{
        font-size: 14px;
        display: inline-block;
        height: 30px;
        line-height: 30px;
        padding: 2px 30px;
        cursor: pointer;
    }
    .cost-line>a.active{
        color: #fff;
        background-color: #5AC2E7;
    }
</style>

<body>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/top.css"/>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-first-event.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store+json2.min.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store.expire.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/top.js"></script>
<script type="text/javascript" src="/saleterrace/js/dist/viewer.js"></script>
<link rel="stylesheet" type="text/css" href="/saleterrace/js/dist/viewer.css" />

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
            background: url(/asserts/images/gou.png) no-repeat center;
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
            <img class="sTongZhi" src="" alt="" style="display: block; width: 100%; height: 51px;">
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
                    <a href="zjgl_index.ftl?tab=2" class="cl000 menu-select-a">充值</a>
                    <a href="zjgl_index.ftl?tab=3" class="cl000 menu-select-a">提现</a>
                    <a href="/saleterrace/jnbzj_index" target="_blank" class="menu-select-myCenter">缴纳保证金</a>

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
    <!--<div class="bg" style="display: none">-->
    <div class="bg">
        <img class="bg-img" src="/saleterrace/images/kfqq.png" alt="">
        <div class="right-menu-content">
            <a href="syhd_release_index.ftl">
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
    <img src="/asserts/images/kfqqsmall.png" alt="">
</a>

<input type="hidden" id="imageRootPath" value="http://image-1254237507.image.myqcloud.com">
<input type="hidden" id="cosAppId" value="1254237507">
<input type="hidden" id="cosBucketName" value="image">
<input type="hidden" id="cosDownRootPath" value="http://image-1254237507.cosgz.myqcloud.com">
<input type="hidden" id="currentDate" value="20181022">
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
        var html = '<div class="shade" style="position: absolute;top: 0; left: 0;width: 100%;background: #000;opacity: 0.5; "></div>' +
                '<div class="shade-box" style="position: absolute;  left: 50%; width: 400px; height: 300px; z-index: 300;background-color: #fff; border-radius: 10px; margin-left: -200px;" >' +
                '<a class="shade-close" style="font-size: 18px;float: right;margin: 6px 15px 0 0px;">X</a>' +
                '<p style="clear:both; font-size: 16px; font-weight: bold; text-align: center; margin-top: 99px;">' + msg + '</p>' +
                '<a href="/seller/orderVip.htm" target="_blank" style="background-color: #5AC2E7;padding: 9px 31px;float: left;margin-top: 48px;margin-left: 132px;color: #fff;border-radius: 5px;font-size: 16px;">去缴纳保证金</a>' +
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
        $(".shade-close").on("click", function () {
            $(".shade, .shade-box").remove();
        })
    }
</script>

<div id="Container" align="center">
    <div id="Header">
        <div class="headMenu" align="right">
            <link rel="stylesheet" type="text/css" href="/saleterrace/css/layout.css"/>
            <link rel="stylesheet" type="text/css" href="/saleterrace/css/header.css"/>
        </div>
    </div>
    <div class="Content-Space-h"></div>

    <div id="Content">
        <div id="Content-Left">

            <link rel="stylesheet" type="text/css" href="/saleterrace/css/navigator.css"/>

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
        <div id="Content-Space"></div>
        <div id="Content-Main">
            <!-- center begin -->
            <div class="cost-line">
                <a class="active">淘宝活动资费说明</a>
                <a >京东活动资费说明</a>
                <a >拼多多活动资费说明</a>
                <a >提现资费说明</a>
            </div>
            <div style="background-color: white">
                <span style="font-style:italic;font-size:  15px;line-height: 26px;text-decoration:underline;color: red;"> 此处的试客赏金全部用于激励试客生成优质的买家秀内容，试客赏金一部分在确认收货后给到试客，剩下部分作为试客保证金在试客注销账号满足一定条件并无违规行为时返还给试客，本站从中不获取任何盈利！
                    </span>
            </div>
            <div class="cost">
                <div class="taobao-cost-box hidden">
                    <div class="zjjl_div">
                        
                            
                        
                        <div class="text">
                            <table class="seller-table" border="0" cellpadding="10" cellspacing="1">
                                <tbody>
                                <tr>
                                    <td colspan="4" align="center" bgcolor="#f4f4f4"><strong>淘宝基础收费</strong>标准</td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center" bgcolor="#FFFFFF">活动条件</td>
                                    <td align="center" bgcolor="#FFFFFF" width="110">
                                        金币数
                                        <a href="javascript:;" class="explain-link" onmouseover="tipsIn(this)" onmouseout="tipsOut(this)">?</a>
                                        <span class="tips">1金币=1元人民币</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="left" bgcolor="#f4f4f4">技术服务费</td>
                                    <td width="78" align="center" bgcolor="#f4f4f4">3</td>
                                </tr>

                                <tr>
                                    <td rowspan="2" bgcolor="#FFFFFF" width="170">试客基础赏金</td>
                                    <td width="198" bgcolor="#FFFFFF" colspan="2">电脑端（淘宝搜索）</td>
                                    <td align="center" bgcolor="#FFFFFF">5</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF" colspan="2">无线端（手机搜索）</td>
                                    <td align="center" bgcolor="#FFFFFF">6</td>
                                </tr>

                                <tr>
                                    <td rowspan="2" bgcolor="#FFFFFF">活动宝贝金额</td>
                                    <td bgcolor="#FFFFFF" colspan="2">活动宝贝金额≤50元</td>
                                    <td align="center" bgcolor="#FFFFFF">0</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF" colspan="2">活动宝贝金额＞50元，每增加100元需要</td>
                                    <td align="center" bgcolor="#FFFFFF">+1</td>
                                </tr>

                                </tbody>
                            </table>
                            <br>
                            <table class="seller-table" border="0" cellpadding="10" cellspacing="1">
                                <tbody>
                                <tr>
                                    <td colspan="4" align="center" bgcolor="#f4f4f4"><strong>淘宝增值服务收费</strong>标准</td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center" bgcolor="#FFFFFF" style="padding-left: 100px">活动条件</td>
                                    <td align="center" bgcolor="#FFFFFF" width="110">
                                        金币数
                                        <a href="javascript:;" class="explain-link" onmouseover="tipsIn(this)"
                                           onmouseout="tipsOut(this)">?</a>
                                        <span class="tips">1金币=1元人民币</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="170px" rowspan="6" bgcolor="#f4f4f4">试客标签</td>
                                    <td colspan="2" bgcolor="#f4f4f4">地域限制</td>
                                    <td align="center" bgcolor="#f4f4f4">0.5</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">年龄限制</td>
                                    <td width="72" align="center" bgcolor="#f4f4f4">0.5</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">性别限制</td>
                                    <td align="center" bgcolor="#f4f4f4">0.5</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">类目限制</td>
                                    <td align="center" bgcolor="#f4f4f4">1</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">淘气值限制</td>
                                    <td align="center" bgcolor="#f4f4f4">1</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">花呗限制</td>
                                    <td align="center" bgcolor="#f4f4f4">2</td>
                                </tr>
                                <tr>
                                    <td width="170px" rowspan="4" bgcolor="#FFFFFF">预售活动加购物车时长<br />（先加购物车后下单）</td>
                                    <td colspan="2" bgcolor="#FFFFFF">1小时后/3小时后/6小时后/12小时后</td>
                                    <td width="72" align="center" bgcolor="#FFFFFF">0.6</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">1天后</td>
                                    <td align="center" bgcolor="#FFFFFF">1</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">2天后</td>
                                    <td align="center" bgcolor="#FFFFFF">2</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">3天后</td>
                                    <td align="center" bgcolor="#FFFFFF">3</td>
                                </tr>
                                <tr>
                                    <td width="170px" rowspan="5" bgcolor="#f4f4f4">旺旺号等级要求</td>
                                    <td colspan="2" bgcolor="#f4f4f4">2心起</td>
                                    <td width="72" align="center" bgcolor="#f4f4f4">0</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">4心起</td>
                                    <td align="center" bgcolor="#f4f4f4">0.6</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">5心起</td>
                                    <td align="center" bgcolor="#f4f4f4">1.4</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">1钻起</td>
                                    <td align="center" bgcolor="#f4f4f4">2</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">2钻起</td>
                                    <td align="center" bgcolor="#f4f4f4">3</td>
                                </tr>
                                <tr>
                                    <td rowspan="4" bgcolor="#FFFFFF">评价要求</td>
                                    <td colspan="2" bgcolor="#FFFFFF">5星好评</td>
                                    <td align="center" bgcolor="#FFFFFF">0</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">优质评价</td>
                                    <td align="center" bgcolor="#FFFFFF">1</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">图文好评</td>
                                    <td align="center" bgcolor="#FFFFFF">2</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">追加评论</td>
                                    <td align="center" bgcolor="#FFFFFF">2</td>
                                </tr>
                                <tr>
                                    <td rowspan="4" bgcolor="#f4f4f4">活动完成时间</td>
                                    <td colspan="2" bgcolor="#f4f4f4">1.5小时内</td>
                                    <td align="center" bgcolor="#f4f4f4">0</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">1小时内</td>
                                    <td align="center" bgcolor="#f4f4f4">0.4</td>
                                </tr>

                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">45分钟内</td>
                                    <td align="center" bgcolor="#f4f4f4">0.8</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">半小时内</td>
                                    <td align="center" bgcolor="#f4f4f4">1.2</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF">加赏赏金</td>
                                    <td colspan="2" bgcolor="#FFFFFF">0至5金币</td>
                                    <td align="center" bgcolor="#FFFFFF">自选</td>
                                </tr>
                                </tbody>
                            </table>
                            <br>
                        </div>
                    </div>
                    <div class="zjjl_div">
                        <div class="text">
                            <table class="seller-table" border="0" cellpadding="10" cellspacing="1">
                                <tbody>
                                <tr>
                                    <td colspan="3" align="center" bgcolor="#f4f4f4"><strong>基础收费</strong>标准</td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center" bgcolor="#FFFFFF">活动条件</td>
                                    <td colspan="-1" align="center" bgcolor="#FFFFFF" width="110"> 金币数
                                        <a href="javascript:;" class="explain-link" onmouseover="tipsIn(this)"
                                           onmouseout="tipsOut(this)">?</a>
                                        <span class="tips" style="display: none;">1金币=1元人民币</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2" bgcolor="#f4f4f4">主宝贝浏览、评价浏览</td>
                                    <td bgcolor="#f4f4f4">电脑端（淘宝搜索）</td>
                                    <td rowspan="2" bgcolor="#f4f4f4" align="center">0.4</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#f4f4f4">无线端（手机搜索）</td>
                                </tr>
                                <tr>
                                    <td rowspan="2" bgcolor="#FFFFFF">货比三家</td>
                                    <td bgcolor="#FFFFFF">电脑端（淘宝搜索）</td>
                                    <td rowspan="2" bgcolor="#FFFFFF" align="center">0.2</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF">无线端（手机搜索）</td>
                                </tr>
                                <tr>
                                    <td rowspan="2" bgcolor="#f4f4f4">宝贝收藏、店铺收藏、加入购物车</td>
                                    <td bgcolor="#f4f4f4">电脑端（淘宝搜索）</td>
                                    <td rowspan="2" bgcolor="#f4f4f4" align="center">1</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#f4f4f4">无线端（手机搜索）</td>
                                </tr>
                                </tbody>
                            </table>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="jd-cost-box hidden">
                    <div class="zjjl_div">
                        <div class="text">
                            <table class="seller-table" border="0" cellpadding="10" cellspacing="1">
                                <tbody>
                                <tr>
                                    <td colspan="4" align="center" bgcolor="#f4f4f4"><strong>京东基础收费</strong>标准</td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center" bgcolor="#FFFFFF">活动条件</td>
                                    <td align="center" bgcolor="#FFFFFF" width="110">
                                        金币数
                                        <a href="javascript:;" class="explain-link" onmouseover="tipsIn(this)"
                                           onmouseout="tipsOut(this)">?</a>
                                        <span class="tips">1金币=1元人民币</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="left" bgcolor="#f4f4f4">技术服务费</td>
                                    <td width="78" align="center" bgcolor="#f4f4f4">3</td>
                                </tr>

                                <tr>
                                    <td rowspan="2" bgcolor="#FFFFFF" width="170">试客基础赏金</td>
                                    <td width="198" bgcolor="#FFFFFF" colspan="2">电脑端（京东搜索）</td>
                                    <td align="center" bgcolor="#FFFFFF">5</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF" colspan="2">无线端（手机搜索）</td>
                                    <td align="center" bgcolor="#FFFFFF">6</td>
                                </tr>
                                <tr>
                                    <td rowspan="2" bgcolor="#FFFFFF">活动宝贝金额</td>
                                    <td bgcolor="#FFFFFF" colspan="2">活动宝贝金额≤50元</td>
                                    <td align="center" bgcolor="#FFFFFF">0</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF" colspan="2">活动宝贝金额＞50元，每增加100元需要</td>
                                    <td align="center" bgcolor="#FFFFFF">+1</td>
                                </tr>

                                </tbody>
                            </table>
                            <br>
                            <table class="seller-table" border="0" cellpadding="10" cellspacing="1">
                                <tbody>
                                <tr>
                                    <td colspan="4" align="center" bgcolor="#f4f4f4"><strong>京东增值服务收费</strong>标准</td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center" bgcolor="#FFFFFF" style="padding-left: 100px">活动条件</td>
                                    <td align="center" bgcolor="#FFFFFF" width="110">
                                        金币数
                                        <a href="javascript:;" class="explain-link" onmouseover="tipsIn(this)"
                                           onmouseout="tipsOut(this)">?</a>
                                        <span class="tips">1金币=1元人民币</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="170px" rowspan="5" bgcolor="#f4f4f4">试客标签</td>
                                    <td colspan="2" bgcolor="#f4f4f4">地域限制</td>
                                    <td align="center" bgcolor="#f4f4f4">0.5</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">年龄限制</td>
                                    <td width="72" align="center" bgcolor="#f4f4f4">0.5</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">性别限制</td>
                                    <td align="center" bgcolor="#f4f4f4">0.5</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">类目限制</td>
                                    <td align="center" bgcolor="#f4f4f4">1</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">白条限制</td>
                                    <td align="center" bgcolor="#f4f4f4">1</td>
                                </tr>
                                
                                <tr>
                                    <td width="170px" rowspan="4" bgcolor="#FFFFFF">京东账号等级要求</td>
                                    <td colspan="2" bgcolor="#FFFFFF">铜牌会员起</td>
                                    <td align="center" bgcolor="#FFFFFF">0</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">银牌会员起</td>
                                    <td align="center" bgcolor="#FFFFFF">1</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">金牌会员起</td>
                                    <td align="center" bgcolor="#FFFFFF">1.5</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">钻石会员起</td>
                                    <td align="center" bgcolor="#FFFFFF">2</td>
                                </tr>
                                <tr>
                                    <td rowspan="4" bgcolor="#f4f4f4">评价要求</td>
                                    <td colspan="2" bgcolor="#f4f4f4">5星好评</td>
                                    <td align="center" bgcolor="#f4f4f4">0</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">优质评价</td>
                                    <td align="center" bgcolor="#f4f4f4">1</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">图文好评</td>
                                    <td align="center" bgcolor="#f4f4f4">2</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">追加评论</td>
                                    <td align="center" bgcolor="#f4f4f4">2</td>
                                </tr>
                                <tr>
                                    <td rowspan="4" bgcolor="#FFFFFF">活动完成时间</td>
                                    <td colspan="2" bgcolor="#FFFFFF">1.5小时内</td>
                                    <td align="center" bgcolor="#FFFFFF">0</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">1小时内</td>
                                    <td align="center" bgcolor="#FFFFFF">0.4</td>
                                </tr>

                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">45分钟内</td>
                                    <td align="center" bgcolor="#FFFFFF">0.8</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">半小时内</td>
                                    <td align="center" bgcolor="#FFFFFF">1.2</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#f4f4f4">加赏赏金</td>
                                    <td colspan="2" bgcolor="#f4f4f4">0至5金币</td>
                                    <td align="center" bgcolor="#f4f4f4">自选</td>
                                </tr>
                                </tbody>
                            </table>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="pdd-cost-box hidden">
                    <div class="zjjl_div">
                        <div class="text">
                            <table class="seller-table" border="0" cellpadding="10" cellspacing="1">
                                <tbody>
                                <tr>
                                    <td colspan="4" align="center" bgcolor="#f4f4f4"><strong>拼多多基础收费</strong>标准</td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center" bgcolor="#FFFFFF">活动条件</td>
                                    <td align="center" bgcolor="#FFFFFF" width="110">
                                        金币数
                                        <a href="javascript:;" class="explain-link" onmouseover="tipsIn(this)"
                                           onmouseout="tipsOut(this)">?</a>
                                        <span class="tips">1金币=1元人民币</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="left" bgcolor="#f4f4f4">技术服务费</td>
                                    <td width="78" align="center" bgcolor="#f4f4f4">2</td>
                                </tr>
                                <tr>
                                    <td rowspan="1" bgcolor="#FFFFFF" width="170">试客基础赏金</td>
                                    <td bgcolor="#FFFFFF" colspan="2">无线端（手机搜索）</td>
                                    <td align="center" bgcolor="#FFFFFF">3</td>
                                </tr>
                                <tr>
                                    <td rowspan="2" bgcolor="#FFFFFF">活动宝贝金额</td>
                                    <td bgcolor="#FFFFFF" colspan="2">活动宝贝金额≤150元</td>
                                    <td align="center" bgcolor="#FFFFFF">0</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF" colspan="2">活动宝贝金额＞150元，每增加100元需要</td>
                                    <td align="center" bgcolor="#FFFFFF">+1</td>
                                </tr>
                                </tbody>
                            </table>
                            <br>
                            <table class="seller-table" border="0" cellpadding="10" cellspacing="1">
                                <tbody>
                                <tr>
                                    <td colspan="4" align="center" bgcolor="#f4f4f4"><strong>拼多多增值服务收费</strong>标准</td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center" bgcolor="#FFFFFF" style="padding-left: 100px">活动条件</td>
                                    <td align="center" bgcolor="#FFFFFF" width="110">
                                        金币数
                                        <a href="javascript:;" class="explain-link" onmouseover="tipsIn(this)"
                                           onmouseout="tipsOut(this)">?</a>
                                        <span class="tips">1金币=1元人民币</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="4" bgcolor="#f4f4f4">评价要求</td>
                                    <td colspan="2" bgcolor="#f4f4f4">5星好评</td>
                                    <td align="center" bgcolor="#f4f4f4">0</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">优质评价</td>
                                    <td align="center" bgcolor="#f4f4f4">0</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">图文好评</td>
                                    <td align="center" bgcolor="#f4f4f4">0.5</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#f4f4f4">追加评论</td>
                                    <td align="center" bgcolor="#f4f4f4">0.5</td>
                                </tr>
                                <tr>
                                    <td rowspan="4" bgcolor="#FFFFFF">活动完成时间</td>
                                    <td colspan="2" bgcolor="#FFFFFF">1.5小时内</td>
                                    <td align="center" bgcolor="#FFFFFF">0</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">1小时内</td>
                                    <td align="center" bgcolor="#FFFFFF">0.4</td>
                                </tr>

                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">45分钟内</td>
                                    <td align="center" bgcolor="#FFFFFF">0.8</td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFFFF">半小时内</td>
                                    <td align="center" bgcolor="#FFFFFF">1.2</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#f4f4f4">加赏赏金</td>
                                    <td colspan="2" bgcolor="#f4f4f4">0至5金币</td>
                                    <td align="center" bgcolor="#f4f4f4">自选</td>
                                </tr>
                                </tbody>
                            </table>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="enchashment-box hidden">
                    <div class="zjjl_div">
                        <div class="text">
                            <table class="seller-table" border="0" cellpadding="10" cellspacing="1">
                                <tbody>
                                <tr>
                                    <td colspan="3" align="center" bgcolor="#f4f4f4"><strong>提现收费</strong>标准</td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center" bgcolor="#FFFFFF">扣费项目</td>
                                    <td colspan="-1" align="center" bgcolor="#FFFFFF" width="110">手续费</td>
                                </tr>
                                <tr>
                                    <td width="170" align="left" bgcolor="#f4f4f4">货款提现</td>
                                    <td width="" align="left" bgcolor="#f4f4f4">1元起提</td>
                                    <td width="" colspan="-1" align="center" bgcolor="#f4f4f4">1‰</td>
                                </tr>
                                <tr>
                                    <td align="left" bgcolor="#FFFFFF">金币提现</td>
                                    <td align="left" bgcolor="#FFFFFF">不支持</td>
                                    <td colspan="-1" align="center" bgcolor="#FFFFFF">-</td>
                                </tr>
                                <tr>
                                    <td align="left" bgcolor="#f4f4f4">货款转金币</td>
                                    <td align="left" bgcolor="#f4f4f4">1：1</td>
                                    <td colspan="-1" align="center" bgcolor="#f4f4f4">0%</td>
                                </tr>
                                <tr>
                                    <td align="left" bgcolor="#FFFFFF">金币转货款</td>
                                    <td align="left" bgcolor="#FFFFFF">1：1</td>
                                    <td colspan="-1" align="center" bgcolor="#FFFFFF">0%</td>
                                </tr>
                                </tbody>
                            </table>
                            <br>
                        </div>
                    </div>
                </div>
            </div>

            <!-- center end -->
        </div>
    </div>
    <div class="Content-Space-h"></div>
    <div class="Clear"><!--如何你上面用到float,下面布局开始前最好清除一下。--></div>
    <div id="Footer">
        
<link rel="stylesheet" type="text/css"
      href="/saleterrace/css/footer.css"/>
<div class="foot_div">
    
    <div class="foot_div_div1">
        <a class="foot_div_div1_a1"></a>
    </div>
    <div style="text-align: center;">
        
            
        
        
    </div>
    
</div>
    </div>
</div>
</body>

<script>
    $('.zjjl_title').click(function () {
        var bgPic = $(this).find('p').css('background-image');
        if (bgPic.match('/saleterrace/images/i36_lmsq.png')) {
            $(this).find('p').css('background-image', 'url(/saleterrace/images/i36_lmzk.png)');
            $(this).siblings('.text').slideUp();
        } else {
            $(this).find('p').css('background-image', 'url(/saleterrace/images/i36_lmsq.png)');
            $(this).siblings('.text').slideDown();
        }
    });

    //选项卡
    $(".cost-line>a").on("click",function(){
        var index = $(this).index();
        $(this).addClass("active").siblings().removeClass("active");
        $(".cost > div:eq(" + index + ")").removeClass("hidden").siblings().addClass("hidden");
    });
    $(".cost-line>a:eq(0)").click();
    function init() {
        $("#Content").height($(".zjjl_div").height() + 40);
        headerStyle(1);
        navigatorStyle(7);

    }

</script>
</html>





