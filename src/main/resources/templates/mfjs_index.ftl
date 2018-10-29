<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="shortcut icon" href="/asserts/images/favicon.ico" type="image/x-icon"/>
    <title>【试客多】-查看账单</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">


    <link rel="stylesheet" href="/asserts/css/seller/seller_explain.css?rel=1540198807993">
    <link rel="stylesheet" type="text/css" href="/asserts/css/top.css?rel=1540198807881"/>
    <link rel="stylesheet" type="text/css" href="/asserts/js/dist//viewer.css?rel=1540198807881" />
</head>
<body>



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

    <a href="/seller/index.htm">
        <div class="logo"></div>
    </a>





























    <div class="qun_for_seller qun_tip">
        <a href="//shang.qq.com/wpa/qunwpa?idkey=96519ab8b4c99204d736e67685b5354a45c8fbeae3a38df059a1ef4bd8f53575" target="_blank">活动交流群：540995352</a>
    </div>


    <ul class="LR_USER">
        <li class="pos-rel menu-box">







            <a href="#" class="menu-select-icon">
                <img src="/asserts/images/menu_select_icon.png" alt=""
                     class="pos-menu-select">
                <p


                        class="user-name2"

                >
                    15355056891
                </p>
                <p class="user-tag"  style="text-align: center; line-height:normal;">



                    缴纳保证金获取权限


                </p>
            </a>




            </a>

            <ul class="menu-select-box">
                <li style="background-color: #f3f3f3; padding-left: 20px">
                    货款：<b class="clfdaa29" id="top_user_money"></b>元
                    &nbsp;&nbsp;&nbsp;
                    金币：<b class="clfdaa29" id="top_user_coin"></b>个

                </li>
                <li style="padding-left: 20px; clear: both;" >
                    <a href="/account/accountmanage.htm?tab=2" class="cl000 menu-select-a">充值</a>
                    <a href="/account/accountmanage.htm?tab=3" class="cl000 menu-select-a">提现</a>





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
            <a href="/seller/publish/publish_mission.htm" >
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
            <span >商家交流群</span>
            <div class="right-menu-two">
                <img src="" class="QRCode" style="width: 105px;">
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
<input type="hidden" id="currentDate" value="20181026">
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


<div id="Container" align="center">
    <div id="Header">




        <link rel="stylesheet" type="text/css"
              href="/asserts/css/layout.css?rel=1540198807877"/>
        <link rel="stylesheet" type="text/css"
              href="/asserts/css/header.css?rel=1540198807877"/>
    </div>
    <div class="Content-Space-h"></div>
    <div id="Content">
        <div id="Content-Left">




            <link rel="stylesheet" type="text/css" href="/asserts/css/navigator.css?rel=1540198807879" />

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
                    <a href="/seller/seller_protocol.htm" target="_blank" style="overflow:hidden;display:block;margin:0;">
                        <i class="i16_protocol"></i>
                        <span>商家电子协议</span>

                    </a>
                </li>
            </ul>
            <a class="sLeftImgJump" target="_blank" style="float: left; margin: 10px 0 0 0;">
                <img class="sLeft " src="/asserts/images/lwds.jpg" alt="" style="width: 190px; height: 62px;">
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
        <div id="Content-Main">










            <div class="picBox">
                <h2 class="picTitle">平台优势</h2>

                <ul class="seller-faq-top">
                    <li>
                        <div style="margin-bottom: 26px">
                            <img src="/asserts/images/i98_huabei.png" alt="">
                            <p class="title-small cl42b369">独创花呗大号认证</p>
                            <p class="cl42b369">试客更优质</p>
                        </div>
                        <p class="cl42b369">手持身份证认证，保证试客真实可靠</p>
                        <p class="cl42b369">独创花呗大号认证，大号补单权重更高更安全</p>
                        <p class="cl42b369">所有试客均经过考试上岗</p>
                    </li>
                    <li class="even">
                        <div>
                            <img src="/asserts/images/i98_biaoqian.png" alt="">
                            <p class="title-small cl70cbf7">独创试客标签体系</p>
                            <p class="cl70cbf7">活动更安全</p>
                        </div>
                        <p class="cl70cbf7">多类型活动自由选择</p>
                        <p class="cl70cbf7">（搜索、预售、复购、淘口令、聚划算、微博等）</p>
                        <p class="cl70cbf7">独创试客标签体系（年龄、性别、地域、购物喜好等），</p>
                        <p class="cl70cbf7">满足千人千面，活动全程无死角程截图</p>
                    </li>
                </ul>
                <ul class="seller-faq-top">
                    <li style="height: 149px">
                        <div>
                            <img src="/asserts/images/i98_peifu.png" alt="">
                            <p class="title-small clfca06f">100%赔付</p>
                            <p class="clfca06f">资金有保障</p>
                        </div>
                        <p class="clfca06f">试客退款100%赔付</p>

                    </li>
                    <li class="even">
                        <div>
                            <img src="/asserts/images/i98_fuwu.png" alt="">
                            <p class="title-small clff3f51">7*24小时紧急情况响应</p>
                            <p class="clff3f51">服务更周到</p>
                        </div>
                        <p class="clff3f51">客服小妹6*12小时在线服务</p>
                        <p class="clff3f51">平台负责人7*24小时紧急情况响应</p>
                    </li>
                </ul>
            </div>
            <div class="faqLink">

                <a  href="/seller/publish/publish_mission.htm" class="a1">马上去放单</a>


                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852368900" class="a2">先咨询看看</a>
            </div>

            <!-- center begin -->
            <div class="zjjl_div">
                <div class="zjjl_title" align="left" id="coin">
                    <p>收费及资金安全的问题</p>
                </div>
                <div class="text">
                    <h2>1、试客多平台如何收费的？</h2>
                    <ul>

                        <li>a)&nbsp;&nbsp;发单赏金明细，<a href="/seller/seller_tariff_description.htm">请点击查看收费明细</a></li>
                    </ul>
                    <h2>2、充值到平台上的资金是否安全？</h2>
                    <ul>
                        <li>平台运转以来，从无发生让商家货款本金损失的事件。相反，平台还会全额赔付因试客退款所发生的资金损失。</li>
                    </ul>
                    <h2>3、什么是货款？什么是金币？ </h2>
                    <ul>
                        <li>a)&nbsp;&nbsp;平台分为货款账户和金币账户</li>
                        <li>b)&nbsp;&nbsp;货款主要用于货款押金，押金不足无法放单，可充值，可提现</li>
                        <li>c)&nbsp;&nbsp;金币做为放单时结算赏金使用，金币不足也无法放单，可充值，可余额转金币，不可提现！</li>
                    </ul>
                </div>
            </div>
            <div class="zjjl_div">
                <div class="zjjl_title">
                    <p>补单安全相关的问题</p>
                </div>
                <div class="text">
                    <h2>1、试客多平台如何确保商家安全？</h2>
                    <ul>
                        <li>没有活动一家平台可以确保补单的安全，但是我们可以保证商家资金安全、并且从多方面尽量提高补单的安全性：</li>
                        <li>a)&nbsp;&nbsp;<span>资金安全保障</span>：商家在试客多平台放单，如果遇到试客退款等情况，平台全额赔付。</li>
                        <li>b)&nbsp;&nbsp;<span>买号质量保障</span>：平台对每一个试客进行考试认证和实名身份认证，控制每个号的接单量。</li>
                        <li>c)&nbsp;&nbsp;<span>买号操作流程监控</span>：商家可在平台查看试客每步操作的日志，全程截图留底。</li>
                        <li>d)&nbsp;&nbsp;<span>活动增值服务多样</span>：可以选择买号信用等级、评价文案和图片、追评、活动完成时间、活动发布间隔等等。</li>
                    </ul>
                    <h2>2、试客多平台如何控制试客的接单量？</h2>
                    <ul>
                        <li>试客多的试客全部为实名认证试客，都经过手持身份证实名认证。同时，试客接单前都经过新手考试和培训。对接单量控制如下：</li>
                        <li>a)&nbsp;&nbsp;一个手机号只能注册一个账号，且只能对应一个身份证</li>
                        <li>b)&nbsp;&nbsp;同一个账号30天内最多只能在一个商家接1单</li>
                        <li>c)&nbsp;&nbsp;等级越低账号日接单量越少，2-3心账号周接单量不超过15单</li>
                    </ul>
                    <h2>3、平台上的小号安全吗？会不会有黑号？</h2>
                    <ul>
                        <li>试客多平台的买号大多是试客自己的大号、主号，应该黑号的概率较低。</li>
                        <li>a)&nbsp;&nbsp;试客多所有账号都是真实手机注册，需要手机验证，并且还需提供由专人发放的邀请码才能成功注册</li>
                        <li>b)&nbsp;&nbsp;每个账号下的旺旺号都有严格的人工审核过程，保证旺旺号都是实名认证且注册满两月以上。</li>
                        <li>c)&nbsp;&nbsp;每个试客要经过考试，才能接单。</li>
                    </ul>
                </div>
            </div>
            <div class="zjjl_div">
                <div class="zjjl_title">
                    <p>补单业务方式的问题</p>
                </div>
                <div class="text">
                    <h2>1、试客多平台是不是深度试用活动？</h2>
                    <ul>
                        <li>对的，是深度试用活动。商家可以在平台个性化的选择补单要求，包含货比三家、浏览见底、评价浏览、旺旺聊天等等。</li>
                        <li>a)&nbsp;&nbsp;<span>货比三家</span>：查看活动宝贝附近的任意3个宝贝。</li>
                        <li>b)&nbsp;&nbsp;<span>浏览主宝贝</span>：宝贝页面从头到浏览到尾，页面停留时间3分钟以上。</li>
                        <li>c)&nbsp;&nbsp;<span>浏览评价</span>：需要浏览宝贝评价页面，翻看2页以上。</li>
                        <li>d)&nbsp;&nbsp;<span>旺旺聊天</span>：联系在线客服，至少问5个常见购买问题如是否包邮，能否降价等。不得提及补单等敏感信息。</li>
                    </ul>
                    <h2>2、试客多的活动是是试客垫付还是商家代付？</h2>
                    <ul>
                        <li>平台的活动全部是试客垫付。众所周知，代付的风险更高，更不安全，且很不方便，因此平台采用试客垫付的方式进行。</li>
                    </ul>
                    <h2>3、试客多平台可以发布什么类型的活动？</h2>
                    <ul>
                        <li>目前试运营期间，仅支持发布淘宝平台的PC试用活动和手机试用活动。但是试用活动可供选择的增值服务很多：</li>
                        <li>a)&nbsp;&nbsp;可选择接取活动的买号等级q</li>
                        <li>b)&nbsp;&nbsp;可指定评价的文案和图片</li>
                        <li>c)&nbsp;&nbsp;可要求追评</li>
                        <li>d)&nbsp;&nbsp;可以设定活动发布的间隔时间</li>
                        <li>e)&nbsp;&nbsp;可以要求试客完成活动的时间</li>
                    </ul>
                    <h2>4、补单流程是什么样的？</h2>
                    <img src="/asserts/images/faq_bdlc.png" alt="">
                    <ul>
                        <li>放单和补单流程如上图所示，商家需要先行将货款和赏金充值到平台，平台在试客做完活动后返回给试客。商家只需要在平台操作两件事情：</li>
                        <li>a)&nbsp;&nbsp;发布活动（包含充值）</li>
                        <li>b)&nbsp;&nbsp;设置发货：在淘宝上发货后，需要到平台上来设置发货，不然试客无法进行到收货好评一步</li>
                        <li>c)&nbsp;&nbsp;确认返赏金：在试客确认好评后，商家来平台返赏金给试客</li>
                    </ul>
                </div>
            </div>


















            <!-- center end -->
        </div>
    </div>
    <div class="Content-Space-h"></div>
    <div class="Clear"><!--如何你上面用到float,下面布局开始前最好清除一下。--></div>
    <div id="Footer">

        <link rel="stylesheet" type="text/css"
              href="/asserts/css/footer.css?rel=1540198807875"/>
        <div class="foot_div">

            <div class="foot_div_div1">
                <a class="foot_div_div1_a1"></a>
            </div>
            <div style="text-align: center;">




            </div>

        </div>
    </div>
</div>
<script>
    $('.zjjl_title').click(function(){
        var bgPic = $(this).find('p').css('background-image');
        if(bgPic.match('i36_lmsq.png')){
            $(this).find('p').css('background-image','url(/asserts/images/i36_lmzk.png)');
            $(this).siblings('.text').slideUp();
        }else{
            $(this).find('p').css('background-image','url(/asserts/images/i36_lmsq.png)');
            $(this).siblings('.text').slideDown();
        }
    });

    function init() {
        headerStyle(1);
        var type = $("#nav_hidden").val();
        navigatorStyle(9);
    }
    init();
    var openType = request("open_type");
    if (openType) {
        $("#" + openType + "").click();
        if(openType == "helperExplain"){
            $('html,body').animate({scrollTop:1150},1000)
        }else{
            $('html,body').animate({scrollTop:386},1000)
        }
    }


</script>
</body>


<script type="text/javascript" src="/asserts/js/vendor/jquery/jquery-1.10.2.js?rel=1540198807994"></script>
<script type="text/javascript" src="/asserts/js/vendor/datepicker/WdatePicker.js?rel=1540198807994"></script>
<script type="text/javascript" src="/asserts/js/common/common.js?rel=1540198807994"></script>
<script type="text/javascript" src="/asserts/js/common/page.js?rel=1540198807994"></script>
<script type="text/javascript" src="/asserts/js/switch.js?rel=1540198807994"></script>
<script type="text/javascript" src="/asserts/js/vendor/jquery-first-event.js?rel=1540198807881"></script>
<script type="text/javascript" src="/asserts/js/common/store+json2.min.js?rel=1540198807881"></script>
<script type="text/javascript" src="/asserts/js/common/store.expire.js?rel=1540198807881"></script>
<script type="text/javascript" src="/asserts/js/common/top.js?rel=1540198807881"></script>
<script type="text/javascript" src="/asserts/js/dist/viewer.js?rel=1540198807881"></script>
</html>





