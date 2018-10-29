<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 商家的已发布的活动,以子列表显示 -->
<head>
    <link rel="shortcut icon" href="/saleterrace/images/favicon.ico" type="image/x-icon"/>
    <title>【试客多】- 我的活动</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/saleterrace/js/verdor/datepicker/WdatePicker.js"></script>
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery-zclip.1.1.2/jquery.zclip.js"></script>
    <script src="/saleterrace/js/verdor/jquery.form.js" language="javascript" type="text/javascript"></script>
    <script src="/saleterrace/js/verdor/jquery-jqPaginator/jqPaginator.js" language="javascript"  type="text/javascript"></script>
    <script type="text/javascript" src="/saleterrace/js/common/common.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/task.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/page.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/taskComment.js"></script>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/seller/jfbrw.css">
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/paging.css"/>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/seller/common.css">
    <script type="text/javascript" src="/saleterrace/js/seller/jfbrw.js"></script>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/zebra_dialog.css"/>
    <script type="text/javascript" src="/saleterrace/js/verdor/zebra_dialog/zebra_dialog.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/popdg.js"></script>
</head>
<body>
<div class="missionBox">
    <div class="mission">
        <i class="mclose"></i>
        <span></span>
        <h2>恭喜，活动发布成功！</h2>
        <p>及时补充店铺及宝贝访问流量，控制成交转化率，可大大降低被抓风险~<br/>使用“补人气”补流量，优质账户，万人IP同时在线，真实点击，被生意参谋和直通车后台所认可！</p>
        <a href="/indexSkip.htm?domain=http://burenqi.com" target="_blank">前去补人气</a>
    </div>
</div>
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
    <div class="Content-Space-h"></div>
    <div id="Content">
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
        <div id="Content-Space"></div>
        <div id="Content-Main">
            <!-- center begin -->
            <div>
                <div id="tabsSwitch" align="left" class="tabsSwitchDiv" style="margin-top: 0px">
                    <ul class="tabsSwitch_ul">
                        <li value="0" class="tabsSwitchSeletedLi">已发布活动</li>
                        <li value="1" class="tabsSwitchUnSeletedLi">未发布活动</li>
                        <li value="2" class="tabsSwitchUnSeletedLi">发布记录</li>
                        <li value="3" class="tabsSwitchUnSeletedLi">发布模板</li>
                    </ul>
                </div>

            </div>

            <div class="wdrw_div" align="center">
                <div class="search_options" align="left" style="height: auto">
                    <form action="" method="post" id="paramForm" autocomplete=”off”>
                        <div class="space_div"></div>

                        <span>店铺名称：</span>
                        <select name="ww_id" id="ww_id">
                            <option value="" selected>全部</option>

                            <option value="TOREAD kids意光专卖店">TOREAD kids意光专卖店</option>

                            <option value="泰嘉boy">小算珠婴童店</option>

                            <option value="thinklittle旗舰店">thinklittle旗舰店</option>

                        </select>
                        <span>发布时间：</span>
                        <input type="text" class="input_text jsTime1" id="taskBeginTimestart" name="taskBeginTimestart">&nbsp;到&nbsp;
                        <input type="text" class="input_text jsTime2" id="taskBeginTimeend" name="taskBeginTimeend"><br>
                        <span>订单编号：</span><input type="text" class="input_text ddbh" name="payOrderNum">
                        <span>活动类型：</span>
                        <select name="saleTaskTypePlat" id="saleTaskTypePlat" style="width: 100px;">
                            <option value="" selected>全部</option>
                            <option value="0">淘宝/天猫</option>
                            <option value="1">京东</option>
                            <option value="2">拼多多</option>
                        </select>
                        <select name="saleTaskType" id="saleTaskType" style="width: 130px;">
                            <option value="" selected>全部</option>
                            <option value="0" class="tbtm hidden">淘宝/天猫普通活动</option>
                            <option value="1" class="tbtm hidden">淘宝/天猫预售活动</option>
                            <option value="2" class="tbtm hidden">淘宝/天猫特别活动</option>
                            <option value="3" class="tbtm hidden">淘宝/天猫深度试用活动</option>
                            <option value="4" class="tbtm hidden">淘宝/天猫复购活动</option>
                            <option value="5" class="tbtm hidden askEverybody">淘宝/天猫问大家活动</option>
                            <option value="6" class="tbtm hidden">淘宝/天猫问高级引流活动</option>
                            <option value="7" class="tbtm hidden">淘宝/天猫猜你喜欢活动</option>
                            <option value="98" class="pdd hidden">拼多多试用活动</option>
                            <option value="99" class="jd hidden">京东试用活动</option>
                        </select>
                        <select name="platform" style="width: 150px;" id="platform">
                            <option value="" selected>全部</option>
                            <option value="0" class="tbtm hidden">PC淘宝网taobao.com</option>
                            <option value="1" class="tbtm hidden">手机淘宝APP</option>
                            <option value="0" class="jd hidden">PC京东网jd.com</option>
                            <option value="1" class="jd hidden">手机京东APP</option>
                            <option value="1" class="pdd hidden">手机拼多多APP</option>
                        </select><br>
                        <span>活动编号：</span><input type="text" class="input_text rwbh" name="childTaskNum" autocomplete="off">
                        <span>试客账号：</span><input type="text" class="input_text msww" name="buyerwwid">
                        <br>
                        <div align="left" class="hidden isPreSale">
                            <span>是否预售：</span>
                            <select name="isPreSale" id="isPreSale" style="width: 130px;">
                                <option value="" selected>全部</option>
                                <option value="1">预售活动</option>
                                <option value="0">非预售活动</option>
                            </select>
                            <select name="isPreSaleType" style="width: 150px;" id="isPreSaleType">
                                <option value="" selected>全部</option>
                                <option value="2" class="isPreSale">活动付款倒计时</option>
                                <option value="1" class="isPreSale0">加购倒计时</option>
                                <option value="0" class="isPreSale0">下单倒计时</option>
                            </select>
                        </div>
                        <div align="left">
                            <input type="button" class="search_button" value="搜索">
                            <input type="hidden" id="childTaskCount" value="0">
                            <input type="hidden" id="jobType" name="jobType" value="TASK">
                            <input type="hidden" id="taskStatusflag" name="taskStatusflag" value="-1">
                            <input type="hidden" name="page" id="page" value="1"/>
                            <input type="hidden" id="expressCodeFeeTT" value="3.00">
                            <input type="hidden" id="expressCodeFeeQF" value="3.00">
                            <input type="button" class="export_button" value="导出" onclick="exportExcel()">
                            <span id="excel" style="margin-left: 0px;">(导出当前页数据)</span>
                        </div>
                    </form>
                </div>
                <div id="tabs" align="left">
                    <input type="hidden" id="systemTime" name="systemTime" value="1540190741463"/>
                    <ul class="tabs_ul">
                        <li value="-1" id="defualt" class="tabsSeletedLi" style="line-height: 30px;">近三月<p>(<span
                                id="threeMonthTask"></span>)</li>
                        <li value="0" class="tabsUnSeletedLi" style="line-height: 30px;">待接手<p>(<span
                                id="waitReceiveTask"></span>)</li>
                        <li value="1" class="tabsUnSeletedLi" style="line-height: 30px;">进行中<p>(<span id="going"></span>)
                        </li>
                        <li value="14" class="tabsUnSeletedLi" style="line-height: 30px;">关闭审核<p>(<span
                                id="closeExamine">0</span>)</li>
                        <li value="5" class="tabsUnSeletedLi" style="line-height: 30px;">待发货<p>(<span
                                id="waitToDelivered"></span>)</li>
                        <li value="6" class="tabsUnSeletedLi" style="line-height: 30px;">待收货/评价<p>(<span
                                id="delivered"></span>)</li>
                        <li value="7" class="tabsUnSeletedLi" style="line-height: 30px;">待返款<p>(<span
                                id="waitCash"></span>)</li>
                        <li value="11" class="tabsUnSeletedLi" style="line-height: 30px;">已成功<p>(<span
                                id="successTask"></span>)</li>
                        <li value="12" class="tabsUnSeletedLi" style="line-height: 30px;">已失败<p>(<span
                                id="failTask"></span>)</li>
                    </ul>

                    <p class="waitToDeliveredP">可导出全部待发货订单，仔细核对旺旺号及订单编号，平台已标记垫付金额与实付金额不一致订单，请确认无误之后操作发货</p>
                    <p class="waitToDeliveredP">如找不到订单信息，可在待收货中查看是否已平台发货；拼多多未拼团成功的失效活动，请联系客服关闭</p>
                    <p class="waitCashP">如果试客的活动符合要求，请设置返款，平台将赏金打至试客账户。如果不符合要求，请联系客服!</p>
                    <div value="5" class="batch" style="display: none;background-color: #ffffff;"><img
                            src="/saleterrace/images/checkbox_unselected.png" class="checkbox checkbox_selectAll"
                            style="margin:0 10px 0 32px" value="0" alt=""><span class="batchAllSpan">全选</span><input
                            type="button" class="checkbox_button" value="批量发货" onclick="bacthSendOrBack(5)"></div>
                    <div value="7" class="batch" style="display: none;background-color: #ffffff;"><img src="/saleterrace/images/checkbox_unselected.png" class="checkbox checkbox_selectAll" style="margin:0 10px 0 32px" value="0" alt=""><span class="batchAllSpan">全选</span><input
                            type="button" class="checkbox_button" value="批量返款" onclick="bacthSendOrBack(7)"></div>
                    <div class="content_div">
                        <div class="list_div">
                            <div class="mission_div">
                                <div class="mission_head">
                                    <div class="floatLeft shalfDiv" align="left">
                                        <img src="/saleterrace/images/checkbox_selected.png" class="checkbox" value="0" id="6456939">
                                        <b>子活动编号：162036-1536043819001-02201</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <b id="taskTypeTime">发布时间：2018-09-04 14:52:38</b>
                                    </div><div class="floatLeft fhalfDiv" align="right">
                                    <b>订单编号：<span>212299761238037050</span></b>
                                    <input type="button" value="复制" class="copy_button">
                                    <img src="/saleterrace/images/flag.png" class="flagImg" title="添加弹框">
                                </div>
                            </div>
                                <ul class="mission_ul">
                                    <li class="mission_li1">
                                        <div class="space_div"></div>
                                        <div class="bb_img">
                                            <img class="bb_img" src="/saleterrace/images/11.jpg"></div>
                                    </li>
                                    <li class="mission_li5">
                                        <div class="space_div"></div>
                                        <img src="/saleterrace/images/mobile_icon2.png">手机端<br>手机淘宝
                                    </li>
                                    <li class="mission_li7">
                                        <div class="space_div"></div>
                                        店铺名称<br>
                                        <a title="thinklittle旗舰店" style="color: #7b8da0;">thinklittle旗...</a>
                                        <img src="/saleterrace/images/tmail_icon.png" class="sjTypeImg">
                                    </li>
                                    <li class="mission_li4">
                                        <div class="space_div"></div>
                                        下单数量<br>1
                                    </li>
                                    <li class="mission_li8" style="width:100px;">
                                        <div class="space_div"></div>
                                        垫付货款<br>39.9<br>
                                    </li>
                                    <li class="mission_li9">
                                        <div class="space_div"></div>
                                        活动总赏金<br>17.20
                                    </li>
                                    <li class="mission_li3">
                                        <div class="space_div"></div>
                                        买号要求<br>
                                        <img src="/saleterrace/images/b_blue_1.gif" alt="买家信誉">
                                    </li>
                                    <li class="mission_li8" style="width:128px;">
                                        <div class="space_div"></div>
                                        <img style="margin-bottom: 2px" src="/saleterrace/images/jsrw.png"><br>
                                        <img src="/saleterrace/images/zhu.png" title="主宝贝浏览见底">
                                        <img src="/saleterrace/images/ping.png" title="评价浏览">
                                        <img src="/saleterrace/images/liao.png" title="旺旺聊天">
                                        <img src="/saleterrace/images/scbb.png" title="收藏宝贝">
                                        <img src="/saleterrace/images/tjgwc.png" title="加入购物车"><br>
                                    </li>
                                    <li class="mission_li6">
                                        <div class="space_div"></div>
                                        试客旺旺<br>
                                        <span style="color: red">cradlekl</span>
                                        <br><img src="/saleterrace/images/b_blue_3.gif" alt="买家信誉">
                                    </li>
                                    <li class="mission_li10">
                                        交易成功<br>
                                        <a class="aOpeara" href="/seller/sellerTaskDetails.htm?id=6456939">查看详情</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    <div id="infoRows">

                    </div>
                    <div id="pagingFooterBar" align="right">
                        <ul class="pagination"></ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- center end -->
        <div class="floatLeft fk_outside_div_again" align="left" id="payAgainPub">
            <div class="fk_div_again" style="width: 350px;height: 150px;">
                <span style="margin-left: 10px;color: #333333">温馨提示：</span>
                <div class="warn" style="margin-left: 10px;line-height: 25px;color: #333333">1、失败的子活动可选择再次发布</div>
                <div class="warn" style="margin-left: 10px;line-height: 25px;color: #333333">2、再次发布需重新支付该子活动的货款及赏金。
                </div>
                <div align="right">
                    <input type="button" class="cancel_button2" id="cancel_button2" value="取消">
                    <input type="button" class="confirm_button2" id="suerAgaginPub" value="确认重发">
                </div>
            </div>
        </div>
        <div class="floatLeft fk_outside_div_again" align="left" id="closeDoingTask">
            <input type="hidden" id="closeTaskId" class="input_text">
            <div class="fk_div_again" style="width: 420px;height: 220px;">
                <span style="margin-left: 10px;color: #333333">温馨提示：</span>
                <div class="warn" style="margin-left: 35px;line-height: 25px;color: black;margin-right: 10px">
                    该活动已被试客接手，此时关闭将会扣除全部赏金，

                    若有好评要求，好评部分的赏金可退还。
                </div>
                <div class="warn" style="margin-left: 35px;line-height: 25px;color: black;margin-right: 10px">
                    若试客已经下单，活动关闭后将会在淘宝申请退款。
                </div>
                <div class="warn"
                     style="margin-left: 35px;line-height: 25px;color: black;margin-top: 20px;margin-right: 10px">
                    是否确认关闭该活动？
                </div>
                <div align="right">
                    <input type="button" class="cancel_button2" id="cancelCloseDoingTask" value="取消">
                    <input type="button" class="confirm_button2" id="suerCloseDoingTask" value="确认">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="safety_check" id="surePayAgainPub">
    <div class="title" align="left">
        <span>安全验证</span><img src="/saleterrace/images/close.png" class="safety_window_close closeAgaginPub">
    </div>
    <div class="floatLeft">
        <span style="line-height:30px;">支付密码：</span>
    </div>
    <div class="floatLeft">
        <div style="float:left;position:relative;">
            <input type="password" id="pwd_text" class="input_text pay_input_text">
            <span class="pwdm" onclick="showPwd(this)"></span>
        </div>
        <input type="hidden" id="fk_div_flag" class="input_text">
        <input type="hidden" id="taskid" class="input_text">
        <input type="hidden" id="parentNum" class="input_text">
        <div id="error" style="clear:both;"></div>
        <div class="warn">1、活动发布后立即左右生效，注意刷新活动页！</div>
        <div class="warn">2、<span>试客付款后</span>请及时确认及发货，系统将在<span>48小时自动把货款返还给试客！</span></div>
        <div class="warn">3、<span>试客收货后</span>请及时确认及返款，系统将在<span>48小时后自动返款！</span></div>
        <input type="button" class="safety_submit_button" value="确定" id="confirm_button2">
        <input type="button" class="safety_cancel_button closeAgaginPub" value="取消">
    </div>
</div>
<div class="Content-Space-h"></div>
<div class="Clear"><!--如何你上面用到float,下面布局开始前最好清除一下。--></div>
<div id="Footer">
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/footer.css?rel=1539573213876"/>
    <div class="foot_div">

        <div class="foot_div_div1">
            <a class="foot_div_div1_a1"></a>
        </div>
        <div style="text-align: center;">


        </div>

    </div>
</div>


<script>
    $(function () {
//        $(".fb_button").click(function () {
//           var moneyAndCoinLack = parseFloat($(this).attr("moneyAndCoinLack"));
//            if(moneyAndCoinLack==0){
//
//            }
//        });
    });


    function payTip() {
        var dg;
        var html = "<span style='font-size: 16px;display: block;margin-bottom: 10px;'>请前往充值页面进行充值</span>";
        var okCallback = function () {
            dg.close();
        };
        var cancelCallbak = function () {
            window.location.reload();
        };
        var options = {
            width: 400,
            overlay_close: false,
            show_close_button: false,
            center_buttons: true
        };
        dg = _showDialog('confirmation', "支付小贴士：", html, "充值遇到问题", okCallback, "已完成充值", cancelCallbak, options);
    }

    function payTip2() {
        var dg;
        var html = "<span style='font-size: 16px;display: block;margin-bottom: 10px;'>当前余额不足，请先充值。</span>";
        var okCallback = function () {
            window.open("/saleterrace/zjgl_index");
        };
        var cancelCallbak = function () {
            window.location.reload();
        };
        var options = {
            width: 400,
            overlay_close: false,
            show_close_button: false,
            center_buttons: true
        };
        dg = _showDialog('confirmation', "支付小贴士：", html, "马上去充值", okCallback, "已完成充值", cancelCallbak, options);
    }
</script>
</body>
</html>
