<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="shortcut icon" href="/saleterrace/images/favicon.ico" type="image/x-icon"/>
    <title>【试客多】-账户管理</title>

    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/saleterrace/js/verdor/datepicker/WdatePicker.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/common.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/page.js"></script>
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/zebra_dialog.css"/>
    <script type="text/javascript" src="/saleterrace/js/verdor/zebra_dialog/zebra_dialog.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/popdg.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/store.min.js"></script>
    <link href="/saleterrace/css/accountmanage.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/saleterrace/js/account/accountmanage.js"></script>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/selectize.default.css"/>
    <script type="text/javascript" src="/saleterrace/js/selectize.js"></script>

    <style>

        .selectize-dropdown{
         height: 200px;
        }

        .popWrapper {
            top: 0;
            left: 0;
            position: absolute;
            z-index: 89;
            width: 100%;
            height: 100%;
            display: none;
            overflow: hidden;
            margin: 0;
            padding: 0;
            color: #333;
            word-wrap: break-word;
        }

        .popWrapper span {
            font: 14px/22px Arial, "Hiragino Sans GB", "微软雅黑", "宋体";
        }

        .maskLayer {
            background-color: #666;
            filter: alpha(opacity=50);
            -moz-opacity: 0.5;
            opacity: 0.5;
            width: 100%;
            height: 100%;
            position: fixed;
            z-index: 90;
        }

        .modalWnd {
            width: 800px;
            left: 38%;
            top: 30%;
            position: fixed;
            z-index: 100;
            border: solid 1px #e3e3e4;
            background-color: #FFF;
            margin: -150px 0 0 -200px;
        }

        .wnd_Close_Icon {
            display: block;
            z-index: 90;
            position: absolute;
            background: url(/saleterrace/images/wndMessBg.png) no-repeat right top;
            width: 25px;
            height: 25px;
            right: 5px;
            top: 5px;
            cursor: pointer;
        }

        .modalWnd .topTile {
            font-size: 16px;
            margin-bottom: 10px;
            border-bottom: solid 1px #e3e3e4;
            background-color: #f8f8f8;
            line-height: 43px;
            padding-left: 20px;
            font-weight: normal;
        }

        .modalWndInner {
            padding: 20px;
        }

        .zf_czff {
            height: 409px;
        }

        .zf_czff > div {
            margin-bottom: 9px;
        }

        .zf_highlight_msg {
            color: red;
            font-size: 18px !important;
        }

        .zf_ddxq {
            position: relative;
            height: 129px;
            margin-top: -82px;
            margin-left: 20px;
        }

        .zf_ddxq > div {
            margin-bottom: 25px;
        }

        .zf_ddxq .Tips {
            position: absolute;
            right: 40px;
            top: 50px;
            font-size: 14px;
            line-height: 23px;
            color: #ff0066;
            width: 350px;
            height: 46px;
            padding: 15px 20px;
            background-color: #ffefd7;
            -webkit-border-radius: 20px;
            -moz-border-radius: 20px;
            border-radius: 20px;
        }

        .zf_end_span {
            width: 388px;
            color: white;
            background: #01b76d;
            height: 32px;
            display: block;
            text-align: center;
            margin-left: 174px;
            line-height: 33px !important;
            cursor: pointer;
        }
        .changeName{
            line-height: 24px;
            margin-top: 10px;
            margin-left: 10px;
            background-color: #59c2e6!important;
            border: 1px solid #ddd;
        }
    </style>
</head>

<script>
    if ('SELLER' == "BUYER") {
        var tab = request("tab");
        if (!tab) {
            window.location.href = "accountmanage.htm?tab=2";
        }
    }
</script>

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
        
            <a href="/saleterrace/yhzx_index">
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
                        <a href="/saleterrace/zjgl_index?tab=2" class="cl000 menu-select-a">提现</a>
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
    <img src="/saleterrace/images/kfqqsmall.png" alt="">
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
        var html = '<div class="shade" style="position: absolute;top: 0; left: 0;width: 100%;background: #000;opacity: 0.5; "></div>'+
                '<div class="shade-box" style="position: absolute;  left: 50%; width: 400px; height: 300px; z-index: 300;background-color: #fff; border-radius: 10px; margin-left: -200px;" >'+
                '<a class="shade-close" style="font-size: 18px;float: right;margin: 6px 15px 0 0px;">X</a>'+
                '<p style="clear:both; font-size: 16px; font-weight: bold; text-align: center; margin-top: 99px;">'+msg+'</p>'+
                '<a href="/saleterrace/jnbzj_index" target="_blank" style="background-color: #5AC2E7;padding: 9px 31px;float: left;margin-top: 48px;margin-left: 132px;color: #fff;border-radius: 5px;font-size: 16px;">去缴纳保证金</a>'+
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

<div id="Container" align="center">
    <div id="Header">
        <link rel="stylesheet" type="text/css" href="/saleterrace/css/layout.css"/>
        <link rel="stylesheet" type="text/css" href="/saleterrace/css/header.css"/>
    </div>
    <div class="Content-Space-h"></div>
    <div id="Content" align="left">
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
            <div class="Capitalrecord_transactionrecords">

                <div class="Capitalrecord_transactionrecords1 Capitalrecord_transactionrecords1_1">
                    <input type="hidden" id="role" value="SELLER">

                    <div class="Capitalrecord_transactionrecords1_top">
                        <img src="/saleterrace/images/top_left_img3_03.png" class="Capitalrecord_transactionrecords1_top_img1">
                        <img src="/saleterrace/images/top_right_img2_03.png" class="Capitalrecord_transactionrecords1_top_img2">
                        <img src="/saleterrace/images/top_xiaoguo_img_last1_03.png" class="Capitalrecord_transactionrecords1_top_img3">
                        <div class="Capitalrecord_transactionrecords1_top1">
                            <a class="Capitalrecord_transactionrecords1_top1_a1">资金管理</a>
                            <a class="Fund_management_topa1">用户名：15355056891</a>
                            <a class="Fund_management_topa2">可用货款：<span class="Fund_management_topa2_span1" style="color: red;font-weight: bolder;">156.50</span>元</a>
                            <a class="Fund_management_topa3">金币：<span class="Fund_management_topa2_span1" style="color: red;font-weight: bolder;">0.00</span>个</a>
                            <a class="coin_help" href="/seller/seller_explain.htm?open_type=coin">什么是货款?&nbsp;什么是金币？</a>
                            <!-- <a class="Fund_management_topa4">（当前为体验会员，还有免费发布活动<span class="Fund_management_topa2_span1">3</span>次，升级为正式会员可以发布更多活动！）</a> -->
                        </div>
                    </div>
                    <div class="Capitalrecord_transactionrecords1_mulv">
                        
                        <div class="Capitalrecord_transactionrecords1_mulv1">
                            <div class="Capitalrecord_transactionrecords1_middle1_top">
                                <img src="../static/images/zjjv_jyjv_03.png" class="Capitalrecord_transactionrecords1_middle1_top_img1 Fund_management_middle_topimg Fund_management_middle_topimg_1">
                                <!-- 开启和关闭会员充值 --> <div class="Capitalrecord_transactionrecords1_middle1_topleft Fund_management_middle_topleft2" style="background-color:#59c2e6" >
                                    <a style="color:#FFF">充值货款</a>
                                    </div>
                                 <div class="Capitalrecord_transactionrecords1_middle1_topleft2" style="background-color:white">
                                    <a style="color:black" href="/saleterrace/zjgl_index?tab=2">资产转换</a>
                                </div>
                                <div class="Capitalrecord_transactionrecords1_middle1_topleft2 Capitalrecord_transactionrecords1_middle1_topleft3">
                                    <a style="color:#000; background-color: #fff;" href="/saleterrace/zjgl_index?tab=3">提现</a>
                                    </div>
                                <div class="Capitalrecord_transactionrecords1_middle1_topleft2 Capitalrecord_transactionrecords1_middle1_topleft4" style="background-color:white">
                                    <a style="color:black" href="/saleterrace/zjgl_index?tab=4">账号管理</a>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="Fund_management_content">
                         <div class="Fund_management_content_czhy_yhkgl_2"style="display:none">
                            <div class="Bank_card_management_middle" style="height: 560px;">

                                <div class="Bank_card_management_middle1 Bank_card_management_middle1_two2">
                                    <div class="Bank_card_management_middle1_left">
                                        <div class="bankTitle">
                                            <h2>银行卡管理</h2>
                                            <p>每个用户只能绑定一张银行卡，如需换卡建议修改银行卡信息</p>
                                            <p style="font-size: 15px;color: #00000b">邮政储蓄银行提现有2-3天延迟&nbsp;&nbsp;&nbsp;&nbsp;请谨慎添加</p>
                                        </div>
                                        
                                        
                                            <div class="unBangdings"></div>
                                            <form id="bindCardForm" class="hidden">
                                                <div class="bankRow">
                                                    <a>开户人姓名：</a>
                                                    <input name="accountName" type="text" class="accountName" value="">
                                                </div>
                                                <div class="bankRow">
                                                    <a>选择银行：</a>
                                                    <div class="bankNameBox">
                                                        <input name="bankName" type="text" class="bankName"
                                                               readonly="readonly">
                                                        <span class="selectImg"></span>
                                                        <ul class="sources_ul hidden">
                                                            <li>招商银行</li>
                                                            <li>中国工商银行</li>
                                                            <li>中国农业银行</li>
                                                            <li>中国建设银行</li>
                                                            <li>中国银行</li>
                                                            <li>兴业银行</li>
                                                            <li>浦发银行</li>
                                                            <li>中信银行</li>
                                                            <li>广发银行</li>
                                                            <li>民生银行</li>
                                                            <li>光大银行</li>
                                                            <li>交通银行</li>
                                                            <li>中国邮政储蓄银行</li>
                                                            <li>北京银行</li>
                                                            <li>渤海银行</li>
                                                            <li>杭州银行</li>
                                                            <li>华夏银行</li>
                                                            <li>汇丰银行</li>
                                                            <li>恒生银行</li>
                                                            <li>花旗银行</li>
                                                            <li>江苏银行</li>
                                                            <li>浙商银行</li>
                                                            <li>渣打银行</li>
                                                            <li>平安银行</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="bankRow">
                                                    <a>银行卡号：</a>
                                                    <input type="text" name="bankNo" class="bankNo">
                                                </div>
                                                <div class="bankRow">
                                                    <a>开户支行：</a>
                                                    <input type="text" name="bankPart" class="bankPart">
                                                </div>
                                                <div class="bankRow">
                                                    <a>手机号：</a>
                                                    <input type="text" readonly="readonly" id="phoneNoId" name="phoneNo"
                                                           value="15355056891">
                                                </div>
                                                <div class="bankRow">
                                                    <a>图片验证码：</a>
                                                    <input type="text" id="verifyCode" name="verifyCode"
                                                           class="phoneNo">
                                                    <img id="imgObj" alt="验证码" style="margin: 13px auto auto 10px;"
                                                         class="validate_code"
                                                         src="/saleterrace/images/code1.jpg"
                                                         onClick="changeImg()"/>
                                                </div>
                                                <div class="bankRow">
                                                    <a>验证码：</a>
                                                    <input type="text" name="smsCode" class="smsCode phoneNo">
                                                    <input type="button" id="sendSmsId" value="获取验证码">
                                                </div>
                                                <div class="bankRow">
                                                    <input type="button" value="返回" id="Prev">
                                                    <input id="bindCardSubmit" type="button" value="确认绑定">
                                                    <span id="addCardErrorMsg" style="color:red"></span>
                                                </div>
                                            </form>
                                    </div>
                                </div>

                                <div class="Bank_card_management_middle1_right">

                                    <ul>
                                        <li class="Bank_card_management_middle1_right_li1"><a>温馨提示：</a></li>
                                        <li class="Bank_card_management_middle1_right_li5"><a>1、建议使用招商银行卡（可较快到账）</a>
                                        </li>
                                        <li class="Bank_card_management_middle1_right_li5"><a>2、找不到您要的银行？请联系客服 </a></li>
                                        <li class="Bank_card_management_middle1_right_li2"><a>3、如果您填写的开户行支行不正确，可能将无法<br>
                                            成功提现，由此产生的提现费用将不予返还</a></li>
                                        <li class="Bank_card_management_middle1_right_li3">
                                            <a>4、如果您不确定开户行支行名称，可打电话到所在<br>
                                                地银行的营业网点询问或上网查询</a></li>
                                        <li class="Bank_card_management_middle1_right_li4">
                                            <a>5、如果有接手的活动还没有全部完成，暂不能修改<br>
                                                退款账号，请先完成活动后再修改</a></li>
                                        <li class="Bank_card_management_middle1_right_li5"><a>6、不支持提现至信用卡账号</a></li>
                                    </ul>

                                </div>


                            </div>

                            <input type="hidden" id="bankCardId" value="">


                        </div>


                    </div>
                </div>
                <div class="Fund_management_content_czhy_tixian2" style="display:none">
                    <div class="Fund_management_content_czhy_middle1">

                        <div class="Fund_management_content_czhy_middle1_div">
                            <a class="Fund_management_content_czhy_middle1_diva1 Withdrawals_div_a1">提现</a>
                            <!--<a class="Fund_management_content_czhy_middle1_diva2 Withdrawals_div_a2">首次提现系统赠送金币<span class="Fund_management_topa2_span1">3</span>个，且会员经验值+<span class="Fund_management_topa2_span1">10</span></a>
                            -->
                            <span style="color: red;font-size: 16px;line-height: 50px;float: left;margin-left: 20px;">请使用一类卡，二类卡可能会出现限额不到账情况，有问题可联系银行咨询</span>
                            <a class="Fund_management_content_czhy_middle1_diva3" href="withdrawhistory.htm">查看提现记录></a>
                        </div>
                    </div>
                    <div class="Withdrawals_div_middle">
                        <div class="Withdrawals_div_middle1">
                            <div class="Withdrawals_div_middle1_But">
                                <a class="Withdrawals_div_middle1_Buta1">+</a>
                                <a href="zjgl_index.ftl?tab=4" class="Withdrawals_div_middle1_Buta2">绑定银行卡</a>
                            </div>
                            <!--<a class="Withdrawals_div_middle1_a1">您最多可绑定5个账号</a>
                            -->
                        </div>
                    </div>
                    <!--begin-->
                    <form autocomplete="false">
                        <div class="Withdrawals_div_content">
                            <div class="Withdrawals_div_content_top">
                                <a class="Withdrawals_div_content_top_a1"><span class="Fund_charge_coin_tips"
                                                                                style="line-height:25px;">提现:&nbsp;&nbsp;&nbsp;&nbsp;最低提现金额1元，手续费0.1%，每天仅限提现一次。<br/>当日00:00-18:00可提现，18:00之后处理。</span></a>
                            </div>
                            <div class="Withdrawals_div_content_last">
                                <div class="Withdrawals_div_content_last1">
                                    <div class="Withdrawals_div_content_last1_left">
                                        <img src="/saleterrace/images/content_img_left1_03.png">
                                    </div>
                                    <div class="Withdrawals_div_content_last1_right">
                                        <div class="Withdrawals_div_content_last1_right1">
                                            <a class="Withdrawals_div_content_last1_right1_a1">您目前可提现货款<span
                                                    class="CTRMiddle1Mcontent1_div2_last_li2_a2_span">156.50</span>元</a>
                                        </div>
                                        <div class="Withdrawals_div_content_last1_right2">
                                            <a class="Withdrawals_div_content_last1_right2_a1">请输入需提现金额：</a>
                                            <!-- fake fields are a workaround for chrome autofill getting the wrong fields -->
                                            <input style="display:none" type="text" name="moneyOutCPrventAutoFill"/>
                                            <input id="moneyOutC" onkeyup="onlyPriceNum2(this);" type="text" class="Withdrawals_div_content_last1_right2_Txt1" disableautocomplete autocomplete="false" name="moneyOutCPrventAutoFill">
                                            <span style="display: inline-block; margin-top: 8px;">&nbsp; 元</span>
                                        </div>
                                        <div class="Withdrawals_div_content_last1_right3">
                                            <a class="Withdrawals_div_content_last1_right3_a1">银行卡：</a>
                                        </div>
                                        <div class="Withdrawals_div_content_last1_right4">
                                            <a class="Withdrawals_div_content_last1_right4_a1">支付密码：</a>
                                            <div style="float:left;">
                                                <input id="moneyOutP" type="password"
                                                       class="Withdrawals_div_content_last1_right2_Txt1">
                                                <span class="pwdm" onclick="showPwd(this)"></span>
                                            </div>
                                            <div style="font-size: 12px;color: #999;line-height: 30px;margin-left: 200px;">
                                                    初始密码：888888。为了你的账户安全，请<a style="color: #00AEFF;" href="/saleterrace/yhzx_zfpwd" target="_blank">重置支付密码</a></div>
                                        </div>
                                        <div class="Withdrawals_div_content_last1_right5">
                                            <input  id="moneyOutB" type="button"
                                                   class="Withdrawals_div_content_last1_right5_But1"  value="申请提现">
                                            <!--<a class="Withdrawals_div_content_last1_right5_a1">本周还可提现2次</a>
                                            --></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end-->
                        
                </div>
                </form>
                <div class="Fund_management_content_czhy_yhkgl" style="display:none">
                    <!--begin-->
                    
                        <div class="Withdrawals_div_content">
                            <div class="Withdrawals_div_content_top">
                                <a class="Withdrawals_div_content_top_a1"><span
                                        class="Fund_charge_coin_tips">货款转金币</span></a>
                            </div>
                            <div class="Withdrawals_div_content_last">
                                <div class="Withdrawals_div_content_last1">
                                    <div class="Fund_management_content_czhy_middle2_div_left2 Fund_management_content_czhy_middle2_div_left2_3 ">
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3">当前可转金币货款156.50元：</a>
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3"
                                           style="clear:both;">请输入转金币金额：</a>

                                        <input id="moneyToCoinAccount" type="text"
                                               class="Fund_management_content_czhy_middle2_div_left2a1_Txt3"
                                               onkeyup="onlyPriceNum(this);"/>
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1_4"> 元=</a>
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1_5"><span
                                                id="moneyToCoinTurn"
                                                class="CTRMiddle1Mcontent1_div2_last_li2_a2_span">0</span>&nbsp;&nbsp;金币</a>
                                    </div>
                                    <div class="Fund_management_content_czhy_middle2_div_left4" style="clear:both;">
                                        <input id="moneyToCoinBtn" type="button"
                                               class="Fund_management_content_czhy_middle2_div_left4But Fund_management_content_czhy_middle2_div_left4But_3"
                                               value="立即转换">
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="Withdrawals_div_content">

                            <div class="Withdrawals_div_content_top">
                                <a class="Withdrawals_div_content_top_a1"><span
                                        class="Fund_charge_coin_tips">金币转货款</span></a>
                            </div>
                            <div class="Withdrawals_div_content_last">
                                <div class="Withdrawals_div_content_last1">
                                    <div class="Fund_management_content_czhy_middle2_div_left2 Fund_management_content_czhy_middle2_div_left2_3 ">
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3">当前可转货款金币0.00个：</a>
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3"
                                           style="clear:both;">请输入转货款个数：</a>
                                        <input id="coinToMoneyAccount" type="text"
                                               class="Fund_management_content_czhy_middle2_div_left2a1_Txt3"
                                               onkeyup="onlyPriceNum(this);"/>
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1_4"> 金币=</a>
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1_5"><span
                                                id="coinToMoneyTurn"
                                                class="CTRMiddle1Mcontent1_div2_last_li2_a2_span">0</span>&nbsp;&nbsp;元</a>
                                    </div>
                                    <div class="Fund_management_content_czhy_middle2_div_left4" style="clear:both;">
                                        <input id="coinToMoneyBtn" type="button"
                                               class="Fund_management_content_czhy_middle2_div_left4But Fund_management_content_czhy_middle2_div_left4But_3"
                                               value="立即转换">
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                </div>
                
                <input type="hidden" id="firstPubTaskDate" value="Wed May 23 17:29:50 CST 2018">
                <input type="hidden" id="nowDate" value="Mon Oct 22 14:47:11 CST 2018">
                <input type="hidden" id="vipLevel" value="0">
                <input type="hidden" id="changePay" value="false">
                <div class="Fund_management_content_czhy_tixian">
                    
                    <div class="pay-select">
                        <a class="unionpay" bind-box-class="unionpay-box">
                            <img alt="">
                            <span>充值转账</span>
                            <div style="color:red;font-size: 10px;margin-left: 33px;display: inline-block;">（7*24小时 自动到账，免手续费）</div>
                        </a>
                    </div>
                        <div class="payBox">
                            <div class="payBefore">
                            <h2 style="text-align: center;font-size: 23px;margin: 20px 0 40px 0;">
                                支付宝充值暂停，请使用其他充值方式
                            </h2>
                            <div style="margin: 20px 0px 20px 215px">
                                <span style="color: red;font-size: 22px;">注意：近期支付宝充值可能受限，请选择充值转账充值</span><br>
                            </div>
                            <ul>
                                <li style="font-size: 14px; line-height: 25px;margin: 10px 50px 10px 30px;">
                                    <p style="color: red; font-size: 14px; font-weight: bold;line-height: 30px;">为什么要暂停支付宝？</p>
                                    由于试客多的业务发展快速，我们使用的支付宝个人账户的资金量已经非常大。为了避免引起淘宝官方的注意，
                                    为了防范于未然，平台决定暂停通过支付宝进行充值。
                                </li>
                                <li style="font-size: 14px; line-height: 25px;margin: 10px 50px 10px 30px;">
                                    <p style="color: red; font-size: 14px; font-weight: bold;line-height: 30px;">支付宝暂停后，怎么充值？</p>
                                    1. <span style="color: #59c2e6;font-size: 14px;">工作日9-21点。</span>可以使用“充值转账”进行充值，该充值方式为人工对账，免手续费。
                                    <br>
                                    2. <span style="color: #59c2e6;font-size: 14px;">其他时间。</span>可以使用“通联支付”进行充值，该充值方式为自动对账，但要收取手续费。
                                </li>
                                <li style="font-size: 14px; line-height: 25px;margin: 10px 50px 10px 30px;">
                                    <p style="color: red; font-size: 14px; font-weight: bold;line-height: 30px;">我想继续使用支付宝怎么办？</p>
                                    1. <span style="color: #59c2e6;font-size: 14px;">仍想使用支付宝的朋友，。</span>
                                    可以在“充值转账”的充值方式中，使用支付宝"转到银行卡"的功能进行充值。
                                    即通过支付宝转账给我们指定的银行卡，而不是到原来的支付宝账户。
                                    <br>
                                    <img src="/saleterrace/images/recharge-remind.png" alt="">
                                    <br>
                                    谢谢大家对试客多的支持和信任！
                                </li>
                            </ul>
                        </div>
                        
                        

                        <div class="unionpay-box">
                            <div  >
                                <div class="Fund_management_content_czhy_middle1">
                                    <div class="Fund_management_content_czhy_middle1_div Fund_management_content_czhy_middle1_div2">
                                        <a class="leftext"><span class="iconTh"></span>7*24小时 自动到账</a>
                                        <a class="Fund_management_content_czhy_middle1_diva3" href="ckzd_index.ftl">查看充值记录></a>
                                    </div>
                                </div>

                                <div>
                                    <div class="Fund_management_content_czhy_middle1_div Fund_management_content_czhy_middle1_div2 tipinfo" style="height: 130px!important;">
                                        <span>银行卡注意事项：</span>
                                        <span>1，人工审核对账，免手续费</span>
                                        <span>2，建议使用手机银行APP转账，绝大多数手机银行APP都免手续费</span>
                                        <span>3，由于银行间转账存在一定的时差，建议您使用实时到账，联系客服确认到账</span>
                                        <span>4，当天充值金额请勿重复！否则只会到账一笔！</span>
                                    </div>
                                </div>
                                <div style="margin-left: 10px;">
                                    <h1 style="display: inline-block;text-align: left;font-size: 16px;color: blue;margin-top: 5px;line-height: 37px;background-color: antiquewhite;width: 400px;">第一步：转账到试客多官方账号：</h1>
                                    <span style="display: block;font-size: 16px;padding:15px;line-height: 24px;">
                                   <span style="color: red;font-size: 18px;margin-bottom: 15px;">到账时间：自动到账，7*24小时&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: blue;font-size: 18px;margin-bottom: 15px;">【建议每天9:30--18:00之间充值】</span></span><br><span style="margin-top: 15px;display: inline-block;font-size: 18px;"> 民生银行   <span style="color: red;font-size: 18px;">6226 2277 0838 9139</span>  （户名：郭天亮    开户行：民生银行杭州城东支行）</span>
                                               
                                               <br>
                                               <br>
                                        <span style="color: darkgreen;font-size: 30px;display: block;margin-top: 25px;">（禁止支付宝转账）</span>
                                        <br>
                                </span>
                                    <h1 style=" display: inline-block;text-align: left;font-size: 16px;color: blue;margin-top: 5px;line-height: 37px;background-color: antiquewhite;width: 450px;">第二步：每次打完钱都必需提交如下信息，否则<span style="color: red;font-size: 18px;">无法到账</span></h1>
                                    </span>
                                </div>
                                    
                                <div class="Withdrawals_div_content_last1" style="height: 400px;">
                                    <div class="Fund_management_content_czhy_middle2_div_left2 Fund_management_content_czhy_middle2_div_left2_3 ">
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3"
                                           style="clear:both;">转账金额：</a>
                                        <input type="text" id="moneyUnionPayAccount" class="Fund_management_content_czhy_middle2_div_left2a1_Txt3" onkeyup="onlyPriceNum(this);" pay-type="unionpay"/>
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1_5"> 元</a><span style="color: red;font-size: 18px;" class="Fund_management_content_czhy_middle2_div_left2a1_5">当天充值金额请勿重复！</span>

                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3"  style="clear:both;">支付渠道：</a>
                                        <span class="Fund_management_content_czhy_middle2_div_left2a1_5"><input type="radio" name="unionPayType" value="1" onclick="payMethod()">PC版网上银行</span>
                                        <span class="Fund_management_content_czhy_middle2_div_left2a1_5"><input type="radio" name="unionPayType" value="2" onclick="payMethod()">手机银行APP</span>
                                        


                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3" id="cNameOraName" style="clear:both">转出银行卡持卡人姓名：</a>
                                        <input type="text" id="UnionPayUserName" class="Fund_management_content_czhy_middle2_div_left2a1_Txt3" style="width: 300px;" />

                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3" id="BankName" style="clear:both;">转出银行名称：</a>
                                        <input type="text" id="UnionPayBankName" style="width: 300px;" placeholder="请选择或者输入您转账的银行名称..." class="Fund_management_content_czhy_middle2_div_left2a1_Txt3" value="招商银行,中国工商银行,中国农业银行,中国建设银行,中国银行,兴业银行,浦发银行,中信银行,广发银行,民生银行,光大银行,交通银行,中国邮政储蓄银行,北京银行,渤海银行,杭州银行,华夏银行,汇丰银行,恒生银行,花旗银行,江苏银行,浙商银行,渣打银行,平安银行,安徽农村信用社,鞍山市商业银行,包商银行,北京农村商业银行,北京顺义银座村镇银行,沧州银行,常熟农村商业银行,成都农商银行,成都银行,承德银行,大连银行,德阳银行,德州银行,东莞农村商业银行,东莞银行,东亚银行,东营莱商村镇银行,东营市商业银行,鄂尔多斯银行,福建海峡银行,福建农村信用社,阜新银行,富邦华一银行,富滇银行,赣州银行,广东华兴银行,广东南粤银行,广东省农村信用社联合社,广西北部湾银行,广西农村信用社,广州农村商业银行,广州银行,贵阳银行,贵州省农村信用社联合社,桂林银行,哈尔滨银行,海口联合农村商业银行,海南农村信用社,邯郸市商业银行,韩国企业银行,韩亚银行,汉口银行,河北银行,恒丰银行,衡水银行,葫芦岛银行,湖北农村信用社,湖北省农村信用社联合社,湖北银行,湖州银行,华融湘江银行,黄河农村商业银行,徽商银行,吉林农村信用社,吉林银行,济宁银行,江苏江阴农村商业银行,江苏农村信用社,江苏长江银行,江西赣州银座村镇银行,江西省农村信用社联合社,焦作市商业银行,金华银行,锦州银行,晋城市商业银行,晋商银行,晋中银行,九江银行,昆仑银行,昆山农村商业银行,莱商银行,兰州银行,廊坊银行,临商银行,柳州银行,龙江银行,洛阳银行,漯河市商业银行,绵阳市商业银行,南昌银行,南充市商业银行,南京银行,内蒙古银行,宁波通商银行,宁波银行,宁夏银行,攀枝花市商业银行,平顶山银行,齐鲁银行,齐商银行,青岛银行,青海银行,曲靖市商业银行,泉州银行,日照银行,厦门国际银行,厦门银行,山东农村信用社,陕西省农村信用社联合社,上海农村商业银行,上海浦东发展银行,上海银行,上饶银行,绍兴银行,深圳福田银座村镇银行,深圳农商行,深圳前海微众银行,顺德农村商业银行,四川农村信用社,苏州银行,台州银行,太仓农村商业银行,泰安市商业银行,天津农商银行,天津银行,威海市商业银行,潍坊银行,温州银行,乌海银行,乌鲁木齐市商业银行,无锡农村商业银行,吴江农村商业银行,武汉农村商业银行,西安银行,新韩银行,邢台银行,烟台银行,鄞州银行,营口银行,友利银行,玉溪市商业银行,云南农村信用社,枣庄银行,张家港农村商业银行,张家口市商业银行,长安银行,长沙银行,浙江稠州商业银行,浙江景宁银座村镇银行,浙江民泰商业银行,浙江农村信用社,浙江三门银座村镇银行,浙江泰隆商业银行,郑州银行,中原银行,重庆农村商业银行,重庆黔江银座村镇银行,重庆银行,重庆渝北银座村镇银行,珠海华润银行,自贡市商业银行"/>

                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3" id="BankName" style="clear:both;">转入银行名称：</a>
                                        <input type="text" id="UnionIncomeBankName" style="width: 300px;" placeholder="请选择您转入的银行名称..." class="Fund_management_content_czhy_middle2_div_left2a1_Txt3" value="平安银行,民生银行,浙商银行"/>
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3" style="clear:both; margin-top: 50px;color: red;font-size: 19px;font-weight: bold;">当天充值金额请勿重复，每次充不同金额到银行（如充值5001元,5002元等做区分），转账金额不要重复！</a>
                                        <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_3" style="clear:both; color: red;font-size: 19px;font-weight: bold;">（目前平台已实现自动到账，确保功能稳定，请勿提交重复金额订单，谢谢支持）</a>
                                        <input id="moneyUnionPayBtn" type="button" style="clear:both;margin-top: 30px;" class="Fund_management_content_czhy_middle2_div_left4But Fund_management_content_czhy_middle2_div_left4But_3 "  value="确认提交"/>
                                        
                                        <input id="moneyChangeType" value="YU_E_CHONG_ZHI" type="hidden"/>
                                    </div>
                                </div>
                            </div>
                            <div  class="hidden"  style="text-align: center; padding-bottom: 50px;">
                                <div class="warn-icon-box">
                                    <p class="warn-icon-line"></p>
                                    <p class="warn-icon-circle"></p>
                                </div>
                                <p style="font-size: 14px;margin-bottom: 30px;line-height: 25px;">
                                    充值转账仅在上班时间开放！
                                    <br>
                                    当前非上班时间，客服人员已下班，无法进行人工对账，请使用通联支付。
                                </p>
                                <a class="slt-tlpay" style="border-radius:5px;cursor:pointer; color: #fff; background-color: #59C2E6;margin-top: 36px;padding: 5px 20px;" >使用通联支付进行充值</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            
            <div class="Fund_management_content_czhy" style="display:none">
                <!-- 开启和关闭会员充值 -->

                <div class="Fund_management_content_czhy_middle1">

                    <div class="Fund_management_content_czhy_middle1_div Fund_management_content_czhy_middle1_div2">
                        <a class="Fund_management_content_czhy_middle1_diva1">开通/续费会员</a>
                        <!--<a class="Fund_management_content_czhy_middle1_diva2  Fund_management_content_czhy_middle1_diva1_2">每增加一个月会员，赠送金币<span class="Fund_management_topa2_span1">5</span>个，且会员经验值+<span class="Fund_management_topa2_span1">20</span></a>
                        -->
                        <a class="Fund_management_content_czhy_middle1_diva3" href="ckzd_index.ftl">查看充值记录></a>
                    </div>
                </div>
                <div class="Fund_management_content_czhy_middle2">
                    <div class="Fund_management_content_czhy_middle2_div">
                        <div class="Fund_management_content_czhy_middle2_div_left">
                            <div class="Fund_management_content_czhy_middle2_div_left2 Fund_management_content_czhy_middle2_div_left2_2">
                                <a class="Fund_management_content_czhy_middle2_div_left2a1 Fund_management_content_czhy_middle2_div_left2a1_2">会员价格：</a>
                                <a class="Fund_management_content_czhy_middle2_div_left2a2 Fund_management_content_czhy_middle2_div_left2a2_2"><span
                                        class="Fund_management_topa2_span1 Fund_management_topa2_span1_jiage2"></span>元</a>
                                <input id="month" value="1" type="hidden"/>
                            </div>
                            <div class="Fund_management_content_czhy_middle2_div_left3">
                                <a class="Fund_management_content_czhy_middle2_div_left3a1">会员周期：</a>
                                <a class="Fund_management_content_czhy_middle2_div_left3a2"><span class="Fund_management_topa2_span1">1</span>个月</a>
                                <a class="Fund_management_content_czhy_middle2_div_left3a3"><span class="Fund_management_topa2_span1">3</span>个月</a>
                                <a class="Fund_management_content_czhy_middle2_div_left3a4"><span class="Fund_management_topa2_span1">6</span>个月</a>
                                <a class="Fund_management_content_czhy_middle2_div_left3a5"><span class="Fund_management_topa2_span1">1</span>年</a>
                            </div>
                            <div class="Fund_management_content_czhy_middle2_div_left4">
                                <input id="mumberBtn" type="button" class="Fund_management_content_czhy_middle2_div_left4But" value="立即订购">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- center end -->
</div>

<div class="shade"></div>
    <div align="left" class="popWrapper orderAppeal" id="orderAppeal">
        <div class="maskLayer"></div>
        <div class="modalWnd">
            <a href="javascript:void(0);" class="wnd_Close_Icon" id="modifyclose" title="关闭窗口"></a>
            <h3 class="topTile">充值页面</h3>
            <div class="modalWndInner">
                <div style="float: left;margin-right: 70px;">
                    <div style="margin-left: 22px;font-size: 18px;color: #01b76d;">
                        第一步：支付宝扫描二维码转账
                    </div>
                    <img id="aliPayImgUrl" style="max-width: 250px;" src="/saleterrace/images/alipay.jpg">
                </div>
                <div class="zf_czff">
                    <div style="font-size: 18px;color: #01b76d;">
                        第二步：输入转账金额，添加备注，确认转账
                    </div>
                    <div style="background-image: url('../static/images/czsm02.png');background-repeat: no-repeat;display: inline-block;width: 298px;height: 353px;margin-top: 20px;margin-left: 60px;">
                        <div style="margin-left: 29px;margin-top: 186px;font-size: 24px;" class="moneyNeedPay">1</div>
                        <div style="margin-left: 31px;margin-top: 19px;font-size: 16px;">
                            <span style="border: 1px solid red;padding: 5px 5px 5px 5px;" class="zf_mark">1033</span>
                        </div>
                        <img id="bt_img" style="max-width: 250px;margin-left: 90px;margin-top: -23px;" src="/saleterrace/images/bitian.png">
                    </div>
                </div>
                <div class="zf_ddxq">
                    <div>支付项目：<span class="zf_highlight_msg zf_item">金币充值</span></div>
                    <div>转账金额：<span class="zf_highlight_msg moneyNeedPay">1</span><span class="zf_highlight_msg">元</span>
                    </div>
                    <div><span style="margin-left: 0px;"></span>添加备注：<span class="zf_highlight_msg zf_mark">1033</span>
                    </div>
                    <p class="Tips">温馨提示：若扫描二维码无法备注的用户，请直接输入账号转账，支付宝账号为：<span>13185037106</span></p>
                </div>
                <div style=" margin-top: 50px;">
                    <span class="zf_end_span" onclick="confirmPay();">我已转账</span>
                </div>
            </div>
        </div>
    </div>


<div class="Content-Space-h"></div>
<div class="Clear"><!--如何你上面用到float,下面布局开始前最好清除一下。--></div>
<div id="Footer" style="">
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/footer.css"/>
<div class="foot_div">
    
    <div class="foot_div_div1">
        <a class="foot_div_div1_a1"></a>
    </div>
    <div style="text-align: center;">

    </div>
</div>
</div>
<script>
    //充值提现数字限制
    function onlyPriceNum(obj) {
        if (obj.value.length == 1) {
            obj.value = obj.value.replace(/[^0-9*]/g, '')
        } else {
            obj.value = obj.value.replace(/[^\d+(\.\d{0,2})?$]/g, '')

        }
    }

    //提现金额限制
    function onlyPriceNum2(obj) {
        if(obj.value > 50000){
            alert('单笔提现不能超过5万');
            $("#moneyOutC").val(50000);
            return;
        }
        if (obj.value.length == 1) {
            obj.value = obj.value.replace(/[^0-9*]/g, '')
        } else {
            obj.value = obj.value.replace(/[^\d+(\.\d{0,2})?$]/g, '')

        }
    }
    function confirmPay() {
        $('#orderAppeal').hide();
        var html = "<span id='lefttimetip' style='font-size: 24px;color: red;margin-left: 120px;'>60</span><br><span style='font-size: 16px;margin-left: 20px;'>充值需要1分钟到账，请耐心等待。</span>";
        var dg = showAutoCloseMsg(html);
        var lefttime = 60;
        var updateLeftTimeTip = function () {
            $("#lefttimetip").html(--lefttime);
            if (lefttime > 0) {
                setTimeout(updateLeftTimeTip, 1000);
            } else {
                dg.close();
                window.location.reload();
            }
        };
        setTimeout(updateLeftTimeTip, 1000);
    }

    function fadeBitianImage() {
        var show = true;
        var fadeImage = function () {
            if (show) {
                $("#bt_img").fadeOut(200);
                show = false;
            } else {
                $("#bt_img").fadeIn(200);
                show = true;
            }
            setTimeout(fadeImage, 300);
        };
        setTimeout(fadeImage, 300);
    }
    $(function () {
        var bankNo = "";
        var str = '';
        for (var i = 0; i < 5; i++) {
            var n = bankNo.substring(4 * i, 4 * i + 4);
            if (i < 4) {
                str = str + n + '-';
            } else {
                str = str + n;
            }
        }
        $('.Bangdings').find('p').text(str);
        //修改银行卡信息
        $("#changeBank").click(function () {
            $('#bindCardFormUp').removeClass('hidden');
            $('.Bangdings').addClass('hidden');
        })
        $('#PrevUp').click(function () {
            $('#bindCardFormUp').addClass('hidden');
            $('.Bangdings').removeClass('hidden');
        })
        $('.unBangdings').click(function () {
            $('#bindCardForm').removeClass('hidden');
            $(this).addClass('hidden');
        });
        $('#Prev').click(function () {
            $('#bindCardForm').addClass('hidden');
            $('.unBangdings').removeClass('hidden');
        })
        $('.maskLayer').click(function () {
            $(this).parents('.popWrapper').hide();
            $("#name").html("")
            $("#name_app").html("")
            $("#moneyNeedPay").html("")
            $("#item").html("")
            return false;
        });
        $('.wnd_Close_Icon').click(function () {
            $(this).parents('.popWrapper').hide();
            $("#name").html("")
            $("#name_app").html("")
            $("#moneyNeedPay").html("")
            $("#item").html("")
        });


        $("#moneyBtn").click(function () {
            var money = parseFloat($.trim($("#moneyAccount").val()));
            if (isNaN(money)) {
                alert("请正确输入");
                return
            }
            if (money < 1) {
                alert("充值1元起");
                return;
            }

            var actStr = $("#moneyChangeType").val();
            tonglianPayTip();
            window.open("/account/gotoAllinpay?act="+actStr+"&count="+money);
        });


        $("#moneyToCoinBtn").click(function () {
            var money = parseFloat($.trim($("#moneyToCoinAccount").val()))
            if (isNaN(money)) {
                alert("请正确输入")
                return
            }
            if (money <= 0) {
                alert("请正确输入")
                return
            }
            $.ajax({
                url: "moneytocoin.htm",
                data: {count: money},
                dataType: "json",
                success: function (data) {
                    if (data) {
                        alert('货款转金币成功');
                        location.reload();
                    } else {
                        alert('货款转金币失败')
                    }

                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("出错了")
                }
            })

        })

        $("#coinToMoneyBtn").click(function () {
            var coin = parseFloat($.trim($("#coinToMoneyAccount").val()))
            if (isNaN(coin)) {
                alert("请正确输入")
                return
            }
            if (coin <= 0) {
                alert("请正确输入")
                return
            }
            $.ajax({
                url: "coin_to_money.htm",
                data: {count: coin},
                dataType: "json",
                success: function (data) {
                    if (data) {
                        alert('金币转货款成功');
                        location.reload();
                    } else {
                        alert('金币转货款失败')
                    }

                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("出错了")
                }
            })

        });

        var taskMoneyAndCoinLack = 0.0;
        if(taskMoneyAndCoinLack>0){
            $(".taskNeedFee").text(taskMoneyAndCoinLack);
            $(".taskFeeTip").show();
            $("#weChartPaySum,#moneyAccount").val(taskMoneyAndCoinLack).change();
        }

    })

</script>
<script>


    $(function () {
        $("#Content").height($(".Capitalrecord_transactionrecords").height() + 10);

        $(".Fund_management_content_tanchu").click(function (e) {

            $(".Fund_management_content_czhy_middle2_div_right").show();
            $(".Fund_management_content_tanchu").hide();

        })

        $(".Fund_management_content_czhy_middle2_div_rightleft").click(function (e) {

            $(".Fund_management_content_czhy_middle2_div_right").hide();
            $(".Fund_management_content_tanchu").show();

        })

        $(".Fund_management_content_czhy_middle2_div_left1a3").click(function (e) {

            $(".Fund_management_content_czhy_middle2_div_left1a3").css("background-image", "url(/saleterrace/images/zjgl_czhy_img3_03.png)");
            $(".Fund_management_content_czhy_middle2_div_left1a3").css("color", "#394754");
            $(".Fund_management_content_czhy_middle2_div_left1a4").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left1a4").css("color", "#7c8ea2");
            $(".Fund_management_content_czhy_middle2_div_left1a2").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left1a2").css("color", "#7c8ea2");

        })

        $(".Fund_management_content_czhy_middle2_div_left1a4").click(function (e) {

            $(".Fund_management_content_czhy_middle2_div_left1a3").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left1a3").css("color", "#7c8ea2");
            $(".Fund_management_content_czhy_middle2_div_left1a4").css("background-image", "url(/saleterrace/images/zjgl_czhy_img3_03.png)");
            $(".Fund_management_content_czhy_middle2_div_left1a4").css("color", "#394754");
            $(".Fund_management_content_czhy_middle2_div_left1a2").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left1a2").css("color", "#7c8ea2");

        })
        $(".Fund_management_content_czhy_middle2_div_left1a2").click(function (e) {

            $(".Fund_management_content_czhy_middle2_div_left1a3").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left1a3").css("color", "#7c8ea2");
            $(".Fund_management_content_czhy_middle2_div_left1a4").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left1a4").css("color", "#7c8ea2");
            $(".Fund_management_content_czhy_middle2_div_left1a2").css("background-image", "url(/saleterrace/images/zjgl_czhy_img3_03.png)");
            $(".Fund_management_content_czhy_middle2_div_left1a2").css("color", "#394754");

        })


    });

    $(function () {

        $(".Fund_management_middle_topleft1").click(function (e) {

            $(".Fund_management_middle_topleft1").css("background-color", "#59c2e6");
            $(".Fund_management_middle_topleft1 a").css("color", "white");
            $(".Fund_management_middle_topleft2").css("background-color", "white");
            $(".Fund_management_middle_topleft2 a").css("color", "#1d1d26");
            $(".Capitalrecord_transactionrecords1_middle1_topleft2").css("background-color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft2 a").css("color", "#1d1d26");
            $(".Capitalrecord_transactionrecords1_middle1_topleft4").css("background-color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft4 a").css("color", "#1d1d26");
            $(".Fund_management_content_czhy").show();
            $(".Fund_management_content_czhy_tixian").hide();
            $(".Fund_management_content_czhy_yhkgl").hide();
            $(".Capitalrecord_transactionrecords1_1").css("height", "780px");
            $(".Fund_management_content_czhy_tixian2").hide();
            $(".Fund_management_content_czhy_yhkgl_2").hide();


        })

        $(".Fund_management_middle_topleft2").click(function (e) {

            $(".Fund_management_middle_topleft1").css("background-color", "white");
            $(".Fund_management_middle_topleft1 a").css("color", "#1d1d26");
            $(".Fund_management_middle_topleft2").css("background-color", "#59c2e6");
            $(".Fund_management_middle_topleft2 a").css("color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft2").css("background-color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft2 a").css("color", "#1d1d26");
            $(".Capitalrecord_transactionrecords1_middle1_topleft4").css("background-color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft4 a").css("color", "#1d1d26");
            $(".Fund_management_content_czhy_tixian").show();
            $(".Fund_management_content_czhy_yhkgl").hide();
            $(".Fund_management_content_czhy").hide();
            $(".Capitalrecord_transactionrecords1_1").css("height", "780px");
            $(".Fund_management_content_czhy_tixian2").hide();
            $(".Fund_management_content_czhy_yhkgl_2").hide();

        })
        $(".Capitalrecord_transactionrecords1_middle1_topleft2").click(function (e) {
            $(".Fund_management_middle_topleft1").css("background-color", "white");
            $(".Fund_management_middle_topleft1 a").css("color", "#1d1d26");
            $(".Fund_management_middle_topleft2").css("background-color", "white");
            $(".Fund_management_middle_topleft2 a").css("color", "#1d1d26");
            $(".Capitalrecord_transactionrecords1_middle1_topleft2").css("background-color", "#59c2e6");
            $(".Capitalrecord_transactionrecords1_middle1_topleft2 a").css("color", "white");
            $(".Fund_management_content_czhy_yhkgl").show();
            $(".Fund_management_content_czhy_tixian").hide();
            $(".Fund_management_content_czhy").hide();
            $(".Capitalrecord_transactionrecords1_1").css("height", "780px");
            $(".Capitalrecord_transactionrecords1_middle1_topleft3").css("background-color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft3 a").css("color", "#1d1d26");
            $(".Capitalrecord_transactionrecords1_middle1_topleft4").css("background-color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft4 a").css("color", "#1d1d26");
            $(".Fund_management_content_czhy_tixian2").hide();
            $(".Fund_management_content_czhy_yhkgl_2").hide();


        })

        $(".Fund_management_content_czhy_middle2_div_left3a3").click(function (e) {

            $(".Fund_management_content_czhy_middle2_div_left3a3").css("background-image", "url(/saleterrace/images/zjgl_czhy_img3_03.png)");
            $(".Fund_management_content_czhy_middle2_div_left3a3").css("color", "#58626e");
            $(".Fund_management_content_czhy_middle2_div_left3a2").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a2").css("color", "#7b8da3");
            $(".Fund_management_content_czhy_middle2_div_left3a4").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a4").css("color", "#7b8da3");
            $(".Fund_management_content_czhy_middle2_div_left3a5").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a5").css("color", "#7b8da3");
            $(".Fund_management_topa2_span1_jiage2").text("");
            $("#month").val(3);
        })

        $(".Fund_management_content_czhy_middle2_div_left3a2").click(function (e) {

            $(".Fund_management_content_czhy_middle2_div_left3a3").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a3").css("color", "#7b8da3");
            $(".Fund_management_content_czhy_middle2_div_left3a2").css("background-image", "url(/saleterrace/images/zjgl_czhy_img3_03.png)");
            $(".Fund_management_content_czhy_middle2_div_left3a2").css("color", "#58626e");
            $(".Fund_management_content_czhy_middle2_div_left3a4").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a4").css("color", "#7b8da3");
            $(".Fund_management_content_czhy_middle2_div_left3a5").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a5").css("color", "#7b8da3");
            $(".Fund_management_topa2_span1_jiage2").text("");
            $("#month").val(1);
        })
        $(".Fund_management_content_czhy_middle2_div_left3a4").click(function (e) {

            $(".Fund_management_content_czhy_middle2_div_left3a3").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a3").css("color", "#7b8da3");
            $(".Fund_management_content_czhy_middle2_div_left3a2").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a2").css("color", "#7b8da3");
            $(".Fund_management_content_czhy_middle2_div_left3a4").css("background-image", "url(/saleterrace/images/zjgl_czhy_img3_03.png)");
            $(".Fund_management_content_czhy_middle2_div_left3a4").css("color", "#58626e");
            $(".Fund_management_content_czhy_middle2_div_left3a5").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a5").css("color", "#7b8da3");
            $(".Fund_management_topa2_span1_jiage2").text("");
            $("#month").val(6);
        })

        $(".Fund_management_content_czhy_middle2_div_left3a5").click(function (e) {

            $(".Fund_management_content_czhy_middle2_div_left3a3").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a3").css("color", "#7b8da3");
            $(".Fund_management_content_czhy_middle2_div_left3a2").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a2").css("color", "#7b8da3");
            $(".Fund_management_content_czhy_middle2_div_left3a4").css("background-image", "none");
            $(".Fund_management_content_czhy_middle2_div_left3a4").css("color", "#7b8da3");
            $(".Fund_management_content_czhy_middle2_div_left3a5").css("background-image", "url(/saleterrace/images/zjgl_czhy_img3_03.png)");
            $(".Fund_management_content_czhy_middle2_div_left3a5").css("color", "#58626e");
            $(".Fund_management_topa2_span1_jiage2").text("");
            $("#month").val(12);
        })

        $(".Capitalrecord_transactionrecords1_middle1_topleft3").click(function (e) {

            $(".Fund_management_middle_topleft1").css("background-color", "white");
            $(".Fund_management_middle_topleft1 a").css("color", "#1d1d26");
            $(".Fund_management_middle_topleft2").css("background-color", "white");
            $(".Fund_management_middle_topleft2 a").css("color", "#1d1d26");
            $(".Capitalrecord_transactionrecords1_middle1_topleft2").css("background-color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft2 a").css("color", "#1d1d26");
            $(".Capitalrecord_transactionrecords1_middle1_topleft3").css("background-color", "#59c2e6");
            $(".Capitalrecord_transactionrecords1_middle1_topleft3 a").css("color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft4").css("background-color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft4 a").css("color", "#1d1d26");
            $(".Fund_management_content_czhy_yhkgl").hide();
            $(".Fund_management_content_czhy_tixian").hide();
            $(".Fund_management_content_czhy").hide();
            $(".Fund_management_content_czhy_tixian2").show();
            $(".Fund_management_content_czhy_yhkgl_2").hide();
            $(".Capitalrecord_transactionrecords1_1").css("height", "780px");
            //$(".Capitalrecord_transactionrecords1_1").css("height","698px");

        })

        $(".Capitalrecord_transactionrecords1_middle1_topleft4").click(function (e) {

            $(".Fund_management_middle_topleft1").css("background-color", "white");
            $(".Fund_management_middle_topleft1 a").css("color", "#1d1d26");
            $(".Fund_management_middle_topleft2").css("background-color", "white");
            $(".Fund_management_middle_topleft2 a").css("color", "#1d1d26");
            $(".Capitalrecord_transactionrecords1_middle1_topleft2").css("background-color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft2 a").css("color", "#1d1d26");
            $(".Capitalrecord_transactionrecords1_middle1_topleft3").css("background-color", "white");
            $(".Capitalrecord_transactionrecords1_middle1_topleft3 a").css("color", "#1d1d26");
            $(".Capitalrecord_transactionrecords1_middle1_topleft4").css("background-color", "#59c2e6");
            $(".Capitalrecord_transactionrecords1_middle1_topleft4 a").css("color", "white");
            $(".Fund_management_content_czhy_yhkgl").hide();
            $(".Fund_management_content_czhy_tixian").hide();
            $(".Fund_management_content_czhy").hide();
            $(".Fund_management_content_czhy_tixian2").hide();
            $(".Capitalrecord_transactionrecords1_1").css("height", "767px");
            $(".Fund_management_content_czhy_yhkgl_2").show();

            //$(".Capitalrecord_transactionrecords1_1").css("height","698px");

        })


    })

    $(function () {


        $(".selectImg").parent().click(function (e) {
            if ($(".sources_ul").attr("class").indexOf("hidden") > 0) {
                $(".sources_ul").removeClass("hidden");
            } else {
                $(".sources_ul").addClass("hidden");
            }
            e.stopPropagation();
        });
        $(".sources_ul li").click(function (e) {
            $("input.bankName").val($(this).text());
            $(".sources_ul").addClass("hidden");
            e.stopPropagation();
        });

        $(document).click(function () {
            $(".sources_ul").addClass("hidden");

        });

        $(document).click(function () {
            $(".sources_ul").addClass("hidden");

        });

        $(".sources_select1").click(function (e) {
            if ($(".sources_ul1").attr("class").indexOf("hidden") > 0) {
                $(".sources_ul1").removeClass("hidden");
            } else {
                $(".sources_ul1").addClass("hidden");
            }
            e.stopPropagation();
        });
        $(".sources_ul1 li").click(function (e) {
            $(".sources_select1 input").eq(0).val($(this).text());
            $(".sources_ul1").addClass("hidden");
            e.stopPropagation();
        });

        $(document).click(function () {
            $(".sources_ul1").addClass("hidden");

        });

        $(document).click(function () {
            $(".sources_ul1").addClass("hidden");

        });


        $(".sources_select2").click(function (e) {
            if ($(".sources_ul2").attr("class").indexOf("hidden") > 0) {
                $(".sources_ul2").removeClass("hidden");
            } else {
                $(".sources_ul2").addClass("hidden");
            }
            e.stopPropagation();
        });

        $(".sources_ul2 li").click(function (e) {
            $(".sources_select2 input").eq(0).val($(this).text());
            $(".sources_ul2").addClass("hidden");
            e.stopPropagation();
        });

        $(document).click(function () {
            $(".sources_ul2").addClass("hidden");

        });

        $(document).click(function () {
            $(".sources_ul2").addClass("hidden");

        });
        //vip充值跳转资金充值操作
        var url= window.location.href;
        var name = getQueryString(url,'name');
        var price = getQueryString(url,'price');
        if(name && price){
            $("#moneyUnionPayAccount").val(price);
        }


    });
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
