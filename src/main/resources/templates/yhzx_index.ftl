<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<script type="text/javascript" src="../static/js/verdor/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="../static/js/verdor/jquery-loadTemplate/jquery.loadTemplate-1.4.4.js"></script>
<script type="text/javascript" src="../static/js/common/common.js"></script>
<script type="text/javascript" src="../static/js/common/page.js"></script>
<script type="text/javascript" src="../static/js/common/store.min.js"></script>
<script type="text/javascript" src="../static/js/seller/homePage.js"></script>
<link rel="stylesheet" type="text/css" href="../static/css/homePage.css" />
<link rel="stylesheet" type="text/css" href="../static/css/zebra_dialog.css" />
<script type="text/javascript" src="../static/js/verdor/zebra_dialog/zebra_dialog.js"></script>
<script type="text/javascript" src="../static/js/common/popdg.js"></script>
<script type="text/javascript" src="../static/js/common/homePage.js"></script>
<link rel="shortcut icon" href="../static/images/favicon.ico" type="image/x-icon" />
<title>【试客多】-用户中心</title>
	<style>
	.leadBox{
		position:fixed;
		left:0;
		top:0;
		width:100%;
		height:100%;
		background-color:rgba(0,0,0,.5);
		z-index:10000;
		display:none;
	}
	.lead{
		position:absolute;
		right:25px;
		top:80px;
		width:437px;
		height:227px;
		background:url(../static/images/QQyd.png);
		z-index:10001;
		display:none;
	}
	.lead a{
		position:absolute;
		bottom:2px;
		width:90px;
		height:30px;
	}
	.lead a.change{
		left:133px;
	}
	.lead a.unPrompt{
		right:60px;
	}
</style>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../static/css/top.css"/>
<script type="text/javascript" src="../static/js/verdor/jquery-first-event.js"></script>
<script type="text/javascript" src="../static/js/common/store+json2.min.js"></script>
<script type="text/javascript" src="../static/js/common/store.expire.js"></script>
<script type="text/javascript" src="../static/js/common/top.js"></script>
<script type="text/javascript" src="../static/js/dist/viewer.js"></script>
<link rel="stylesheet" type="text/css" href="../static/css/viewer.css" />

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
            background: url(../static/images/gou.png) no-repeat center;
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
						<img src="../static/images/menu_select_icon.png" alt="" class="pos-menu-select">
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
				<img src="../static/images/colsed-kfqq.png" alt="">
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
				<img class="bg-img" src="../static/images/kfqq.png" alt="">
				<div class="right-menu-content">
					<a href="/seller/publish/publish_mission.htm">
						<img src="../static/images/sjscfd.png" class="right-menu-content-top-img" alt="">
					</a>

					<span class="menuTitleTwo">客服问题找我</span>
					<div class="right-menu-two">
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852368872">
							<img src="../static/images/yckf_03.png" alt=""> 宝宝
						</a>
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852365086">
							<img src="../static/images/yckf_03.png" alt=""> 贝贝
						</a>
					</div>

					<span class="menuTitleOne">活动发布找我</span>
					<div class="right-menu-one">
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852368900">
							&nbsp;&nbsp;&nbsp;<img src="../static/images/yckf_03.png" alt=""> 高经理
						</a>
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852356150">
							<img src="../static/images/yckf_03.png" alt=""> 安娜老师
						</a>

						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852365085">
							<img src="../static/images/yckf_03.png" alt=""> 周华老师
						</a>
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852366295">
							<img src="../static/images/yckf_03.png" alt=""> 毛经理
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
						<img src="../static/images/er.jpg" class="QRCode" style="width: 105px;">
					</div>
					<a class="clickAdd" target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=96519ab8b4c99204d736e67685b5354a45c8fbeae3a38df059a1ef4bd8f53575">点击加入</a>
				</div>
			</div>

		</div>

		<a href="javascript:void(0);" id="onKfqq">
			<img src="../static/images/kfqqsmall.png" alt="">
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
                '<a href="/seller/jnbzj_index.ftl" target="_blank" style="background-color: #5AC2E7;padding: 9px 31px;float: left;margin-top: 48px;margin-left: 132px;color: #fff;border-radius: 5px;font-size: 16px;">去缴纳保证金</a>'+
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

	<script>
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
	</script>
	<div id="Container" align="center">
		<div id="Header">




<link rel="stylesheet" type="text/css" href="../static/css/layout.css"/>
<link rel="stylesheet" type="text/css" href="../static/css/header.css"/>
		</div>
		<div class="Content-Space-h"></div>
		<div id="Content">
			<div id="Content-Left">




<link rel="stylesheet" type="text/css" href="../static/css/navigator.css" />

		<ul class="left_menu" style="margin-bottom: 10px;">
						<li class="menu_selected" href="index.htm">
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
							<img src="../static/images/hot.gif" alt="" style="position: relative;top: -2px;left: 5px;">
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
			<img class="sLeft " src="../static/images/lwds.jpg" alt="" style="width: 190px; height: 62px;">
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
				<div class="grxx_div" align="center">
					<div class="module_div jbxx_module" align="left">

						<div class="leadBox"></div>
						<div class="lead">
							<a href="javascript:modifyQQ()" class="change"></a>
							<a href="javascript:;" class="unPrompt"></a>
						</div>

						<div class="module_head">
							<b>基本信息</b>
						</div>
						<div class="content_div">
							<div class="floatLeft buyer marginLeft"></div>
							<a href="/seller/bindStore.htm?rt=n" class = "bindStores">&lt;&lt;点我认证</a>
								<!-- <span class="marginLeft">剩余发布活动数：<span>10</span></span> -->
								<br>
							<span class="marginLeft">账号：<span class="username"></span></span><span class="marginLeft">登录密码：
							<img src="../static/images/set_icon.png">
							<b class="setPwd"></b>
								<a href="/account/useraccountloginpwd.htm">修改</a>
							</span>
							<span class="marginLeft">支付密码：<b class='setPaypwd'></b><a class='aSetPaypwd' href="/account/useraccountpwd.htm" target="_blank"></a></span>
							<span class="marginLeft">QQ：<span class="qqNum"></span>
								<a href="javascript:modifyQQ()">修改</a>
							</span>
							<span class="marginLeft">紧急联系人：<span class="emergency"></span>
								<a href="javascript:modifyEmergency()">修改</a>
							</span>
                            </span>
							<br>
                            <span class="marginLeft">绑定手机：<span class="phoneNum"></span></span><br>

<!-- 								<span class="marginLeft">您当前会员截止日期为：<span class="limitTime"></span>，请在会员有效期截止前续费会员 -->
<!-- 								<a href="/account/zjgl_index.ftl">前去续费>></a></span> -->

							<div class="space_div"></div>
						</div>
					</div>
					<div class="module_div rwts_module" align="left">
						<div class="module_head">
							<b>试用活动管理</b>
						</div>
						<div class="content_div">
							<div class="space_div2"></div>
							<a href="/seller/zrwlb.htm?n=1" class="marginLeft number_a">待接手活动（<span class="number_span waitPay">0</span>）
							</a>
							<a href="/seller/zrwlb.htm?n=3" class="marginLeft number_a">待发货（<span class="number_span waitSendGood">0</span>）
							</a>
							<a href="/seller/zrwlb.htm?n=5" class="marginLeft number_a">待返款（<span class="number_span waitBack">0</span>）
							</a>
							<a href="/seller/zrwlb.htm?n=7" class="marginLeft number_a">失败活动（<span class="number_span failTask">0</span>）
							</a>
							<div class="space_div2"></div>
						</div>
					</div>
					<div class="module_div cwqk_module" align="left">
						<div class="module_head">
							<b>我的财务情况</b>
						</div>
						<div class="content_div">
							<div class="space_div"></div>
							<span class="marginLeft">货款账户<a href="/seller/seller_explain.htm?open_type=coin"><img src="../static/images/help-12-12.png"/> </a>：&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="lMoney">可用:0元   冻结:0元</span>
							<a href="/account/accountmanage.htm?tab=1">{充值}</a>
							<a href="/account/accountmanage.htm?tab=3">{提现}</a> <br>
							<span class="marginLeft">金币账户<a href="/seller/seller_explain.htm?open_type=coin"><img src="../static/images/help-12-12.png"/> </a>：&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="lCoin">可用:0元   冻结:0元</span>
                            <br> <span class="marginLeft">资金交易记录：</span>&nbsp;&nbsp;&nbsp;&nbsp; <input
								type="button" class="grxx_button" id="tradeRecord_button"
								value="最近账户交易记录"> <input type="button"
								class="grxx_button" id="useRecord_button" value="最近金币使用记录">

							<div class="space_div"></div>
						</div>
					</div>

				</div>
				<!-- center end -->
			</div>
		</div>
		<div class="Content-Space-h"></div>
		<div class="Clear">
			<!--如何你上面用到float,下面布局开始前最好清除一下。-->
		</div>
		<div id="Footer">
<link rel="stylesheet" type="text/css" href="../static/css/footer.css"/>
<div class="foot_div">

    <div class="foot_div_div1">
        <a class="foot_div_div1_a1"></a>
    </div>
    <div style="text-align: center;">




    </div>

</div> </div>
	</div>




































































</body>
</html>