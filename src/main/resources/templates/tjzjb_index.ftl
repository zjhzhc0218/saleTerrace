<html>
<head>
    <title>【试客多】-推荐赚金币</title>
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery-zclip.1.1.2/jquery.zclip.js"></script>
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery-loadTemplate/jquery.loadTemplate-1.4.4.js"></script>
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery-jqPaginator/jqPaginator.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/page.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/common.js"></script>
    <script type="text/javascript" src="/saleterrace/js/account/recommendPage.js"></script>
    <link rel="stylesheet" href="/saleterrace/css/recommendPage.css">
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/paging.css"/>
    <link rel="shortcut icon" href="/saleterrace/images/favicon.ico" type="image/x-icon"/>
</head>
<body>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/top.css"/>
    <script type="text/javascript" src="/saleterrace/js/verdor/jquery-first-event.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/store+json2.min.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/store.expire.js"></script>
    <script type="text/javascript" src="/saleterrace/js/common/top.js"></script>
    <script type="text/javascript" src="/saleterrace/js/dist/viewer.js"></script>
    <link rel="stylesheet" type="text/css" href="/saleterrace/js/dist/viewer.css" />
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


<a class="sImgJump" href="#"
   style=" margin: auto; display: block;text-align: center;color: red;font-style: italic;text-decoration: underline;font-size: 17px; background-color: bisque;line-height: 40px;">
    本站所有赏金均由商家提供，旨在激励试客生成优质的买家秀内容，本站从中不获取任何盈利！
</a>
<div class="top">

    <a href="/seller/index.htm">
        <div class="logo"></div>
    </a>


    <div class="qun_for_seller qun_tip">
        <a href="//shang.qq.com/wpa/qunwpa?idkey=96519ab8b4c99204d736e67685b5354a45c8fbeae3a38df059a1ef4bd8f53575"
           target="_blank">活动交流群：540995352</a>
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

        <div class="makeMoney">
            <h2>推荐奖励</h2>
            <div class="partThree">


                <ul>
                    <li class="title">
                        <p style="padding: 10px; font-weight: bold;">我的推荐用户</p>
                        <p>
                            <span class="left-content">已成功注册：</span>
                            <span style="width: 465px;text-align: left;"> <i class="recommend-seller-real-count cl58c3e5">1</i> 个商家，
                                <i class="recommend-buyer-real-count cl58c3e5">1</i> 个试客</span>
                        </p>
                        <p>
                            <span class="left-content">已成功完成活动（确认收货）：</span>
                            <span>
                                <i class="recommend-seller-count cl58c3e5">1</i> 个商家，<i class="recommend-buyer-count cl58c3e5">1</i> 个试客
                                </span>
                            <span style="color: red;">（仅在试客确认收货获得赏金后，增加统计）</span>
                        </p>
                        <p>
                            <span class="left-content">已累积获得奖励： </span>
                            <span>
                                    已获取奖励 <i class="recommend-sum cl58c3e5">100</i> 金币
                                </span>
                            <span style="color: red;">（仅在试客确认收货获得赏金后，增加统计）</span>
                        </p>
                        <!--<p><span>已成功推荐 <i class="recommend-seller-count cl58c3e5"></i> 个商家，<i class="recommend-buyer-count cl58c3e5"></i> 个试客；已获取奖励 <i class="recommend-sum cl58c3e5"></i> 金币</span></p>
                        <p class="explain">(仅在受邀商家和试客完成活动时，增加统计。只发布活动或接手活动而未完成，则不增加统计)</p>-->
                    </li>
                    <li class="role">
                        <a>商家&nbsp;&nbsp;累计提成：<i id="sellerSum">10</i> 金 &nbsp;&nbsp;<span id="sellerDetailsBtn">明细</span></a>
                        <a>试客&nbsp;&nbsp;累计提成：<i id="buyerSum">10</i> 金 &nbsp;&nbsp;<span id="buyerDetailsBtn">明细</span></a>
                    </li>
                </ul>
                <div class="unList">
                    <p>您还没有推荐过任何人哦，还不赶紧去邀请好友</p>
                </div>
                <div class="table-box">
                    <p class="recommend-header"><i></i> <a id="recommendBackBtn">返回</a></p>
                    <p class="seller-top">累计邀请商家 <span class="recommend-seller-count">1</span> 名,累计获得赏金 <span class="recommend-money">10</span> 金币，累计获得注册接单奖励
                        <span class="recommend-register-seller">15</span> 金币</p>
                    <p class="buyer-top">累计邀请试客 <span class="recommend-buyer-count">1</span> 名,累计获得赏金 <span class="recommend-money">15</span> 金币，累计获得注册接单奖励
                        <span class="recommend-register">20</span> 金币
                    </p>
                    <p class="explain-top">(奖励赏金在活动结束时结算，即在活动刚发布或接手时不产生奖励)</p>
                    <table class="userList" border="1" bordercolor="#ddd" style="border-collapse:collapse;">
                        <thead>
                        <tr>
                            <th class="recommend-name"></th>
                            <th>今日给我带来的赏金</th>
                            <th>累计给我带来的赏金</th>
                        </tr>
                        </thead>
                        <tbody id="userList"></tbody>
                    </table>
                </div>
            </div>
            <div id="pagingBar" style="display: none;">
                <ul id="pagination" class="pagination"></ul>
            </div>
            <div class="partOne">
                <img src="/saleterrace/images/rcdBanner.png" alt="">

                <div class="beFrom" style="float: left;">
                    <ul>
                        <li><img src="/saleterrace/images/seller.png" alt="" width="88" style="margin-top:12px"></li>
                        <li>1.5%+￥10</li>
                    </ul>
                    <h3>受邀人是商家</h3>
                    <p>推荐商家注册，他完成第一单活动，你就能获取<span>￥10</span>赏金作为奖励哦；以后他每发布一单活动并完成赏金支付，你都能获取<span>1.5%</span>赏金作为奖励哦。</p>
                </div>


            </div>
            <div class="partTwo">
                <h3>可通过固定链接邀请也可通过一键分享邀请</h3>
                <div class="myLink">
                    <p>我的推荐链接：</p>
                    <i id="linkText"></i>
                    <span id="copyLink">复制链接</span>
                </div>

                <!-- share Button BEGIN -->
                <div class="share">
                    <p>一键分享：</p>
                </div>

                <div class="bdsharebuttonbox" data-tag="share_2" style="float:left;height:40px;margin-top:-3px;">
                    <div class="sp">
                        <a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
                        <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                        <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                    </div>
                </div>

                <script>
                    window._bd_share_config = {
                        common: {
                            bdText: '试客多',
                            bdDesc: '我是试客多',
                            bdUrl: 'http://los8.youhui2014.com/faq/162036',
                            bdPic: ''
                        },
                        share: [{
                            "bdSize": 32
                        }]
                    }
                    with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion=' + ~(-new Date() / 36e5)];
                </script>
                <!-- share Button END -->
            </div>

            <p><span>温馨提示：</span>通过推荐链接或一键分享进入网站注册的人都计算在您的推荐人数内</p>
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
