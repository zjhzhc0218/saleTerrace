<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="shortcut icon" href="/asserts/images/favicon.ico" type="image/x-icon"/>
    <title>【试客多】-查看账单</title>

    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <script type="text/javascript"
            src="/asserts/js/vendor/jquery/jquery-1.10.2.js?rel=1539573213776"></script>
    <script type="text/javascript"
            src="/asserts/js/vendor/datepicker/WdatePicker.js?rel=1539573213776"></script>
    <script type="text/javascript" src="/asserts/js/common/common.js?rel=1539573213776"></script>
    <script type="text/javascript" src="/asserts/js/common/page.js?rel=1539573213776"></script>
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
    <script type="text/javascript"
            src="/asserts/js/vendor/jquery/jquery-1.10.2.js?rel=1539573213776"></script>
    <script type="text/javascript"
            src="/asserts/js/vendor/datepicker/WdatePicker.js?rel=1539573213776"></script>

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

    .floatLeft {
        float: left;
    }

    .zjjl_div {
        width: 1000px;
        background-color: #F8F8F8;
    }

    .zjjl_title {
        width: 980px;
        background-color: #ffffff;
        height: 50px;
        line-height: 50px;
        position: relative;
        top: 10px;
        border: 1px solid #F5F5F5;
    }

    .zjjl_title p {
        font-family: 微软雅黑;
        font-size: 18px;
        color: #1d1d26;
        margin-left: 20px;
    }

    .tabsDiv {
        width: 980px;
        margin-top: 20px;
    }

    .tabsDiv ul.tabs_ul {
        width: 500px;
        height: 51px;
        list-style: none;
        background-color: transparent;
    }

    .tabsDiv ul.tabs_ul li {
        float: left;
        cursor: pointer;
        text-align: center;
        width: 140px;
        height: 50px;
        line-height: 50px;
        font-family: 微软雅黑;
        font-size: 18px;
        border-style: solid;
        border-color: #EFF0F2;
        border-width: 1px 1px 0 1px;
        display: none;
    }

    .tabsDiv ul.tabs_ul li:hover {
        background-color: #08C7B5;
        color: #666666;
    }

    .tabsDiv div.content_div {
        width: 980px;
        clear: both;
    }

    .tabsSeletedLi {
        background-color: #5AC2E7;
        color: #ffffff;
    }

    .tabsUnSeletedLi {
        background-color: #ffffff;
        color: #1d1d26;
    }

    .tab_title {
        width: 978px;
        border: 1px solid #EFF0F2;
        background-color: #ffffff;
    }

    .datechooser {
        color: #1d1d26;
        font-size: 14px;
        font-family: 微软雅黑;
        height: 50px;
        line-height: 50px;
        padding-left: 20px;
        border-bottom: 1px solid #EFF0F2;
    }

    .date_input_text {
        width: 150px;
        height: 29px;
        border: 1px solid #E8E8E8;
        line-height: 29px;
        color: #1d1d26;
        margin-left: 10px;
        margin-right: 10px;
    }

    .options_ul {
        padding-left: 40px;
    }

    .options_ul li {
        float: left;
        list-style-type: none;
        margin-left: 5px;
        /*color: #7b8da0;*/
    }

    input.date_option_s {
        width: 66px;
        height: 27px;
        border: 0px;
        background-image: url("../asserts/images/zjjl/date_option_s.png");
        background-color: transparent;
        color: #384655;
        cursor: pointer;
    }

    input.date_option_l {
        width: 98px;
        height: 27px;
        border: 0px;
        background-image: url("../asserts/images/zjjl/date_option_l.png");
        color: #384655;
        cursor: pointer;
        background-color: transparent;
    }

    input.option_s {
        width: 66px;
        height: 20px;
        border: 0px;
        background-image: url("../asserts/images/zjjl/option_s.png");
        color: #384655;
        background-color: transparent;
        background-repeat: no-repeat;
        cursor: pointer;
    }

    input.option_l {
        width: 82px;
        height: 20px;
        border: 0px;
        background-image: url("../asserts/images/zjjl/option_l.png");
        color: #384655;
        background-color: transparent;
        cursor: pointer;
        background-repeat: no-repeat;
    }

    input.option_ll {
        width: 100px;
        height: 20px;
        border: 0px;
        background-image: url("../asserts/images/zjjl/option_ll.png");
        color: #384655;
        background-color: transparent;
        cursor: pointer;
        background-repeat: no-repeat;
    }

    ul.jylx_ul {
        clear: both;
        padding-left: 0px;
        margin-left: 12px;
        position: relative;
    }

    ul.jyzt_ul {
        clear: both;
        margin-left: -5px;
        padding-left: 0px;
        position: relative;
        top: -3px;
    }

    input.hide_chosen_button {
        background-image: none;
        background-color: transparent;
        color: #7b8da0;
    }

    .options_div {
        height: 50px;
        line-height: 50px;
    }

    .options_div > dl > dt {
        float: left;
    }

    .options_div > dl > dd {
        float: left;
    }

    .jyjl_table {
        border-spacing: 0px;
        border-collapse: collapse;
        background-color: #ffffff;
        width: 980px;
        margin-top: 10px;
    }

    .jyjl_table td {
        font-family: 微软雅黑;
        color: #7b8da0;
        height: 50px;
        text-align: left;
        border-width: 1px 0 1px 0;
        border-style: solid;
        border-color: #EFF0F4;
        padding-left: 20px;

    }

    .jyjl_table td.createTime_td {
        padding-left: 12px;
        line-height: 20px;
        font-size: 12px;
    }

    .jyjl_table td.type_td {
        padding-left: 30px;
        line-height: 20px;
        font-size: 12px;
    }

    .jyjl_table td.money_td {
        padding-left: 30px;
    }

    .jyjl_table .head_tr td {
        padding-left: 20px;
        font-size: 14px;
    }

    .minute_label, .lsh_label {
        color: #C0C0C0;
    }

    .je_label, .cg_label {
        color: #59c2e6;
        position: relative;
    }

    .detail_label {
        color: #59c2e6;
        text-decoration: none;
        font-family: 微软雅黑;
        font-size: 12px;
        font-weight: normal;
        cursor: pointer;
        position: relative;
    }

    .detail_label img {
        position: relative;
        top: -3px;
        left: 3px;
    }

    .fkz_label {
        color: #ff9c00;
        position: relative;
        top: 5px;
    }

    .sb_label {
        color: #ff0000;
        position: relative;
        top: 5px;
    }

    .paging {
        height: 50px;
        line-height: 50px;
        width: 980px;
        margin-top: 10px;
        background-color: #ffffff;
    }

    .number_button {
        width: 50px;
        height: 26px;
        border: 0px;
        background-color: transparent;
        cursor: pointer;
        color: #666666;
        font-size: 16px;
    }

    .number_button_chosen {
        background: rgb(218, 225, 232);
        color: #1d1d26;
    }

    .paging_button {
        width: 55px;
        height: 27px;
        border: 0px;
        background-image: url("../asserts/images/zjjl/paging_button.png");
        background-color: transparent;
        cursor: pointer;
        font-size: 16px;
        color: #ffffff;
    }

    #finalPage {
        margin-right: 10px;
    }

    .foot_div {
        width: 100%;
        height: 20px;
    }

    .txjl_div .options_div {
        height: 50px;
        line-height: 50px;
    }

    .txjl_div .jylx_ul {
        top: 0px;
    }

    .txjl_div .jylx_ul li {
        margin-left: 20px;
    }

    .txjl_div .jyzt_ul {
        top: 0px;
        clear: none;
        left: 70px;
    }

    .txjl_div .jyzt_ul li {
        margin-left: 20px;
    }

    .jyjl_table .operation_td a {
        margin-left: 0px;
    }

    #user_menu .exit_button_cd {
        margin-top: 0px !important;
    }

    .left_menu img {
        position: relative;
        top: 8px;
    }

    .jyjl_ul {
        overflow: hidden;
        background-color: #fff;
        height: 50px;
        border-bottom: 1px solid #EFF0F4;
        width: 100%;
    }

    .jyjl_ul li {
        float: left;
        display: table-cell;
        color: #7b8da0;
    }

    .wd27 {
        width: 20%;
    }

    .wd28 {
        width: 28%;
    }

    .wd33 {
        width: 33%;
    }

    .wd26 {
        width: 26%;
    }

    .trade_info {
        display: none;
        text-align: center;
        width: 100%;
        margin: 20px auto 30px auto;
        border: 1px solid #EFF0F4;
        overflow: hidden;
        background-color: #fff;
    }

    .trade_info_head {
        border-bottom: 1px solid #EFF0F4;
        overflow: hidden;
        line-height: 50px;
    }

    .trade_info_head, .trade_info_value {
        background-color: #fff;
        height: 50px;

        text-align: left;
    }

    .trade_info_head li, .trade_info_value li {
        float: left;
        font-size: 14px;
        width: 20%;
        color: #C0C0C0;
    }

    .trade_info_value, .trade_info_head {
        padding-left: 10px;
    }

    .trade_info_value li {
        font-size: 12px;
    }

    .pdl12 {
        padding-left: 12px;
    }

    .height50 {
        height: 50px;
        line-height: 50px;
    }

    .mgt5 {
        margin-top: 5px;
    }

    .clC0C0C0 {
        color: #C0C0C0;
    }

    .hide {
        display: none;
    }

    .show {
        display: block;
    }

    .search_button {
        width: 80px;
        height: 29px;
        border: 1px solid #E8E8E8;
        background-color: #5AC2E7;
        color: #ffffff;
        margin-left: 10px;
        cursor: pointer;
    }

    .options_div dl.dl_two dd {
        overflow: hidden;
        -ms-text-overflow: ellipsis;
        text-overflow: ellipsis;
        white-space: nowrap;
        width: 100px;
        float: left;
    }

    .options_div dl.dl_two dd i, .options_div dl.dl_two dt i {
        width: 12px;
        height: 10px;
        border: 1px solid #333;
        border-radius: 3px;
        float: left;
        margin: 19px 8px 0 0;
    }

    .options_div dl.dl_two dd i.current, .options_div dl.dl_two dt i.current {
        background: url(/asserts/images/fbrw/dt_icon_point.png) no-repeat 1px 0;
    }

    .options_div dl dd label {
        cursor: pointer;
    }

    .moneyBgA {
        color: #ff3300;
    }

    .moneyBgS {
        color: #008800;
    }
</style>

<body>


<link rel="stylesheet" type="text/css"
      href="/asserts/css/top.css?rel=1539573213879"/>
<script type="text/javascript" src="/asserts/js/vendor/jquery-first-event.js?rel=1539573213880"></script>
<script type="text/javascript"
        src="/asserts/js/common/store+json2.min.js?rel=1539573213880"></script>
<script type="text/javascript"
        src="/asserts/js/common/store.expire.js?rel=1539573213880"></script>
<script type="text/javascript" src="/asserts/js/common/top.js?rel=1539573213880"></script>
<script type="text/javascript" src="/asserts/js/dist/viewer.js?rel=1539573213880"></script>
<link rel="stylesheet" type="text/css" href="/asserts/js/dist//viewer.css?rel=1539573213879"/>

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
        background: url(/asserts/images/gou.png) no-repeat center;
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
    <img class="sTongZhi" src="" alt="" style="display: block; width: 100%; height: 51px;">
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
                <img src="/asserts/images/menu_select_icon.png" alt=""
                     class="pos-menu-select">
                <p

                        class="user-name"


                >
                    15355056891
                </p>
                <p class="user-tag" style="text-align: center; line-height:normal;">


                    VIP


                    4
                    天试用中


                </p>
            </a>


            </a>

            <ul class="menu-select-box">
                <li style="background-color: #f3f3f3; padding-left: 20px">
                    货款：<b class="clfdaa29" id="top_user_money"></b>元
                    &nbsp;&nbsp;&nbsp;
                    金币：<b class="clfdaa29" id="top_user_coin"></b>个

                </li>
                <li style="padding-left: 20px; clear: both;">
                    <a href="/saleterrace/zjgl_index?tab=2" class="cl000 menu-select-a">充值</a>
                    <a href="/saleterrace/zjgl_index?tab=3" class="cl000 menu-select-a">提现</a>


                    <a href="/seller/orderVip.htm" target="_blank" class="menu-select-myCenter">缴纳保证金</a>


                </li>
            </ul>
        </li>
        <li><a href="javascript:logout();" class="cl01b76c">退出登陆
        </a></li>

    </ul>
    <input type="hidden" id="exam" value="0">

</div>

<div class="right-menu">
    <a href="javascript:void(0);" id="offKfqq">
        <img src="/asserts/images/colsed-kfqq.png" alt="">
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
        <img class="bg-img" src="/asserts/images/kfqq.png" alt="">
        <div class="right-menu-content">
            <a href="/seller/publish/publish_mission.htm">
                <img src="/asserts/images/sjscfd.png" class="right-menu-content-top-img" alt="">
            </a>

            <span class="menuTitleTwo">客服问题找我</span>
            <div class="right-menu-two">
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852368872">
                    <img src="/asserts/images/yckf_03.png" alt="">
                    宝宝
                </a>
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852365086">
                    <img src="/asserts/images/yckf_03.png" alt="">
                    贝贝
                </a>
            </div>

            <span class="menuTitleOne">活动发布找我</span>
            <div class="right-menu-one">
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852368900">
                    &nbsp;&nbsp;&nbsp;<img src="/asserts/images/yckf_03.png" alt="">
                    高经理
                </a>
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852356150">
                    <img src="/asserts/images/yckf_03.png" alt="">
                    安娜老师
                </a>

                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852365085">
                    <img src="/asserts/images/yckf_03.png" alt="">
                    周华老师
                </a>
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852366295">
                    <img src="/asserts/images/yckf_03.png" alt="">
                    毛经理
                </a>
            </div>
            <span class="menuTitleOne">上班时间</span>
            <div class="right-menu-one">
                <p style="font-size: 12px;">
                    周一至周日
                    <br>
                    9:00-18:00
                </p>
            </div>
        </div>
        <div class="right-menu-content" style="padding-top: 0px;margin-top: 2px;">
            <span>商家交流群</span>
            <div class="right-menu-two">
                <img src="" class="QRCode" style="width: 105px;">
            </div>
            <a class="clickAdd" target="_blank"
               href="//shang.qq.com/wpa/qunwpa?idkey=96519ab8b4c99204d736e67685b5354a45c8fbeae3a38df059a1ef4bd8f53575">点击加入</a>
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
            '<a href="/seller/jnbzj_index.ftl" target="_blank" style="background-color: #5AC2E7;padding: 9px 31px;float: left;margin-top: 48px;margin-left: 132px;color: #fff;border-radius: 5px;font-size: 16px;">去缴纳保证金</a>' +
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


        <link rel="stylesheet" type="text/css"
              href="/asserts/css/layout.css?rel=1539573213877"/>
        <link rel="stylesheet" type="text/css"
              href="/asserts/css/header.css?rel=1539573213877"/>
    </div>
    <div id="Content-Space-h"></div>
    <div id="Content">
        <div id="Content-Left">


            <link rel="stylesheet" type="text/css" href="/asserts/css/navigator.css?rel=1539573213878"/>

            <ul class="left_menu" style="margin-bottom: 10px;">
                <li class="menu_selected" href="/seller/index.htm">
                    <i class="grxx"></i>
                    <span>用户中心</span>
                    <p></p>
                </li>
                <li href="/seller/bindStore.htm?rt=n">
                    <i class="dpbt"></i>
                    <span>店铺管理</span>
                </li>
                <li href="/seller/publish/publish_mission.htm">
                    <i class="fbrw"></i>
                    <span>试用活动发布</span>
                </li>
                <li href="/seller/zrwlb.htm">
                    <i class="yfbrw"></i>
                    <span>试用活动管理</span>
                </li>


                <li href="/seller/blacklist/index.htm">
                    <i class="hmd"></i>
                    <span>试客黑名单</span>
                    <div class="new" style="left:90px;"></div>
                </li>

                <li href="/account/accounthistory.htm">
                    <i class="ckzd"></i>
                    <span>查看账单</span>
                </li>
                <li href="/account/accountmanage.htm">
                    <i class="zjgl"></i>
                    <span>资金管理</span>
                </li>
                <li href="/seller/seller_tariff_description.htm">
                    <i class="ckzz"></i>
                    <span>平台资费说明</span>
                </li>


                <li href="/account/recommendPage.htm">
                    <i class="rcd"></i>
                    <img src="/asserts/images/hot.gif" alt="" style="position: relative;top: -2px;left: 5px;">
                    <span>推荐赚金币</span>
                </li>


                <li href="/popular/popular.htm?pg=task.pcFlow" target="_blank">
                    <i class="i16_brq"></i>
                    <span>补人气</span>

                </li>

                <li>
                    <a href="http://www.chapaiming.com/" target="_blank"
                       style="overflow:hidden;display:block;margin:0;">
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
                    <a href="/seller/seller_protocol.htm" target="_blank"
                       style="overflow:hidden;display:block;margin:0;">
                        <i class="i16_protocol"></i>
                        <span>商家电子协议</span>

                    </a>
                </li>
            </ul>
            <a class="sLeftImgJump" target="_blank" style="float: left; margin: 10px 0 0 0;">
                <img class="sLeft " src="/asserts/images/lwds.jpg" alt="" style="width: 190px; height: 62px;">
            </a>
            <input type="hidden" id="nav_hidden" value="1"/>


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
            <div class="zjjl_div" align="center">
                <div class="zjjl_title" align="left"><p>资金记录</p></div>
                <div id="zjjl_tabs" style="visibility:hidden ;" align="left">
                    <ul class="tabs_ul">
                        <li>交易记录</li>
                    </ul>
                    <div style="float: right;margin-top: -35px;margin-right: 20px;">
                        <input type="button" id="export" class="search_button" onclick="exportExcel()" value="导出账单">
                    </div>
                    <div class="content_div">
                        <div class="tab_title">
                            <div class="datechooser">
                                <form id="findCondition" action="ckzd_index.ftl">
                                    <div class="floatLeft">起止日期：<input name="startTime" id="dateStart" type="text"
                                                                       value=""
                                                                       class="date_input_text">
                                        到<input name="endTime" id="dateEnd" type="text" class="date_input_text"
                                                value=""></div>
                                    <input id="payTpyeId" type="hidden" name="payType"
                                           value=""/>
                                    <input id="timeTypeId" type="hidden" name="timeType"
                                           value="LAST_MONTH"/>
                                    <input id="pageId" type="hidden" name="page.page"
                                           value="1"/>
                                    <input id="childTaskNum" type="hidden" name="childTaskNum" value=""/>

                                    <input id="transactionTypes" type="hidden" name="transactionTypes"
                                           value="BANK_CARD,INNER_CHANGE,INNER_CHANGE_TASK,BANK_CARD_RECHARGE,INNER_CHANGE_RECHARGE_BKKK,INNER_CHANGE_YU_E_JIN_BI,INNER_CHANGE_JIN_BI_YU_E,BANK_CARD_TI_XIAN,INNER_CHANGE_RETURN,INNER_CHANGE_FIRST_GIFT,INNER_CHANGE_SYSTEM,INNER_CHANGE_HBS,INNER_CHANGE_OTHER,INNER_CHANGE_RECOMMEND,INNER_CHANGE_VIP_RECHARGE_BKKK">
                                </form>
                                <ul class="options_ul floatLeft">

                                    <li><input type="button" value="今天" class="option_button date_option_s
								
									hide_chosen_button
								
							"

                                               onclick="findSomeDateResult('TODAY')"

                                    ></li>
                                    <li><input type="button" value="昨天" class="option_button date_option_s
								
									hide_chosen_button
								
							"

                                               onclick="findSomeDateResult('YESTERDAY')"

                                    ></li>
                                    <li><input type="button" value="最近一个月" class="option_button date_option_l
								
							 "

                                    ></li>
                                    <li><input type="button" value="全部" class="option_button date_option_s
								
									hide_chosen_button
								
							"

                                               onclick="findSomeDateResult('ALL')"

                                    ></li>
                                </ul>
                            </div>
                            <div class="options_div">
                                <dl class="dl_two">
                                    <dt style="width: 60px;margin-left: 20px;">
                                        <label class="showChildClick">交易类型:</label>
                                    </dt>
                                    <dd style="width:60px;">
                                        <i class="current" groupId="INNER_CHANGE_TASK">
                                            <span name="catColumn" groupId="INNER_CHANGE_TASK" value="INNER_CHANGE_TASK"
                                                  id="INNER_CHANGE_TASK"/>
                                        </i>
                                        <label class="mColumn" for="INNER_CHANGE_TASK">活动</label>
                                    </dd>
                                    <dd style="width:80px;">
                                        <i class="current" groupId="INNER_CHANGE_RECOMMEND">
                                            <span name="catColumn" groupId="INNER_CHANGE_RECOMMEND"
                                                  value="INNER_CHANGE_RECOMMEND" id="INNER_CHANGE_RECOMMEND"/>
                                        </i>
                                        <label class="mColumn" for="INNER_CHANGE_RECOMMEND">推荐奖励</label>
                                    </dd>
                                    <dd style="width:60px;">
                                        <i class="current" groupId="BANK_CARD_RECHARGE">
                                            <span name="catColumn" groupId="BANK_CARD_RECHARGE"
                                                  value="BANK_CARD_RECHARGE,INNER_CHANGE_RECHARGE_BKKK"
                                                  id="BANK_CARD_RECHARGE"/>
                                        </i>
                                        <label class="mColumn" for="BANK_CARD_RECHARGE">充值</label>
                                    </dd>
                                    <dd style="width:90px;">
                                        <i class="current" groupId="INNER_CHANGE_YU_E_JIN_BI">
                                            <span name="catColumn" groupId="INNER_CHANGE_YU_E_JIN_BI"
                                                  value="INNER_CHANGE_YU_E_JIN_BI" id="INNER_CHANGE_YU_E_JIN_BI"/>
                                        </i>
                                        <label class="mColumn" for="INNER_CHANGE_YU_E_JIN_BI">货款转金币</label>
                                    </dd>
                                    <dd style="width:90px;">
                                        <i class="current" groupId="INNER_CHANGE_JIN_BI_YU_E">
                                            <span name="catColumn" groupId="INNER_CHANGE_JIN_BI_YU_E"
                                                  value="INNER_CHANGE_JIN_BI_YU_E" id="INNER_CHANGE_JIN_BI_YU_E"/>
                                        </i>
                                        <label class="mColumn" for="INNER_CHANGE_JIN_BI_YU_E">金币转货款</label>
                                    </dd>
                                    <dd style="width:60px;">
                                        <i class="current" groupId="BANK_CARD_TI_XIAN">
                                            <span name="catColumn" groupId="BANK_CARD_TI_XIAN"
                                                  value="BANK_CARD_TI_XIAN,INNER_CHANGE_RETURN" id="BANK_CARD_TI_XIAN"/>
                                        </i>
                                        <label class="mColumn" for="BANK_CARD_TI_XIAN">提现</label>
                                    </dd>
                                    <dd style="width:90px;">
                                        <i class="current" groupId="INNER_CHANGE_HBS">
                                            <span name="catColumn" groupId="INNER_CHANGE_HBS" value="INNER_CHANGE_HBS"
                                                  id="INNER_CHANGE_HBS"/>
                                        </i>
                                        <label class="mColumn" for="INNER_CHANGE_HBS">好帮手赏金</label>
                                    </dd>
                                    <dd style="width:80px;">
                                        <i class="current" groupId="INNER_CHANGE_FIRST_GIFT">
                                            <span name="catColumn" groupId="INNER_CHANGE_FIRST_GIFT"
                                                  value="INNER_CHANGE_FIRST_GIFT" id="INNER_CHANGE_FIRST_GIFT"/>
                                        </i>
                                        <label class="mColumn" for="INNER_CHANGE_FIRST_GIFT">首单赠送</label>
                                    </dd>
                                    <dd style="width:90px;">
                                        <i class="current" groupId="INNER_CHANGE_SYSTEM">
                                            <span name="catColumn" groupId="INNER_CHANGE_SYSTEM"
                                                  value="INNER_CHANGE_SYSTEM" id="INNER_CHANGE_SYSTEM"/>
                                        </i>
                                        <label class="mColumn" for="INNER_CHANGE_SYSTEM">系统加减款</label>
                                    </dd>
                                    <dd style="width:80px;">
                                        <i class="current" groupId="INNER_CHANGE_VIP_RECHARGE_BKKK">
                                            <span name="catColumn" groupId="INNER_CHANGE_VIP_RECHARGE_BKKK"
                                                  value="INNER_CHANGE_VIP_RECHARGE_BKKK"
                                                  id="INNER_CHANGE_VIP_RECHARGE_BKKK"/>
                                        </i>
                                        <label class="mColumn" for="INNER_CHANGE_SYSTEM">保证金充值</label>
                                    </dd>
                                    <dd style="width:80px;">
                                        <i class="current" groupId="INNER_CHANGE_OTHER">
                                            <span name="catColumn" groupId="INNER_CHANGE_OTHER"
                                                  value="INNER_CHANGE_OTHER" id="INNER_CHANGE_OTHER"/>
                                        </i>
                                        <label class="mColumn" for="INNER_CHANGE_SYSTEM">其他</label>
                                    </dd>
                                </dl>
                            </div>
                            <div class="options_div">
                                <span style="margin-left: 15px;">子活动编号：</span>
                                <input type="text" id="_ctaskno" class="date_input_text" value="" style="width: 250px;">
                                <input type="button" class="search_button" onclick="searchTask();" value="搜索">
                            </div>
                            <span style="margin-left: 15px;font-size: 15px;color: red;">平台账单以活动编号的形式展现，需要对账请直接输入子活动编号搜索，查询该活动相关的资金信息</span>
                        </div>

                        <div class="tab_title" style="margin-top: 5px;">
                            <div class="options_div" style="height: 80px;line-height: 20px;">
                                <span style="margin-left: 15px;">
                                
                                
                                
                                
                                
                                    最近一个月
                                
                                
                                    的交易汇总
                                </span>
                                <ul class="options_ul jylx_ul">
                                    <li class="hidden" style="display:block;">
                                        <span>活动：</span>货款


                                        <span>0</span>

                                        ,
                                        金币


                                        <span>0</span>

                                        。
                                    </li>
                                    <li class="hidden" style="display:block;">
                                        <span>推荐奖励：</span>货款


                                        <span>0</span>

                                        ,
                                        金币


                                        <span>0</span>

                                        。
                                    </li>
                                    <li class="hidden" style="display:block;">
                                        <span>充值：</span>货款


                                        <span>0</span>

                                        ,
                                        金币


                                        <span>0</span>

                                        。
                                    </li>
                                    <li class="hidden" style="display:block;">
                                        <span>货款转金币：</span>
                                        货款


                                        <span>0</span>

                                        ,
                                        金币


                                        <span>0</span>

                                        。
                                    </li>
                                    <li class="hidden" style="display:block;">
                                        <span>金币转货款：</span>
                                        货款


                                        <span>0</span>

                                        ,
                                        金币


                                        <span>0</span>

                                        。
                                    </li>
                                    <li class="hidden" style="display:block;">
                                        <span>提现：</span>
                                        货款


                                        <span>0</span>

                                        ,
                                        金币


                                        <span>0</span>

                                        。
                                    </li>
                                    <li class="hidden" style="display:block;">
                                        <span>好帮手赏金：</span>
                                        金币


                                        <span>0</span>

                                        。
                                    </li>
                                    <li class="hidden" style="display:block;">
                                        <span>首单赠送：</span>
                                        金币


                                        <span>0</span>

                                        。
                                    </li>
                                    <li class="hidden" style="display:block;">
                                        <span>系统加减款：</span>
                                        货款


                                        <span>0</span>

                                        ,
                                        金币


                                        <span>0</span>

                                        。
                                    </li>
                                    <li class="hidden">
                                        <span>保证金充值：</span>
                                        货款


                                        <span>0</span>

                                        。
                                    </li>
                                    <li class="hidden" style="display:block;">
                                        <span>其他：</span>
                                        货款


                                        <span>0</span>

                                        ,
                                        金币


                                        <span>0</span>

                                        。
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <table class="jyjl_table">
                            <tr class="head_tr">
                                <td style="width: 185px;">交易时间</td>
                                <td style="width: 305px;">交易类型</td>
                                <td style="width: 190px;">交易金额</td>
                                <td style="width: 90px;">状态</td>
                                <td style="padding-left: 5px;">操作</td>
                            </tr>
                        </table>

                        <div class="paging" align="right">
                            <input type="button" class="paging_button" id="firstPage" value="首页" onclick="go(1)"/>
                            <input type="button" class="paging_button" id="lastPage" value="上页"

                            />


                            <input type="button" class="paging_button" id="nextPage" value="下页"

                            />
                            <input type="button" class="paging_button" id="finalPage" value="尾页"
                                   onclick="go(0)"/>
                        </div>
                        <!-- <div class="foot_div"></div> -->
                    </div>
                </div>
            </div>
            <!-- center end -->
        </div>
    </div>
    <div id="Content-Space-h"></div>
    <div class="Clear"><!--如何你上面用到float,下面布局开始前最好清除一下。--></div>
    <div id="Footer">

        <link rel="stylesheet" type="text/css"
              href="/asserts/css/footer.css?rel=1539573213876"/>
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
    $(function () {
        (function ($) {
            $.fn.tabs = function (options) {
                var defualts = {switchingMode: "click"};
                var opts = $.extend({}, defualts, options);
                var obj = $(this);
                var clickIndex = 0;
                obj.addClass("tabsDiv");
                $(".tabs_ul li:first", obj).addClass("tabsSeletedLi");
                $(".tabs_ul li:first", obj).css("border-right", "0px");
                $(".tabs_ul li", obj).not(":first").addClass("tabsUnSeletedLi");
                $(".content_div", obj).not(":first").hide();
                $(".tabs_ul li", obj).css("display", "block");
                $(".tabs_ul li", obj).bind(opts.switchingMode, function () {
// 					if (clickIndex != $("ul li", obj).index($(this))) { 
// 						clickIndex = $("ul li", obj).index($(this)); 
// 						$(".tabsSeletedLi", obj).removeClass("tabsSeletedLi").addClass("tabsUnSeletedLi"); 
// 						$(this).removeClass("tabsUnSeletedLi").addClass("tabsSeletedLi"); 
// 						$(".content_div", obj).hide();
// 						$(".content_div", obj).eq(clickIndex).show(); 
// 					}; 
                    clickIndex = $("ul li", obj).index($(this));
                    if (clickIndex == 1) {
                        location.href = "withdrawhistory.htm"
                    }
                });
            };
        })(jQuery);
        //------------执行方法
        $("#zjjl_tabs").tabs();
        $("#zjjl_tabs").css("visibility", "visible")
        $(".option_button").click(function () {
            if ($(this).attr("class").indexOf("hide_chosen_button") > 0) {
                $(this).parent().parent().find(".option_button").addClass("hide_chosen_button");
                $(this).removeClass("hide_chosen_button");
            }
        });
        $(".number_button").click(function () {
            $(".number_button").removeClass("number_button_chosen");
            $(this).addClass("number_button_chosen");
        });
    });

    $("#dateStart").click(function () {
        WdatePicker({
            readOnly: true,
            dateFmt: 'yyyy-MM-dd HH:mm:ss',
            maxDate: '#F{$dp.$D(\'dateEnd\',{d:0});}',
            onpicked: function () {
                /*findByDate()*/
            }
        });
    });

    $("#dateEnd").click(function () {
        WdatePicker({
            readOnly: true,
            dateFmt: 'yyyy-MM-dd HH:mm:ss',
            minDate: '#F{$dp.$D(\'dateStart\',{d:0});}',
            onpicked: function () {
                /*findByDate()*/
            }
        });
    });
    $(".nextDetailBtn").click(function () {
        if ($(this).parent().parent().next().css("display") == "none") {
            $(".nextDetailBtn").parent().parent().next().hide();
            $(this).parent().parent().next().show();
        } else {
            $(this).parent().parent().next().hide();
        }
    });

    function findResult(payType) {
        $("#payTpyeId").val(payType)
        $("#pageId").val(1)
        submitForm();
    }

    function submitForm() {
        $('input, textarea').each(function () {
            $(this).val(jQuery.trim($(this).val()));
        });
        $("#findCondition").submit();
    }

    function searchTask() {
        $("#pageId").val(1);
        var ctno = $("#_ctaskno").val();
        $("#childTaskNum").val(ctno);
        submitForm();
    }

    function exportExcel() {
        $("#export").attr("disabled", "disabled");
        var ctno = $("#_ctaskno").val();
        $("#childTaskNum").val(ctno);
        $('input, textarea').each(function () {
            $(this).val(jQuery.trim($(this).val()));
        });
        var params = $("#findCondition").serialize();
        window.open("/account/exportAccountHistory.htm?" + params);
        $("#export").removeAttr("disabled");
    }

    function findSomeDateResult(payType) {
        //  $("#pageId").val(1)
        $("#timeTypeId").val(payType)
        $("#dateStart,#dateEnd").val("")
        //submitForm();
    }

    function go(page) {
        $("#pageId").val(page)
        submitForm();
    }

    function findByDate() {
        if ($("#dateStart").val() && $("#dateStart").val()) {
            $("#pageId").val(1)
            submitForm();
        }
    }

    function init() {
        $("#Content").height($(".zjjl_div").height() + 40);
        headerStyle(1);
        var type = $("#nav_hidden").val();
        if (type == 1) {
            navigatorStyle(5);
        } else if (type == 2) {
            navigatorStyle(6);
        }
    }

    /*复选点击事件*/
    $(".dl_two dd i").on("click", function () {
        if ($(this).attr("disabled") != "disabled") {
            if ($(this).hasClass("current")) {
                if ($("dd i.current", $(this).parent("dd").parent(".dl_two")).size() <= 1) {
                    alert("最少选择一个交易类型。");
                } else {
                    $(this).removeClass("current");
                }
            } else {
                $(this).addClass("current");
            }
        }
        transactionTypes();
        return false;
    });
    $(".mColumn").on("click", function () {
        if ($(this).prev("i").attr("disabled") != "disabled") {
            if ($(this).prev("i").hasClass("current")) {
                if ($("dd i.current", $(this).parent("dd").parent(".dl_two")).size() <= 1) {
                    //提示
                    alert("最少选择一个交易类型。");
                } else {
                    $(this).prev("i").removeClass("current");
//                $("dt i",$(this).parent("dd").parent(".dl_two")).removeClass("current");
                }
            } else {
                $(this).prev("i").addClass("current");
            }
        }
        transactionTypes();
        return false;
    });

    function transactionTypes() {
        var transactionTypes = "";
        $("dd i.current span", $(".dl_two")).each(function (i) {
            if (i == 0) {
                transactionTypes = $(this).attr("value");
            } else {
                transactionTypes = transactionTypes + "," + $(this).attr("value");
            }
        });
        $("#transactionTypes").val(transactionTypes);
    }
</script>
</html>
