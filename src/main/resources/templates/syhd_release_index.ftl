<html>
<head>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon" href="/saleterrace/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="/saleterrace/css/seller/newPrefbrw.css">
    <link rel="stylesheet" type="text/css"  href="/saleterrace/css/seller/bindStorePop.css"/>
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery/jquery-1.10.2.js"></script>
    <script language="javascript" type="text/javascript" src="/saleterrace/js/verdor/jquery.form.js"></script>
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery-zclip.1.1.2/jquery.zclip.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/common.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/page.js"></script>
    <script type="text/javascript" src="/saleterrace/js/seller/bindStorePop.js"></script>
    <script type="text/javascript" src="/saleterrace/js/seller/newPrefbrw.js"></script>
    <link rel="stylesheet" type="text/css" href="/saleterrace/js/verdor/zebra_dialog/zebra_dialog.css"/>
    <script type="text/javascript" src="/saleterrace/js/verdor/zebra_dialog/zebra_dialog.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/popdg.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/homepage.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/cos-js-sdk-v4.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/uploadImageCommon.js"></script>
    <title>【试客多】-商家发布活动</title>
    <style>
        .leadBox {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, .5);
            z-index: 10000;
            display: none;
        }

        .lead {
            position: absolute;
            right: 25px;
            top: 80px;
            width: 437px;
            height: 227px;
            background: url(/saleterrace/images/QQyd.png);
            z-index: 10001;
            display: none;
        }

        .lead a {
            position: absolute;
            bottom: 2px;
            width: 90px;
            height: 30px;
        }

        .lead a.change {
            left: 133px;
        }

        .lead a.unPrompt {
            right: 60px;
        }

        .ZebraDialog {
            top: 300px !important;
        }
    </style>
</head>
<body>

<link rel="stylesheet" type="text/css" href="/saleterrace/css/top.css"/>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-first-event.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store+json2.min.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store.expire.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/top.js"></script>
<script type="text/javascript" src="/saleterrace/js/dist/viewer.js"></script>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/viewer.css" />

<script>
    if (window.location.hostname == '115.159.84.78') {
        window.location.href = "http://budingdan.com";
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
    function isGodChoose() {
        //id结尾为0的，大概为10分之一几率
        var lastNumber = Math.abs(uid) % 10;
        return uid != null ? lastNumber <= 9 : false;
//            return true;
    }

    //移除所有input和textarea的前后空格
    function removeSpaceFunction() {
        $('input[type=text], textarea').each(function () {
            $(this).val(jQuery.trim($(this).val()));
        });
    }

    //绑定可能是按钮触发的click事件，将该event插入到第一位，在点击后第一时间将所有的前后空格去除
    $(window).load(function () {
        $("input").firstOn("click", removeSpaceFunction);
    });
</script>
<style>
    .contentBox {
        position: fixed;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, .6);
        z-index: 1000;
        display: none;
    }

    .contentBox .content {
        position: absolute;
        left: 50%;
        top: 50%;
        padding: 15px;
        margin-left: -220px;
        margin-top: -300px;
    }

    .contentBox .content span {
        position: absolute;
        right: 23px;
        top: 20px;
        width: 15px;
        height: 15px;
        font-size: 15px;
        line-height: 15px;
        text-align: center;
        cursor: pointer;
    }

    .contentBox .content h2 {
        font-size: 24px;
        font-weight: normal;
        color: rgb(255, 51, 1);
        text-align: center;
        margin: 20px 0 35px 0;
    }

    .contentBox .content p {
        font-size: 14px;
        line-height: 25px;
        text-align: justify;
        width: 480px;
        margin: 0 auto 30px;
        text-indent: 30px;
    }

    .contentBox .content p i {
        font-size: 14px;
        color: #ff3300;
        font-style: normal;
    }

    .contentBox .content h3 {
        text-align: right;
        font-weight: normal;
        font-size: 14px;
        color: rgb(71, 195, 136);
        margin-right: 15px;
    }

    .contentBox .content .noAgain {
        position: absolute;
        right: 50px;
        top: 20px;
    }

    .contentBox .content .noAgain i {
        float: left;
        width: 10px;
        height: 10px;
        border: 1px solid #999;
        cursor: pointer;
        margin: 2px;
    }

    .contentBox .content .noAgain i.active {
        background: url(/saleterrace/images/gou.png) no-repeat center;
    }
</style>
<div class='contentBox' onclick='closeImg2();'>
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
                4	<li style="padding-left: 20px; clear: both;">
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
<input type="hidden" id="currentDate" value="20181022">
<input type="hidden" id="userRole" value="true">
<script type="text/javascript" src="https://js.users.51.la/19492995.js"></script>
<script>
    function closeImg() {
        $(".contentBox").remove();
        if ($('#userRole').val()) {
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
        $(".content").click(function () {
            return false;
        });
        $(".noAgain").click(function () {
            var keep = new Date();
            var active = $(this).find("i").hasClass("active");
            if (active) {
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
        $(".shade-close").on("click", function () {
            $(".shade, .shade-box").remove();
        })
    }


</script>

<div id="Container" align="center">
    <div id="Header">


        <link rel="stylesheet" type="text/css" href="/saleterrace/css/layout.css"/>
        <link rel="stylesheet" type="text/css" href="/saleterrace/css/header.css"/>
    </div>
    <div style="height:20px;"></div>
    <div id="Content" align="left">
        <div id="Content-Left">
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
                $(document).ready(function () {
                    if (isGodChoose()) {
                        var gotoxiuba = $("#goto-xiuba-href");
                        if (gotoxiuba && gotoxiuba.length > 0) {
                            gotoxiuba.css("display", "inline-block");
                        }
                    }
                });
            </script>
        </div>
        <div id="Content-Main">
            <div class="leadBox"></div>
            <div class="lead">
                <input type="hidden" id="emergency" value="13706827563">
                <input type="hidden" id="forbidEmergency" value="">
            </div>
            <div class="role">
                <h2>发布活动 </h2>


            </div>
            <div>
                <a href="http://www.maijiabus.com/publictooliframe.htm?accessurl=http://ui.maijiabus.com/xcbb" style="display: block;" target="_blank">
                    <img src="/saleterrace/images/jsbanner.jpg" alt="" style="margin: 10px auto;display: block;">
                </a>

            </div>
            <div class="select">
                <h2>第一步：选择活动类型</h2>
                <div class="missonType">
                    <h3><span>1</span>选择活动类型：</h3>
                    <ul class="bigTag">
                        <li class="active" jobType="TASK"><span></span>试用活动（试客垫付）</li>

                    </ul>
                    <p class="remind">
                        <img src="/saleterrace/images/i16_sm.png" alt="">


                        深度试用活动为保证金专属活动类型，您还有


                        4
                        天


                        的免费试用机会。其他活动类型无此限制


                    </p>
                    <div style="height:1px;width:100%;background-color:#dcdcdc;"></div>
                    <h3><span>2</span>选择活动小类：</h3>


                    <ul class="misson TASK">


                        <li IsDevelop="1">
                            <div class="tuijian-img"></div>
                            <div class="diamond-img" style="margin-left: -62px;"></div>
                            <i saleTaskType="3"></i>淘宝/天猫<em>深度试用</em>活动<span>（多个关键词进行竞品深度货比，再通过目标关键词进店）</span>
                            <em>仅限优质花呗试客！</em>
                            <dl>
                                <dd data="1"><i platform="1" task_type="1"></i>手机淘宝APP</dd>
                            </dl>
                        </li>
                        <li IsDevelop="1">
                            <i saleTaskType="0"></i>淘宝/天猫普通试用活动<span>（试客通过自然搜索下单付款）</span>
                            <span style="color: red;">(适合大词使用，长尾关键词的朋友建议深度试用活动)</span>
                            <dl>
                                <dd data="1"><i platform="1" task_type="1"></i>手机淘宝APP</dd>
                            </dl>
                        </li>


                        <li IsDevelop="1" style="position: relative">
                            <i saleTaskType="1"></i>淘宝/天猫<em>预售</em>活动<span>（先浏览收藏加购，在指定时间下单付款）</span>
                            <dl>
                                <dd data="1" redirect_selected="publish_mission_presell"><i platform="1"
                                                                                            task_type="1"></i>手机淘宝APP
                                </dd>
                            </dl>
                        </li>
                        <li IsDevelop="1">
                            <i saleTaskType="4"></i>淘宝/天猫<em>复购</em>活动<span>（曾经购买过的客户，再次购买）</span>
                            <em style="font-size: 15px;"> （首次发布活动30天之后，才可以发布复购活动）</em>
                            <dl>
                                <dd data="1"><i platform="1" task_type="1"></i>手机淘宝APP</dd>
                            </dl>
                        </li>
                        <li IsDevelop="1" style="position: relative">

                            <i saleTaskType="2"></i>淘宝/天猫<em>特别</em>活动<span>（通过淘宝客、淘口令、聚划算、淘抢购、淘金币、天天特价及其他自定义入口下单）</span>
                            <dl>
                                <dd data="1"><i platform="1"></i>手机淘宝APP</dd>
                            </dl>
                        </li>
                        <li IsDevelop="1" style="position: relative">

                            <i saleTaskType="99"></i><em>京东普通试用活动</em><span>（用户通过自然搜索下单付款）</span>
                            <dl>
                                <dd data="1" style="color: red"><i platform="1" task_type="1"></i>手机京东APP</dd>
                            </dl>
                        </li>
                        <li IsDevelop="1" style="position: relative">

                            <i saleTaskType="98"></i><em>拼多多普通试用活动</em><span>（用户通过自然搜索下单付款）</span>
                            <em style="font-size: 15px;">全新上线，限时免会员，直接发布！</em>
                            <dl>
                                <dd data="1" style="color: red"><i platform="1" task_type="1"></i>手机拼多多APP</dd>
                            </dl>
                        </li>
                        <li IsDevelop="1" style="position: relative">
                            <div class="diamond-img"></div>
                            <i saleTaskType="5"></i>淘宝/天猫<em>问大家</em>活动<span>（自定义淘宝问大家中的问题和回答，提高转化率）</span>
                            <em>仅限优质花呗试客！效果非常好！</em>
                            <dl>
                                <dd data="1"><i platform="1" task_type="1"></i>提问活动</dd>
                                <dd data="1"><i platform="1" task_type="0"></i>答题活动</dd>
                            </dl>
                        </li>
                        <li IsDevelop="1" style="position: relative">
                            <div class="diamond-img"></div>
                            <i saleTaskType="7"></i><em>淘宝/天猫猜你喜欢活动</em><span>（继黑搜之后又一流量利器）</span>
                            <em>多渠道进店下单，权重更高！</em>
                            <dl>
                                <dd data="1" limit="true"><i platform="1" task_type="1"></i>手淘ifashion</dd>
                                <dd data="1" limit="true"><i platform="1" task_type="0"></i>手淘首页</dd>
                            </dl>
                        </li>
                        <li IsDevelop="1" style="position: relative">
                            <div class="diamond-img"></div>
                            <i saleTaskType="6"></i>淘宝/天猫<em>高级引流</em>活动<span>（搜索主打款进店，在店里查找目标款。在指定时间下单付款）</span>
                            <em>仅限优质花呗试客！效果非常好！</em>
                            <dl>
                                <dd data="1" redirect_selected="publish_mission_presell"><i platform="1"
                                                                                            task_type="1"></i>手机淘宝APP
                                </dd>
                            </dl>
                        </li>
                    </ul>

                    <ul class="misson BROWSER">
                        <li IsDevelop="1">
                            <i></i>淘宝/天猫浏览活动<span>（通过自然搜索浏览收藏加购）</span>
                            <dl>
                                <dd data="1"><i platform="1" task_type="1"></i>手机淘宝APP</dd>
                            </dl>
                        </li>
                        <li IsDevelop="0">
                            <i></i>淘宝/天猫<em>多次浏览</em>活动<span>（对已经收藏或加购物车的商品进行再次浏览）</span>
                            <b>开发中</b>
                        </li>
                        <li IsDevelop="0">
                            <i saleTaskType="2"></i>淘宝/天猫<em>特别浏览</em>活动<span>（通过淘宝客、淘口令、聚划算、淘抢购、淘金币、天天特价及其他自定义入口）</span>
                            <b>开发中</b>
                        </li>
                        <li IsDevelop="0">
                            <i></i>淘宝/天猫<em>分享</em>活动<span>（用户将宝贝或店铺分享至微信、QQ、微博等指定媒体）</span>
                            <b>开发中</b>
                        </li>
                    </ul>

                    <div style="height:1px;width:100%;background-color:#dcdcdc;"></div>


                    <div class="vip-select-box">
                        <ul class="misson TASK " style="display: block;">
                            <li>
                                <div class="diamond-img"></div>
                                <i></i>淘宝/天猫<em>高级定向</em>活动<span>（指定竞争对手的商品进行竞品货比。在指定时间拍下）</span>
                                <em>仅限优质试客接手！效果非常好！</em>
                                <b>开发中</b>
                            </li>
                        </ul>
                        <input id="nowTime" type="hidden" value="Mon Oct 22 12:00:27 CST 2018">
                        <input id="endTime" type="hidden" value="Thu Oct 25 15:22:09 CST 2018">
                        <input id="vipLevel" type="hidden" value="0">
                        <input id="firstPubTaskDate" type="hidden" value="Wed May 23 17:29:50 CST 2018">
                    </div>

                </div>
                <div class="store_select_div">
                    <h2>第二步：选择店铺</h2>
                    <ul class="store">
                        <li>
                            <a style="color: #5bbff3;text-decoration: underline;font-size: 15px;"
                               href="/saleterrace/dpgl_index?rt=n" target="_self">去店铺管理绑定店铺</a>
                        </li>
                        <div id="shopList" class="shopType" style="display: none">
                            <ul class="shop">

                                <li style="margin-bottom: 0px;" class="shopList">
                                    <div>


                                        <img src="/saleterrace/images/i16_jd.png">


                                        <i shopName="TOREAD kids意光专卖店"></i><span>TOREAD kids意光专卖店</span>
                                    </div>
                                </li>

                                <li style="margin-bottom: 0px;" class="shopList">
                                    <div>


                                        <img src="/saleterrace/images/tb_icon.png">

                                        <i shopName="泰嘉boy"></i><span>小算珠婴童店</span>
                                    </div>
                                </li>

                                <li style="margin-bottom: 0px;" class="shopList">
                                    <div>

                                        <img src="/saleterrace/images/tmail_icon.png">


                                        <i shopName="thinklittle旗舰店"></i><span>thinklittle旗舰店</span>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <div id="tbShopList" class="shopType" style="display: none">
                            <ul class="shop">

                                <li style="margin-bottom: 0px;" class="shopList">
                                    <div>


                                        <img src="/saleterrace/images/tmail_icon.png">

                                        <i shopName="泰嘉boy"></i><span>小算珠婴童店</span>
                                    </div>
                                </li>

                                <li style="margin-bottom: 0px;" class="shopList">
                                    <div>

                                        <img src="/saleterrace/images/tmail_icon.png">


                                        <i shopName="thinklittle旗舰店"></i><span>thinklittle旗舰店</span>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <div id="jdShopList" class="shopType" style="display: none">
                            <ul class="shop">

                                <li style="margin-bottom: 0px;" class="shopList">
                                    <div>
                                        <img src="/saleterrace/images/i16_jd.png">
                                        <i shopName="TOREAD kids意光专卖店"></i><span>TOREAD kids意光专卖店</span>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <div id="pddShopList" class="shopType" style="display: none">
                            <ul class="shop">

                            </ul>
                        </div>

                        <li style="margin-top:25px;">
                            <h3 id="itemLinkShow">宝贝链接：</h3>
                            <input type="text" id="itemUrl" placeholder="请将宝贝的链接地址粘贴于此" class="show_item_detail">
                            <br>
                            <span style="color: red;margin-left: 20px;font-size: 13px;">高级引流活动此处填写链接为进店宝贝链接，其他活动为下单宝贝链接，拼多多活动无需填写宝贝链接！</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div style="margin-bottom: 10px;">
                <span style="font-size: 17px;font-style: italic;color: red;text-decoration:underline;text-align: center;margin-left: 320px; ">本站仅支持拍A发A，禁止一切拍A发B和虚假发货的行为</span>
            </div>
            <input type="submit" value="下一步" id="next">
        </div>

        <!--店铺认证相关页面-->
        <div class="shopAddBox" id="shopAddBox">
            <a href="javascript:;" class="close" onclick="closeShowAdd()">X</a>
            <div class="shopBox">
                <ul class="bindWay">
                    <li class="current">
                        <span class="screenshot"></span>
                        <p>截图绑定（人工审核）</p>
                        <i></i>
                    </li>


                </ul>

                <div class="screenBox">
                    <div class="new_dp_title" align="left">
                        <div class="floatLeft"><p>绑定店铺并认证<span>（仅接手活动的试客可以看到，不会被泄露）</span></p></div>
                    </div>
                    <div class="screen">
                        <form id="infoForm" name="infoForm" action="/seller/bind/store_info.htm"
                              enctype="multipart/form-data" method="post">
                            <div class="formInfor">
                                <ul class="title">
                                    <li>
                                        <i class="i1"></i>
                                        <h2 id="shopWwBind">请输入掌柜旺旺：</h2>
                                        <input type="text" id="wwId" name="wangwangid" maxlength="50">
                                        <p id="shoPWWBindMark">（<span>*</span>店铺旺旺绑定后不可更改）</p>
                                    </li>

                                    <li id="shopUrl">
                                        <i class="i3"></i>
                                        <h2>店铺首页网址：</h2>
                                        <input type="text" id="storeUrl" name="checkItemUrl">
                                        <p>（<span>*</span>店铺地址绑定后不可更改）</p>
                                    </li>
                                    <li class="sendPic">
                                        <i class="i4"></i>
                                        <h2>店铺后台截图：</h2>
                                        <img id="storeCheckImgShow" style="cursor: pointer;"
                                             src="/saleterrace/images/i88_img.png" alt="">
                                        <p>（为避免恶意绑定他人店铺必须上传店铺的后台登录截图）</p>
                                        <input type="file" id="picValue" name="storeCheckImgTemp"
                                               accept=".jpg,.jpeg,.gif,.png"
                                               onchange="jic.onchange(this,'bind',162036,successSetValueCallBack,successCallBack,errorCallBack,'');"/>
                                        <h3 id="selectPic">选择文件</h3>
                                        <a href="/saleterrace/images/dianpubangding02.png" id="bindImg" target="_blank">查看示例图</a>
                                    </li>
                                </ul>
                                <input type="hidden" id="storeCheckImg" name="storeCheckImg">
                                <input type="hidden" id="storeType" name="storeType" value="">
                                <input id="doSubmitCheck" type="button" value="提交店铺审核" onclick="doSubmit()">
                            </div>
                        </form>
                        <p>提示：店铺绑定审核时间1个工作日左右，若超过一个工作日请联系客服！</p>
                    </div>
                </div>
                <div class="success_back hidden">
                    <div style="height: 165px;">
                        <img style="margin-top: 60px;margin-left: 310px;" src='/saleterrace/images/i88_cg.png'/>
                    </div>
                    <p style='width:100%;margin-top:32px;font-size:20px;color:#969BAB;text-align: center;'>
                        店铺绑定申请已提交，客服审核需要1个工作日左右~</p>
                    <p style='width:100%;margin-top:15px;font-size:20px;color:#969BAB;text-align: center;'>需要马上发布活动“<a
                            href="javascript:goCodeCheck()"></a>验证码绑定”方式绑定店铺，无需等待！</p>
                    <div id='contact_service'
                         style='float: left;cursor: pointer;margin-top: 60px;background-color: #59C2E6;width: 220px;height: 50px;border-radius: 5px;margin-left: 111px;'>
                        <p style='font-size: 18px;line-height: 50px;text-align: center;color: #FFFFFF'>联系客服</p></div>
                    <div id='store_manage'
                         style='float: left;cursor: pointer;margin-top: 60px;background-color: #59C2E6;width: 220px;height: 50px;border-radius: 5px;margin-left: 57px;'>
                        <p style='font-size: 18px;line-height: 50px;text-align: center;color: #FFFFFF'>店铺管理</p></div>
                </div>

                <div class="new_dp hidden">
                    <div class="new_dp_title" align="left">
                        <div class="floatLeft"><p>绑定店铺并认证<span>（仅接手活动的试客可以看到，不会被泄露）</span></p></div>
                    </div>
                    <div class="add_steps" align="left">
                        <div class="steps floatLeft">
                            <div class="title">
                                <h2>第1步：</h2>
                                <p>选择店内任意宝贝，复制下方验证码，添加至标题末端并发布</p>
                            </div>

                            <div class="yzm_div">
                                <span>验证码：</span>
                                <span class="tb_valid_code"></span>
                                <a id="copy_btn" class="blue_span" href="#none">复制验证码</a>
                            </div>
                            <img class="fontImg" alt=""
                                 src="/saleterrace/images/bindStoreTip.png"/>
                            <div style="width:95%;margin:20px auto 10px auto;border-top:1px dashed #ddd;"></div>

                            <div class="title">
                                <h2>第2步：</h2>
                                <p>发布成功后将该宝贝链接提交认证</p>
                            </div>
                            <div class="ww_input">
                                <img src="/saleterrace/images/step1_icon.png">
                                <span>请输入掌柜旺旺：</span>
                                <input type="text" class="input_text ww_input_text" id="wangwangid">
                                <span>（<b>*</b>店铺旺旺绑定后不可更改）</span>
                            </div>
                            <div class="yzm_input">
                                <img src="/saleterrace/images/step2_icon.png">
                                <span>请输入宝贝链接：</span>
                                <input type="text" id="goodUrl" class="input_text bb_url_input_text"
                                       placeholder="请将标题中已添加了验证码的宝贝链接粘贴于此"><b class="star">*</b>
                            </div>
                            <input type="button" class="dpyz_button" onclick="dpyzBtnClick()" value="提交店铺验证">
                        </div>
                        <p>提示：绑定成功之后可以随时修改宝贝标题删除该验证码。</p>
                    </div>
                    <div class="dp_check hidden" align="left">
                        <div class="check_title_div"><p style="color: red">验证成功！请确认您的店铺信息</p></div>
                        <div class="dp_detail">
                            <span>掌柜旺旺：<b class="dp_account">&nbsp;</b></span>
                            <span>店铺名称：<b class="dp_name">&nbsp;</b></span><br>
                            <span>店铺发货地点：<b class="dp_location">&nbsp;</b></span>
                            <div class="detail_address" style="overflow: hidden;">
                                <div class="floatLeft address_field"><b>（选填）</b>详细发货地址：</div>
                                <div class="floatLeft">发货人姓名：<br>发货人地址：</div>
                                <div class="floatLeft">
                                    <input type="text" class="input_text fhrName_input_text">发货人电话：
                                    <input type="text" class="input_text fhrPhone_input_text"><br>
                                    <select id="sendProvince2">
                                        <option value=''>请选择省...</option>
                                    </select>
                                    <select id="sendCity2" data-reference="sendProvince2">
                                        <option value=''>请选择市...</option>
                                    </select>
                                    <select id="sendDistrict2" data-reference="sendCity2">
                                        <option value=''>请选择区...</option>
                                    </select><br>
                                    <input type="text" class="input_text house_input_text" id="sendDetail"><br>
                                    <input type="button" class="bd_button" value="确认绑定" onclick="bindSendAddr()">
                                    <input type="hidden" id="bsid" value=""/>
                                    <input type="hidden" id="bsstatus" value=""/>
                                    <input type="hidden" id="bsversion" value=""/>
                                    <input type="hidden" id="sendInfoId" value=""/>
                                    <input type="hidden" id="sendInfoVersion" value=""/>
                                </div>
                            </div>
                        </div>
                        <p>1、这里设置的发货地址将做为平台空包时的默认发货地址。<br/>2、您也可以在发送平台快递的时候更改。</p>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>
<div class="Content-Space-h"></div>
<div class="Clear">
    <!--如何你上面用到float,下面布局开始前最好清除一下。-->
</div>
<div id="Footer">

    <link rel="stylesheet" type="text/css" href="/saleterrace/css/footer.css"/>
    <div class="foot_div">

        <div class="foot_div_div1">
            <a class="foot_div_div1_a1"></a>
        </div>
        <div style="text-align: center;">


        </div>

    </div>
</div>

</body>
</html>
