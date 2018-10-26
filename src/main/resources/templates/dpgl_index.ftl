<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<script type="text/javascript" src="/saleterrace/js/verdor/jquery/jquery-1.10.2.js"></script>
		<script type="text/javascript" src="/saleterrace/js/verdor/jquery-loadTemplate/jquery.loadTemplate-1.4.4.js"></script>
		<script type="text/javascript" src="/saleterrace/js/verdor/jquery-zclip/1.1.2/jquery.zclip.js"></script>
		<script type="text/javascript" src="/saleterrace/js/common/common.js"></script>
		<script type="text/javascript" src="/saleterrace/js/common/page.js"></script>
		<script type="text/javascript" src="/saleterrace/js/verdor/jquery.form.js"></script>
		<script type="text/javascript" src="/saleterrace/js/verdor/zebra_dialog/zebra_dialog.js"></script>
		<script type="text/javascript" src="/saleterrace/js/common/popdg.js"></script>
		<script type="text/javascript" src="/saleterrace/js/seller/bindStore.js"></script>
		<script type="text/javascript" src="/saleterrace/js/common/cos-js-sdk-v4.js"></script>
		<script type="text/javascript" src="/saleterrace/js/common/uploadImageCommon.js"></script>
		<link rel="stylesheet" type="text/css" href="/saleterrace/css/zebra_dialog.css"/>
		<link rel="stylesheet" type="text/css" href="/saleterrace/css/bindStore.css"/>
		<title>【试客多】-店铺管理</title>
	</head>
	<body>

		<link rel="stylesheet" type="text/css" href="/saleterrace/css/top.css"/>
		<script type="text/javascript" src="/saleterrace/js/verdor/jquery-first-event.js"></script>
		<script type="text/javascript" src="/saleterrace/js/common/store+json2.min.js"></script>
		<script type="text/javascript" src="/saleterrace/js/common/store.expire.js"></script>
		<script type="text/javascript" src="/saleterrace/js/common/top.js"></script>
		<script type="text/javascript" src="/saleterrace/js/dist/viewer.js"></script>
		<link rel="stylesheet" type="text/css" href="/saleterrace/css/viewer.css"/>

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
		<input type="hidden" id="currentDate" value="20181021">
		<input type="hidden" id="userRole" value="true">
		<script type="text/javascript" src="https://js.users.51.la/19492995.js"></script>
		<script>
			function closeImg() {
				$(".contentBox").remove();
				if($('#userRole').val()) {
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
				$(".content").click(function() {
					return false;
				});
				$(".noAgain").click(function() {
					var keep = new Date();
					var active = $(this).find("i").hasClass("active");
					if(active) {
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
				$(".shade-close").on("click", function() {
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

					<#--<script>-->
						<#--$(document).ready(function() {-->
							<#--if(isGodChoose()) {-->
								<#--var gotoxiuba = $("#goto-xiuba-href");-->
								<#--if(gotoxiuba && gotoxiuba.length > 0) {-->
									<#--gotoxiuba.css("display", "inline-block");-->
								<#--}-->
							<#--}-->
						<#--});-->
					<#--</script>-->
				</div>
				<div id="Content-Space"></div>
				<div id="Content-Main">
					<!-- center begin -->
					<div class="mainDiv" align="center">
						<div class="dp_list_div">
							<div class="addDp_div" align="left">

								<input type="button" class="addDp_button" value="添加淘宝新店铺" onclick="addStore('other')">
								<input type="button" class="addDp_button" value="添加京东新店铺" onclick="addStore('jd')" style="left: 95px">
								<input type="button" class="addDp_button" value="添加拼多多新店铺" onclick="addStore('pdd')" style="left: 165px">

							</div>
							<div class="dp_div" align="left">
								<div class="dp_title_div">
									<div>
										<div id="tabsSwitch1" align="left" class="tabsSwitchDiv1" style="margin-top: 0px">
											<ul class="tabsSwitch_ul">
												<li value="0" class="tabsSwitchSeletedLi" id="tbStore">管理淘宝店铺</li>
												<li value="1" class="tabsSwitchUnSeletedLi" id="jdStore">管理京东店铺</li>
												<li value="2" class="tabsSwitchUnSeletedLi" id="pddStore">管理拼多多店铺</li>
											</ul>
										</div>
									</div>
								</div>
								<ul class="dp_head">
									<li class="dp_li1">掌柜旺旺</li>
									<li class="dp_li7">店铺名称</li>
									<li class="dp_li2">绑定时间</li>
									<li class="dp_li7">试用间隔时间设置</li>

									<li class="dp_li3">状态</li>
									<li class="dp_li6">操作</li>
								</ul>
								<ul class="dp_headJD" style="display: none">
									<li class="dp_li1">店铺名称</li>
									<li class="dp_li7"></li>
									<li class="dp_li2">绑定时间</li>
									<li class="dp_li7">试用间隔时间设置</li>

									<li class="dp_li3">状态</li>
									<li class="dp_li6">操作</li>
								</ul>
								<div id="storeInfo">
								</div>
							</div>
						</div>

						<ul class="bindWay">
							<li class="current">
								<span class="screenshot"></span>
								<p>截图绑定（人工审核）</p>
								<i></i>
							</li>
						</ul>

						<div class="screenBox">
							<div class="new_dp_title" align="left">
								<div class="floatLeft halfDiv">
									<p>绑定店铺并认证<span>（仅接手活动的试客可以看到，不会被泄露）</span></p>
								</div>
							</div>
							<div class="screen">
								<form id="infoForm" name="infoForm" action="/seller/bind/store_info.htm" enctype="multipart/form-data" method="post">
									<div class="formInfor">
										<ul class="title">
											<li>
												<i class="i1"></i>
												<h2 id="changeType1">请输入掌柜旺旺：</h2>
												<input type="text" id="wwId" name="wangwangid" maxlength="50">
												<p id="changeType2">（<span>*</span>店铺旺旺绑定后不可更改）</p>
											</li>
											<li id="otherShop">
												<i class="i2"></i>
												<h2>请输入店铺名称：</h2>
												<input type="text" id="shopName" name="shopName" maxlength="100">
												<p>（务必与宝贝显示的店铺名一致）</p>
											</li>
											<li id="shopUrl">
												<i class="i3"></i>
												<h2>店铺网址：</h2>
												<input type="text" id="storeUrl" name="checkItemUrl">
												<p>（<span>*</span>店铺地址绑定后不可更改）</p>
											</li>
											<li class="sendPic">
												<i class="i4"></i>
												<h2>店铺后台截图：</h2>
												<img id="storeCheckImgShow" style="cursor: pointer;" src="/saleterrace/images/i88_img.png" alt="">
												<p>（为避免恶意绑定他人店铺必须上传店铺的后台登录截图）</p>
												<input type="file" id="picValue" name="storeCheckImgTemp" accept=".jpg,.jpeg,.gif,.png" onchange="jic.onchange(this,'bind',162036,successSetValueCallBack,successCallBack,errorCallBack,'')" />
												<h3 id="selectPic">选择文件</h3>
												<a id="picUrl" href="/saleterrace/images/dianpubangding02.png" target="_blank">查看示例图</a>
											</li>
										</ul>
										<input type="hidden" id="storeCheckImg" name="storeCheckImg">
										<input type="hidden" id="ignoreCheckStore" name="ignoreCheckStore" value="">
										<input type="hidden" id="id" name="id">
										<input id="doSubmitCheck" type="button" value="提交店铺审核" onclick="doSubmit()">
									</div>
								</form>
								<p>提示：店铺绑定审核时间1个工作日左右，若超过一个工作日请联系客服！</p>
							</div>
						</div>

						<div class="new_dp hidden">
							<div class="new_dp_title" align="left">
								<div class="floatLeft halfDiv">
									<p>绑定店铺并认证<span>（仅接手活动的试客可以看到，不会被泄露）</span></p>
								</div>
							</div>
							<div class="dp_check hidden" align="left">
								<div class="check_title_div">
									<p>验证成功！请确认您的店铺信息</p>
								</div>
								<div class="dp_detail">
									<span id="zgww">掌柜旺旺：<b class="dp_account">&nbsp;</b></span>

									<div class="detail_address">
										<ul class="title">
											<li id="otherShopEdit">
												<i class="i2"></i>
												<span>请输入店铺名称：</span>
												<input type="text" id="shopNameEdit" style="width: 230px;height: 25px;border: 1px solid #e1e1e1;margin-right: 10px;" name="shopNameEdit" maxlength="100">
												<p>（务必与宝贝显示的店铺名一致）</p>
											</li>
											<li class="sendPic">
												<i class="i4"></i>
												<span>店铺后台截图：</span>
												<img id="storeCheckImgShowEdit" style="cursor: pointer;" src="/saleterrace/images/i88_img.png" alt="">
												<input type="file" style="display: none" id="picValueEdit" name="storeCheckImgTemp" accept=".jpg,.jpeg,.gif,.png" onchange="jic.onchange(this,'bind',162036,successEditSetValueCallBack,successCallBack,errorCallBack,'')" />
											</li>
										</ul>
										<div class="floatLeft">
											<br>
											<input type="button" class="bd_button" value="确认绑定">
											<input type="hidden" id="storeCheckImgEdit" name="storeCheckImgEdit">
											<input type="hidden" id="bsid" value="" />
											<input type="hidden" id="bsstatus" value="" />
											<input type="hidden" id="bsversion" value="" />
											<input type="hidden" id="sendInfoId" value="" />
											<input type="hidden" id="sendInfoVersion" value="" />
										</div>
									</div>
								</div>
								<p>
									1、这里设置的发货地址将做为平台空包时的默认发货地址<br/> 2、您也可在发送平台快递的时候更改
								</p>
							</div>
						</div>

					</div>
					<!-- center end -->
				</div>
			</div>

		</div>
		<script type="text/html" id="storeInfoRow">
			<ul class="dp_info">
				<li class="dp_li1">
					<div data-content-text="wangwangid"></div>
				</li>
				<li class="dp_li7">
					<div data-content-text="shopName"></div>
				</li>
				<li class="dp_li2" data-content-text="bindtime"></li>
				<li class="dp_li7">
					<div data-content="repurchaseDayText" style="position: relative" data-template-bind='[{"attribute": "itemId", "value": "id"}]' class="hbsst"></div>
				</li>

				<li class="dp_li3" data-content="statusAlias"></li>
				<li class="dp_li6" data-content="operator" style="position: relative"></li>
				<li class="dp_hidden" column-id="id" data-value="id"></li>
				<li class="dp_hidden" column-id="status" data-value="status"></li>
				<li class="dp_hidden" column-id="version" data-value="version"></li>
			</ul>
		</script>

		<script type="text/html" id="jdstoreInfoRow">
			<ul class="dp_info">
				<li class="dp_li1">
					<div data-content-text="shopName">泰嘉boy</div>
				</li>
				<li class="dp_li7">
					<div data-content-text="wangwangid">小算珠婴童店</div>
				</li>
				<li class="dp_li2" data-content-text="bindtime">2018-06-15</li>
				<li class="dp_li7">
					<div data-content="repurchaseDayText" style="position: relative" data-template-bind='[{"attribute": "itemId", "value": "id"}]' class="hbsst">30天</div>
				</li>
				</li>

				<li class="dp_li3" data-content="statusAlias">已启用</li>
				<li class="dp_li6" data-content="operator" style="position: relative"><img src="/saleterrace/images/start.png"><input type="hidden" id="storeType" value="2">
                    <div style="position: absolute;top: 23px;left: 23px;color: #59C2E6;width: 110px;height: 0px"><a style="color: #59C2E6" href='javascript:editSendInfo(40999,"2")'>编辑</a></div></li>
				<li class="dp_hidden" column-id="id" data-value="id" value="40999"></li>
				<li class="dp_hidden" column-id="status" data-value="status" value="1"></li>
				<li class="dp_hidden" column-id="version" data-value="version" value="14"></li>
			</ul>
		</script>
		<script type="text/html" id="protocolTemplate">
			<div class="main">
				<div class="deal_wrap">
					<h1>试客多服务协议（商家版）</h1>
					<p class="tc f16 pt20">欢迎您注册成为试客多商家会员，在注册前请您仔细阅读以下服务条款。</p>
					<p class="pt20">1、本协议内容包括以下条款及本网站已经发布的或将来可能发布的各类规则。所有规则为本协议不可分割的一部分，与协议正文具有同等法律效力。本协议是您与本网站共同签订的，适用于您在本网站的全部活动。在您注册成为用户时，您已经阅读、理解并 接受本协议的全部条款及各类规则，并承诺遵守中国的各类法律规定，如有违反而导致任何法律后果的发生，您将以自己的名义独立承担所有相应的法律责任。
					</p>
					<p>2、本网站有权根据需要不时地修改本协议或根据本协议制定、修改各类具体规则并在本网站相 关系统板块发布，无需另行单独通知您。您应不时地注意本协议及具体规则的变更，若您在本协议及具体规则内容公告变更后继续使用本服务的，表示您已充分阅读、理解并接受修改后的协议和具体规则内容，也将遵循修改后的协议和具体规则使用本网站的服务；同时就您在协议和具体规则修订前通过本网站进行的交易及其 效力，视为您已同意并已按照本协议及有关规则进行了相应的授权和追认。若您不同意修改后的协议内容，您应停止使用本网站的服务。
					</p>
					<p>3、您通过自行或授权有关方根据本协议及本网站有关规则、说明操作确认本协议后，本协议即 在您和本网站之间产生法律效力。本协议不涉及您与本网站的其他用户之间因网上交易而产生的法律关系或法律纠纷，但您在此同意将全面接受和履行与本网站其他 用户在本网站签订的任何电子法律文本，并承诺按该等法律文本享有和/或放弃相应的权利、承担和/或豁免相应的义务。
					</p>
					<h2 class="pt20">协议细则：</h2>
					<h3>一、注册须知</h3>
					<p class="pt20">1、商家注册帐号时应认真填写用户名，一个商家帐号对应一个用户名，用户名注册成功后无法修改。商家填写的商家名称及商家店铺名称应遵守《中华人民共和国相关法律法规》，不允许包含违法、涉嫌侵犯他人权利或干扰试客多运营秩序等相关信息。</p>
					<p>2、注册商家帐号应使用店铺相关负责人的QQ、电话来注册。商家有义务妥善保管及正确使用账号与密码，因未尽上述义务导致帐号信息泄露、密码遗失、账号被盗等情况引起的经济纠纷或损失由商家自行承担。</p>
					<p>3、用户不应将其帐号、密码转让、出售或出借予他人使用，如果试客多发现使用者并非帐号注册者本人，试客多有权停止继续服务。如用户发现其帐号遭他人非法使用，应立即通知试客多。因黑客行为或用户违反本协议规定导致帐号、密码遭他人非法使用的，由用户本人承担因此导致的损失和一切法律责任，不承担任何责任。</p>
					<p>4、试客多有权对平台各项服务条款及使用规则等进行调整。用户在使用相关服务时,应关注平台的最新动向并遵守平台的服务条款及使用规则。</p>
					<h3>二、服务项目及收费条款</h3>
					<dl>
						<dt>1、可发布平台</dt>
						<dd>（1）支持发布任务的平台有淘宝、天猫</dd>
					</dl>
					<dl>
						<dt>2、任务类型及发布渠道</dt>
						<dd>（1）常规爆款、老店新款、新店新款、高价值款、新人专享</dd>
						<dd>（2）PC搜索渠道、自然搜索渠道、手机淘宝、淘口令渠道、无线端关键词渠道</dd>
						<dd>（3）不同任务类型及发布渠道的区别，请商家用户注册成功后查看帮助中心或论坛</dd>
					</dl>
					<dl>
						<dt>3、增值服务</dt>
						<dd>（1）试客多根据商家需求，有偿为商家提供超出常规服务范围的服务，使商家推广效果更大化商家可选择所需的增值服务</dd>
						<dd>（2）试客多为了解放商家双手、减少运营成本，审核中奖用户及退款本金均由平台负责操作，商家须选择本金代返、天平系统抽奖、云计算精准买家标签 三项增值服务</dd>
					</dl>

					<dl>
						<dt>4、商家保证金</dt>
						<dd>为了保证试客的利益和督促商家遵守本平台的商家规则，商家在本平台注册发布任务时，本平台会收取一定的费用作为商家的保证金。保证金在商家满足以下条件时可申请提取：</dd>
						<dd>（1）距离商家最后一次发布试用活动的时间满24个月。</dd>
						<dd>（2）商家发布的试用活动中申请试用的所有试客对试用活动和商家无异议。</dd>
						<dd>（3）商家至少发布成功1000次试用活动。</dd>
						<dd>（4）商家在本平台未发生违规行为。</dd>

					</dl>

					<h3>三、服务内容</h3>

					<p class="pt20">1、试客多服务的具体内容由试客多根据实际情况提供；除非本服务协议另有其它明示规定，试客多所推出的新产品、新功能、新服务，均受到本服务协议之规范。 </p>
					<p>2、鉴于网络服务的特殊性，用户须同意试客多有权不经事先通知，随时变更、中断或终止部分或全部的服务（包括收费服务）。试客多不担保网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作担保。 </p>
					<p>3、试客多需定期或不定期地对提供用户服务的平台或相关的设备进行检修或者维护，如因此类情况而造成网络服务（包括收费网络服务）在合理时间内的中断，试客多无需为此承担任何责任。试客多保留不经事先通知为维修保养、升级或其它目的暂停本服务任何部分的权利。。</p>
					<h3>四、使用规则</h3>

					<p class="pt20"> 1、商家在使用试客多的过程中，严禁从事虚假刷单，刷信誉，发空包，买A发B等行为，一经查处，试客多将进行相应的处罚并没收商家保证金。</p>

					<p class="pt20"> 2、用户在使用试客多服务时，必须遵守《中华人民共和国相关法律法规》的规定，用户应同意将不会利用试客多平台进行任何违法或不正当的活动，包括但不限于下列行为∶ </p>

					<dl class="cc_list">
						<dt>（1）上载、展示、张贴、传播或以其它方式传送含有下列内容之一的信息：</dt>
						<dd>① 反对宪法所确定的基本原则的；</dd>
						<dd>② 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；</dd>
						<dd>③ 损害国家荣誉和利益的； </dd>
						<dd>④ 煽动民族仇恨、民族歧视、破坏民族团结的；</dd>
						<dd>⑤ 破坏国家宗教政策，宣扬邪教和封建迷信的；</dd>
						<dd>⑥ 散布谣言，扰乱社会秩序，破坏社会稳定的；</dd>
						<dd>⑦ 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；</dd>
						<dd>⑧ 侮辱或者诽谤他人，侵害他人合法权利的；</dd>
						<dd>⑨ 含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容；</dd>
					</dl>
					<dl class="cc_list">
						<dt>（2） 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的；</dt>
						<dd>①不得为任何非法目的而使用网络服务系统；</dd>
					</dl>
					<dl class="cc_list">
						<dt>（3）不利用试客多服务从事以下活动： </dt>
						<dd>①未经允许，进入计算机信息网络或者使用计算机信息网络资源的；</dd>
						<dd>②未经允许，对计算机信息网络功能进行删除、修改或者增加的；</dd>
						<dd>③未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的； </dd>
						<dd>④故意制作、传播计算机病毒等破坏性程序的；</dd>
						<dd>⑤其他危害计算机信息网络安全的行为。</dd>
					</dl>
					<dl class="cc_list">
						<dt>（4）用户违反本协议或相关的服务条款的规定，导致或产生的任何第三方主张的任何索赔、要求或损失，包括合理的律师费，试客多有权视用户的行为性质，采取包括但不限于删除用户发布信息内容、暂停使用许可、终止服务、限制使用、回收试客多帐号、追究法律责任等措施。对恶意注册试客多帐号或利用试客多帐号进行违法活动、捣乱、骚扰、欺骗、其他用户以及其他违反本协议的行为，试客多有权回收其帐号。同时，试客多会视司法部门的要求，协助调查。</dt>
					</dl>
					<p>①用户须对自己在使用试客多服务过程中的行为承担法律责任。用户承担法律责任的形式包括但不限于：对受到侵害者进行赔偿，以及在试客多首先承担了因用户行为导致的行政处罚或侵权损害赔偿责任后，用户应给予试客多等额的赔偿。</p>
					<p>②用户不得对本服务任何部分或本服务之使用或获得，进行复制、拷贝、出售、转售或用于任何其它商业目的。</p>
					<p>③商家会员在活动过程中应遵守规则。试客多不认可商家私下通过旺旺、QQ等方式私下与用户达成的所有约定，如出现用户纠纷，试客多以《试客多商家规则》为依据处理，商家承担所有因私下承诺造成的所有后果。</p>
					<p>④试客多仅作为用户提供商品购买渠道及信息交流平台，所有产品均由商家用户直接提供，商家有权利和义务对发布任务的产品负责，杜绝一切非正规渠道来源的产品。因产品本身及用户的个体差异而有所不同，如用户会员在使用过程中出现不适，商家有义务对商品出现的问题承担全部责任。</p>
					<p>⑤试客多有权对违反试客多《商家规则》的商家进行对应的处罚。</p>
					<h3>五、通告</h3>
					<p class="pt20">所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。</p>
					<h3>六、信息内容的所有权</h3>
					<p class="pt20">试客多所有知识产权、网站中的信息内容或作为服务内容的信息、数据库、所有网站设计、文字和图表、软件、照片、录像、音乐、声音及其前述组合，以及所有软件编译、相关源代码和软件 (包括小应用程序和脚本) 均为试客多的财产。不得意图非法获得该知识产权。未经试客多书面允许，不得为商业目的复制、更改、拷贝、发送或使用试客多的任何材料或内容，如因用户的行为而给试客多造成损害，试客多有权视情节严重，将通过法律途径追索经济和法律责任。</p>
					<h3>七、其他</h3>
					<p class="pt20">1、本协议的订立、执行和解释及争议的解决均应适用《中华人民共和国法律》</p>
					<p>2、如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决。</p>
					<p>3、如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。</p>
					<p>请您在发现任何违反本服务协议以及其他任何单项服务的服务条款、各类公告之情形时，通知试客多。我们将竭诚为您服务！</p>
				</div>
				<div class="deal_wrap">
					<h1 style="margin-top: 60px;">试客多商家规则</h1>
					<h3>第一章 概述</h3>
					<p class="pt20">第一条 为了保障商家和用户的合法权益，制定此规则。
						<br /> 第二条 商家有权利及义务遵循《试客多商家规则》的有关条款。
						<br /> 第三条 针对商家的违规行为的认定与处理，应基于试客多认定的事实并严格依规执行。
						<br /> 第四条 商家会员在活动过程中应遵守规则。试客多不认可商家私下通过旺旺、QQ等方式私下与试客多用户达成的所有约定，如出现用户纠纷，试客多以《试客多商家规则》和《试客多商家处罚规则》为依据处理，商家承担所有因私下承诺造成的所有后果。
						<br /> 第五条 试客多仅作为用户提供商品购买渠道及信息交流平台，所有活动产品均由合作商家直接提供，商家有权利和义务对发布任务的产品负责，杜绝一切非正规渠道来源的活动产品。因产品本身及用户的个体差异而有所不同导致试客多用户在使用过程中出现不适，商家有责任及义务配合试客多用户处理使用商家商品后出现的不适问题。
						<br /> 第六条 商家同意注册试客多，视为认可并且同意《试客多商家规则》、《试客多商家处罚规则》、《试客多商品发布规范》下的所有条款，同时试客多有权变更本规范并在网站上予以公告，自公告之日起产生的所有问题，按照更新后的条例处理。商家可在网站页面随时关注规则变更条款，买家和（或）卖家不同意相关变更的，可通过法律途径解决争议。
						<br /> 第七条 试客多通过站内信、QQ、电话、电子邮件、短信或电话等方式向买卖双方发送的相关的提示或通知，构成试客多各项事宜的处理依据及结论的有效组成部分
						<br /> 第八条《试客多商家规则》和《试客多商家处罚规则》的最终解释权归试客多所有。
					</p>
					<h3>第二章 注册</h3>
					<p class="pt20">第一条 您在注册帐号或使用本服务的过程中，可能需要填写一些必要的信息。若国家法律法规有特殊规定的，您需要填写真实的身份信息。若您填写的信息不完整，则无法使用本服务或在使用过程中受到限制。
						<br /> 第二条 一般情况下，您可随时浏览、修改自己提交的信息，但出于安全性和身份识别（如账户申诉或者提现账户修改等服务）的考虑，您可能无法修改注册时提供的初始注册信息及其他验证信息。
						<br /> 第三条 注册商家帐号应使用店铺相关负责人的QQ、电话、邮箱来注册。商家有义务妥善保管及正确使用账号与密码，因未尽上述义务导致帐号信息泄露、密码遗失、账号被盗等情况引起的经济纠纷或损失由商家自行承担。
						<br /> 第四条 商家注册帐号时应认真填写用户名，一个商家帐号对应一个用户名，用户名注册成功后无法修改。商家填写的商家名称及商家店铺名称应遵守国家法律法规，不允许包含违法、涉嫌侵犯他人权利或干扰试客多运营秩序等相关信息。
						<br /> 第五条 商家应自行保管好商家帐号的登录密码及提现密码。忘记密码可在网站上根据提示进行找回，同时试客多账户一旦注册成功，目前暂不支持注销。
					</p>

					<h3>第三章 发布活动</h3>
					<p class="pt20">第一条 商家发布任务，必须遵守《试客多商家规则》、《试客多商品发布规范》和《类目限制》，如不符合此标准，将不予安排上线，并进行相应处罚。
						<br> 第二条 卖家发布活动时，需要按照活动要求，缴纳足够活动保证金和服务费，用于卖家活动的返款和违规的处罚款，保证金不足的，卖家需缴纳足够保证金才能继续在试客多发布活动。
						<br> 第三条 试客多要求用户不得使用淘宝客链接或者返利方式购买商品，但同时建议商家活动期间，关闭淘宝客推广；
						<br> 第四条 商家发布活动任务前，应保证有充足的商品进行发放，任务审核上线后，因商品份数不足导致商家发布活动无法正常进行或者造成买家损失的，所有损失和责任需要卖家承担，试客多有权根据《试客多商家处罚规则》进行处罚。
						<br> 第五条 商家发布活动任务前，应保证活动有效期间内，指定商品的价格不变动，任务审核上线后，因商家价格变动导致活动无法正常进行或者造成买家损失的，所有损失和责任需要卖家承担，试客多有权根据《试客多商家处罚规则》进行处罚。
						<br> 第六条 商家发布活动前，应保证活动有效期间内，指定的商品和规格不下架，任务审核上线后，因商家商品或者规格下架导致活动无法正常进行或者造成买家损失的，所有损失和责任需要卖家承担，试客多有权根据《试客多商家处罚规则》进行处罚。
						<br> 第七条 活动有效期是指：活动份数未发放完成且卖家未要求暂停活动的，该活动就一直有效。
						<br> 第八条 卖家不得在发布活动时提出试客多无法支持或者无法达到的要求（包括但不限于要求买家加卖家QQ或者微信获取评价内容、未购买相应服务但是要求买家晒图评价、要求买家提供试客多目前暂未提供的服务如真人买家秀等），发现类似活动，若还未审核的，试客多驳回卖家活动发布要求；若已经错误审核通过或者审核通过后卖家更改活动要求的，试客多有权暂停卖家的活动。
					</p>
					<h3>第四章 商品要求</h3>
					<p class="pt20">第一条 卖家应该对自己出售的商品承担保证责任，需要保证自己发布的商品符合国家法律法规规定,符合试客多和卖家店铺所在平台的管理要求,不得出售国家法律法规禁止出售，或根据试客多平台和卖家店铺所在平台管理要求禁止出售的商品。
						<br> 第二条 卖家的活动商品需要符合卖家店铺所在平台的各项类目和商品标准，因卖家发布的活动商品不符合卖家店铺所在平台的标准导致纠纷的，所有损失和可能存在的风险需要卖家自行承担。
						<br> 第三条 卖家发布的活动商品需为质量合格的全新商品，需保证买家可以正常使用且提供售后咨询服务；存在有效期的商品，剩余有效期需在60天以上；发布的活动商品其他要求需符合《试客多商品发布规范》所规定的要求。
						<br> 第四条 卖家对商品和售后问题的举证，试客多可要求卖家按照卖家店铺所在平台的处理方式和规则进行处理。
					</p>
					<h3>第五章 活动待审核上线</h3>
					<p class="pt20">第一条 商家于每日18点前发布的任务，试客多工作人员将在当日审核上线，商家于每日18点后发布的任务，试客多工作人员将在次日审核上线。
						<br /> 第二条 平台审核商家任务时，会针对任务商品类别、任务页面的图片、份数、价格、任务详情、网页链接等内容进行审核，如不符合上线要求的，试客多有权要求商家按要求修改。
						<br /> 第三条 试客多的任务页面必须和交易平台的下单页面的宝贝标题、商品主图、产品信息等一致，如出现描述不符，则不予审核上线，发布的活动需要符合《试客多商品发布规范》下的要求。
					</p>
					<h3>第六章 商家发货</h3>
					<p class="pt20">第一条 试客多用户提交商品订单号后，3天内商家须向试客多用户发货(快递爆仓、会员使用问题旺旺号下单等不可抗力因素除外)。逾期未发货，对于商家无理由延迟发货的违规行为，经核查情况属实的，平台有权根据《试客多商家处罚规则》进行处罚。
						<br /> 第二条 商家须按照活动商品进行发货，试客多用户收到商品与任务商品图片或商家指定的下单页面的商品描述不一致的，或者卖家故意不发货的，经核查属实，平台有权根据《试客多商家处罚规则》进行处罚，并且屏蔽商家正在进行的活动。
						<br /> 第三条 商家须保证活动商品的商品质量，如试客多用户收到的商品质量出现问题（如售假、拍A发B等出现的后续问题商家自己负责），或商品大小、重量、颜色、质量等与活动商品页面的描述或商家指定的下单页面的商品描述存在严重偏差的(因相机拍照产生的颜色偏差或者快递等非商家因素导致的问题除外)。平台有权根据《试客多商家处罚规则》进行处罚，并且屏蔽商家正在进行的活动。
						<br /> 第四条 除非试客多有规定，否则淘宝网不支持卖家以任何理由拒绝为中奖用户发货，否则平台将根据《试客多商家处罚规则》进行处罚。
					</p>
					<h3>第七章 用户订单审核</h3>
					<p class="pt20">
						第一条 用户中奖后，卖家需要及时在活动中奖页面审核买家提供的订单信息、评价信息，若卖家未审核，则系统会在24小时内自动审核通过买家提交的订单和评价信息；若因卖家未及时审核，导致造成不可挽回的损失的，卖家需自行承担所有责任和损失。
						<br> 第二条 若卖家在审核买家订单或者评价信息过程当中，核实买家存在未按任务流程完成任务、提交的订单信息或者评价信息不符合要求的，卖家可以驳回买家提交的订单或者评价，并且可以联系试客多商家客服处理用户处罚事宜。
						<br> 第三条 卖家驳回买家提交的订单或者评价需要提供合理有效的理由，且该理由需要试客多规则可以支持，试客多不支持卖家无理或者根据自己的规则随意驳回买家的订单或者评价；若试客多核实卖家无理驳回买家的订单或者评价的，试客多有权代为通过买家提交的订单或者评价，支持买家的返款。
						<br> 第四条 您理解并同意：系统自动审核通过的订单，试客多视为卖家认可并且同意买家提供的订单信息、评价信息等，因此产生的损失，需要您自行承担，且试客多有权根据买家的订单信息进行进一步的售后处理。若买家提交的订单或者评价信息错误，但是卖家系统审核通过的，试客多会配合商家追回款项，但若因各种原因无法追回的，商家需要自行承担未审核订单或者评价信息产生的损失。
					</p>
					<h3>第八章 活动的终止和结算</h3>
					<p class="pt20">
						第一条 活动时间超过商家设置的活动期限但商家设置的活动份数仍未发放完成的，活动商品会继续在试客多站显示，用户抽奖仍然会继续，活动仍然有效；若商家不希望用户继续中奖的，需要在活动到期后，联系试客多暂停活动，否则活动默认继续抽奖，若用户中奖，商家需要按照试客多规则正常发货；
						<br /> 第二条 商家不支持在活动进行当中随意终止活动，商家要求中途终止活动的，需要提供有效合理的理由，经试客多判定后决定是否可以暂停；活动暂停后，商家需要保障已中奖用户可以顺利完成领奖。
						<br /> 第三条 活动暂停48小时后，商家可以要求结算活动。
					</p>
					<h3>第九章 款项提现</h3>
					<p class="pt20">
						第一条 您理解并同意：用户申请某个商品，中奖并且按照试客多要求完成所有任务后，即可获得全额返利，您的保证金会进行相应扣除，返款给用户，商品金额支出记录会在您的商家后台显示；商家后台的资金记录和信息为记账作用，仅代表了您的账户的资金往来、明细以及当前所拥有的权益，并非代表实际的资金账户；试客多可根据您的账户的实际情况如实记录您的账户资金的往来情况和最终权益情况。
						<br>第二条 商家可以随时提出提现申请，每天可申请提现一次，每次申请提现金额上不封顶，商家每次提现需收取2%提现手续费，手续费最低1元，不足1元的按照1元收取，由试客多系统代收。
						<br>第三条 商家申请提现的，原则上会在3个工作日内到账；因不可抗力因素导致提现无法及时转账到商家提现账户的，试客多不承担责任；不可抗力因素指如洪水、地震、战争、政策变化等不能预见、不能避免并且不能克服的客观情况。
						<br>第四条 商家申请提现前，需绑定正确的支付宝，商家所有提现款项，试客多将通过转账的方式付款到商家所绑定的支付宝当中；因商家支付宝绑定错误、异常或者因支付宝公司问题导致无法转账成功，延误用户提现的，试客多不承担相关责任。
						<br>第五条 试客多通过有限的技术手段和基本常识，判断商家账户存在异常或者风险时，为保证试客多平台的正常经营秩序以及您的权益，有权延长您的账户的提现到账时间、规定每月可提现次数、增加提现门槛、禁止用户提现等。
					</p>
					<h3>第十章 管辖与法律适用</h3>
					<p class="pt20">
						第一条 本协议的成立、生效、履行、解释及纠纷解决，适用中华人民共和国大陆地区法律（不包括冲突法）。
						<br /> 第二条 若您和试客多之间发生任何纠纷或争议，首先应友好协商解决；协商不成的，您同意将纠纷或争议提交有管辖权的人民法院管辖。
						<br /> 第三条 本协议所有条款的标题仅为阅读方便，本身并无实际涵义，不能作为本协议涵义解释的依据。
						<br /> 第四条 本协议条款无论因何种原因部分无效或不可执行，其余条款仍有效，对双方具有约束力。
					</p>
				</div>
				<div class="bottom_c">
					<h1>试客多商家处罚规则</h1>
					<table border="1" style="
        border-collapse:collapse;">
						<tr>
							<td></td>
							<td>错误分类</td>
							<td style="width: 270px;">活动要求</td>
							<td>不符合活动要求的处罚规定</td>
							<td>不符合活动要求的扣分规定</td>
						</tr>
						<tr>
							<td rowspan="4">任务过程</td>
							<td>商品价格
								<br>类</td>
							<td>
								1.活动期间，商家不得更改活动 商品的价格，活动期间应保证店铺 商品价格与试客多价格一致（非活 动规格除外）；
								<br /> 2.商品价格应与同行价格保持一 致，禁止恶意提高价格，存在价格 虚高的情况，具体由试客多进行核 实；
								<br /> 3.同款商品重复铺货时，应保证同 款价格一致，禁止存在同款商品价 格存在严重偏差的情况；同一活动 商品，30天内活动价格波动不得超 过50%。
								<br /> 4.若卖家参加淘宝或者天猫平台 活动，活动当天，会导致价格变动 的，商家需要在活动前两天向试客多 网工作人员说明并且暂时下架活 动，以免造成卖家损失（若该活动 有预热期且预热期无法下单的，需 在预热期前两天说明），如：商 家4.30日参加天天特价活动，活动 当天商品降价，商家需要在4.28号 联系试客多工作人员暂停活动；
								<br /> 5.发布同款商品，30天内任务 价格与第一次不得相差50%以上（如：同一款连 衣裙，第一次发布80元，第二次发 布200元）
							</td>
							<td>
								每人次扣除50元；
								<br> 注：试客多返利给买家的
								<br> 金额以在试客多发布活
								<br> 动时填写的商品金额为
								<br> 准；若商品涨价，买家
								<br> 拍下后试客多有权让卖
								<br> 家退给买家差价或者从
								<br> 卖家保证金账户中扣除
								<br> 给买家多付的差价；若
								<br> 卖家降价，卖家需要自
								<br> 行承担多返款的金额无
								<br> 法追回的风险；
							</td>
							<td>每人次扣1分</td>
						</tr>
						<tr>
							<td>商品运费
								<br>类</td>
							<td>
								1.＜150元的商品必须包邮，≥150 元的商品可以选择是否包邮，发布 活动时邮费一旦确定，禁止随意修 改店铺运费状态，致使与任务运费 状态不一致，影响买家下单。
								<br /> 2.不包邮的任务，邮费金额需符合 正常邮费标准，禁止针对中奖的试客多买家恶意虚高运费价格。
								<br /> 3.未经买家同意，不得给买家发到 付件。
							</td>
							<td>
								每人次扣除50元；
								<br> 注：如果买家拍下商品包
								<br> 含运费，但是实际按照拉
								<br> 趣规则应该包邮的，试客多
								<br> 网有权让卖家退给买家多
								<br> 付的运费或者从卖家保证
								<br> 金账户中扣除给买家多付
								<br> 的运费。
							</td>
							<td>每人次扣1分</td>
						</tr>
						<tr>
							<td>上下架类</td>
							<td>
								1.任务期间，商家不允许随意下 架任务商品或者SKU，影响买家下 单（不可抗力因素除外）；活动期 间，商家不得要求随意终止活动；
								<br /> 2.若商家参加聚划算等在预热期 买家无法下单的平台活动，需在活 动预热期前两天向试客多工作人员 说明并且暂时下架活动，以免在预 热期中奖后，买家无法下单。如： 5.10日聚划算活动预热，此时买家 无法下单，商家需在5.8日联系试客多客服暂停活动；
							</td>
							<td>每人次扣除50元；
							</td>
							<td>每人次扣2分</td>
						</tr>
						<tr>
							<td>下单类</td>
							<td>
								1、禁止引导试客多用户拍与活动商 品无关的商品链接；
								<br /> 2、禁止引导中奖的试客多用户主动 放弃中奖资格
								<br /> 3、禁止引导试客多用户代拍、代刷其 他商品等超出试客多服务范围内的服 务
								<br /> 4、禁止引导试客多用户拍活动任务商 品相关联的套餐
							</td>
							<td>
								每人次扣除50元；
							</td>
							<td>每人次扣2分</td>
						</tr>
						<tr>
							<td rowspan="5">发货过程</td>
							<td>发货时间</td>
							<td>
								试客多用户下单付款后， 商家需在72小时内发货（快递爆 仓、不可抗拒因素除外）；商家以 买家已中过奖等试客多不予支持的理 由拒绝发货的（指定时间内该用户 属于不应该中奖的情况或者不应该 领奖的情况除外）
							</td>
							<td rowspan="2">
								每人次扣除50元；
								<br> 注：若核实商家超过7天未
								<br> 发货或者故意、恶意不发
								<br> 货的等情况，试客多有权
								<br> 直接扣除对应商品的保证
								<br> 金作为处罚。
							</td>
							<td rowspan="2">每人次扣2分</td>
						</tr>
						<tr>
							<td>发货快递</td>
							<td>卖家需要保证选择的发货 快递可以到买家收件地址， 否则导致的损失和费用需 要卖家承担
							</td>
						</tr>
						<tr>
							<td>商品质量</td>
							<td>
								1、商家实际发货商品须与活动商品 一致和下单商品一致，禁止拍A发 B、发空包、发试用装等给中奖的 试客多买家，活动商品需符合《试客多 网商品发布规范》
								<br /> 2、商家需保证发放产品的质量，商 品规格、净含量、质量等不允许与 活动商品和卖家店铺页面存在偏 差，活动商品需符合《试客多商品 发布规范》
								<br> 3、禁止引导试客多拍高规格商品，实 际发货为低规格商品；
							</td>
							<td>
								每人次扣除100元
							</td>
							<td>每人次扣3分</td>
						</tr>
						<tr>
							<td>错发漏发</td>
							<td>
								1.禁止漏发错发商品，如出现漏发错发 商品问题，应及时给中奖的试客多用户 进行退换货。
								<br> 2.因商家或快递原因导致试客多用户收到 商品破损，商家需及时向中奖试客多买家 进行退换货处理；
								<br> 3.退换货运费遵循“谁的责任谁承担的 原则”，因卖家原因导致的退换货， 来回运费需要卖家承担。
							</td>
							<td>
								若卖家不配合处理的，每次
								<br> 扣除50元；
								<br> 注：试客多无法核实双方商
								<br> 品具体情况的，支持买家申
								<br> 请淘宝介入处理，试客多以
								<br> 淘宝处理结果为处理依据；
							</td>
							<td>每人次扣1分</td>
						</tr>
						<tr>
							<td>收货评价</td>
							<td>
								1.禁止私下联系试客多用户强制要求 按商家提供的图片和文字进行评价
								<br /> 2.禁止私下联系试客多用户强制要求 给予中奖商品追加评价
								<br /> 3.商家应在试客多买家收货好评24小 时内确认试客评价，否则平台自动 审核，所产生的后果商家自行承担
							</td>
							<td>
								每人次扣除50元；
							</td>
							<td>每人次扣2分</td>
						</tr>
						<tr>
							<td rowspan="3">平台规则</td>
							<td>私下拉群</td>
							<td>
								1、禁止用任何方式引导试客多买家 加商家私建的QQ、微信群等
								<br /> 2、在和买家旺旺聊天过程当中，禁 止提及试客多、试用等；
							</td>
							<td>发现一次扣除200元</td>
							<td>每次扣3分</td>
						</tr>
						<tr>
							<td>商家规范</td>
							<td>
								1.任务期间，商家禁止随意要求暂 停进行中的任务（不可抗力因素除 外）
								<br /> 2.任务期间，商家禁止随意要求取 消中奖用户的中奖资格（除用户被 试客多取消中奖资格的情况除外）
								<br /> 3.用户下单后，无故联系用户申请 退款，取消用户中奖资格；
							</td>
							<td>
								每人次扣除50元
							</td>
							<td>每人次扣2分</td>
						</tr>
						<tr>
							<td>任务押金</td>
							<td>
								任务上线后，因商品涨价较高，导 致商品押金不足以给中奖用户返款 时，应在客服联系补交押金后48小 时内补交任务押金，禁止拖欠任务 押金
							</td>
							<td>
								每次扣除50元
							</td>
							<td>每次扣3分</td>
						</tr>
						<tr>
							<td>其他行为</td>
							<td>
								其他恶意
								<br /> 行为
							</td>
							<td>
								其他恶意行为造成用户或者平台损 失的；
							</td>
							<td>
								一经发现，根据情节轻重酌情处罚，
								<br />直至封号且扣除活动保证金；
							</td>
							<td>根据情况酌情扣1-12分</td>
						</tr>
					</table>
					<p>特别说明：</p>
					<ul style="list-style: none;">
						<li>1、根据买卖双方交易实际情况，为保障双方资金和交易安全，试客多有权根据实际需求暂时或者永久限制用户进行提现。</li>
						<li>2、若商家账户存在交易纠纷未处理完成且拒不处理的，在商家处理完成交易纠纷前，试客多有权拒绝卖家在试客多平台发布任何活动。</li>
						<li>3、卖家存在违规行为的，试客多有权暂停卖家发布的活动，并且结算该活动，不再允许上架。</li>
						<li>4、以上所说的每人次，是指商家的行为所影响的用户人次（即人数），如：同一个问题，影响了到了5个买家，则视为5次违规，扣除5次费用，扣除5次分数；具体举例如下：<br> 举例1：商家的商品下架，导致当天有10个中奖的用户无法领奖或领奖过程受到影响，则扣除10*50=500元，对应分数扣除10次；
							<br> 举例2：商家的商品下架，活动被暂停，导致当天应该开奖10份但是无法开奖，则扣除10*50=500元，对应分数扣除10次；
							<br> 举例3：商家商品价格变动，影响了当天10个中奖用户正常下单，导致下单价格与试客多不符或者用户下单出现疑问等情况，则扣除10*50=500元，对应分数扣除10次；
							<br> 举例4：商家同一款商品，第一次上架200元，共发布10份；30天内第二次上架90元，共发布30份；导致之前中奖的10名用户的下单价格与第二次活动价格相差50%以上，则扣除10*50=500元，分出扣除10次；
						</li>
					</ul>
				</div>
			</div>
		</script>
		<style>
			.protocol-main .bottom_c h1 {
				text-align: center;
				font-size: 35px;
				font-weight: 500;
				margin-bottom: 60px;
				margin-top: 60px;
			}
			
			.protocol-main .bottom_c td {
				text-align: left;
				background-color: #FFFFFF;
				height: 40px;
				padding: 10px;
				border: 1px solid #ddd;
			}
			
			.protocol-main .bottom_c table {
				background-color: black;
				border-collapse: collapse;
			}
			
			.protocol-main .pt20 {
				padding-top: 20px;
			}
			
			.protocol-main .tc {
				text-align: center;
			}
			
			.protocol-main .tr {
				text-align: right;
			}
			
			.protocol-main .f16 {
				font-size: 16px;
			}
			
			.protocol-main h1 {
				text-align: center;
				font-size: 35px;
				font-weight: 500;
			}
			
			.protocol-main h2 {
				font-size: 24px;
			}
			
			.protocol-main h3 {
				font-size: 20px;
				padding-top: 20px;
			}
			
			.protocol-main p {
				line-height: 29px;
				padding-bottom: 10px;
				text-align: left;
			}
			
			.protocol-main dl {
				padding-top: 10px;
			}
			
			.protocol-main dl dt {
				font-size: 16px;
				line-height: 29px;
				padding-bottom: 5px;
				text-align: left;
			}
			
			.protocol-main dl dd {
				font-size: 14px;
				line-height: 29px;
				text-align: left;
			}
			
			.protocol-main .cc_list dt {
				font-size: 14px;
			}
			
			.protocol-main .cc_list dd {
				padding-left: 35px;
			}
			
			.protocol-main td {
				border: 1px solid #ddd !important;
			}
			
			.protocol-main ul,
			li {
				text-align: left;
			}
		</style>
		<script>
			//协议弹框
            // protocolTemplate
			function showProtocolAlert() {
				var html = '<div class="protocol-shade" style="position: absolute;top: 0; left: 0;width: 100%;background: #000;opacity: 0.5; height: 300%; z-index: 1099;"></div>' +
					'<div class="protocol-shade-box" style="position: absolute; top: 10%; left: 50%; width: 700px;  z-index: 1100;background-color: #fff; border-radius: 10px; margin-left: -350px;" >' +
					'<p style="font-size: 12px; clear: both; padding:20px;">请先自己阅读并接受协议：</p>' +
					'<h2 style="text-align: center;">试客多服务协议（商家版）</h2>' +
					'<div class="protocol-shade-box-text" style="width: 610px; border: 1px solid #ddd; height: 300px; padding: 10px; overflow-y: scroll; overflow-x:hidden;  margin: 30px auto;"></div>' +
					'<div style="padding: 20px;">' +
					'<label for="protocolAgree" >' +
					'<input type="radio"  value="1" id="protocolAgree" name="protocolAgree" style="vertical-align: -1px; margin: 0 5px;">' +
					'我已仔细阅读并同意以上条款和条件' +
					'</label>' +
					'<span class="protocol-agree-tip" style="color: red; display: none; padding-left: 40px;">请仔细阅读并选中</span>' +
					'</div>' +
					'<div style="padding: 10px 20px 30px 20px; text-align: center;">' +
					'<button id="protocolAgreeBtn" type="button" style="border-radius: 5px; padding: 5px 20px;  margin-right: 30px; outline: none;">同意</button>' +
					'<button type="button" style="border-radius: 5px; padding: 5px 20px;  margin-left: 30px; outline: none;">不同意</button>' +
					'</div>' +
					'</div>';
				var body = $("body");
				var protocolTemplate = $("#protocolTemplate").html();
				body.append(html).css({
					overflow: 'hidden',
				});
				$(".protocol-shade-box-text").html(protocolTemplate);
				$(".protocol-shade-box").css({
					top: '10%',
				});
				$(".protocol-shade-box a").css({
					cursor: 'pointer'
				});

				$("#protocolAgreeBtn").on("click", function() {
					if($('input:radio[name="protocolAgree"]:checked').val()) {
						$("body").css({
							overflow: 'auto',
						});
						$(".protocol-shade, .protocol-shade-box").remove();
						store.set("protocol", "1");
					} else {
						$(".protocol-agree-tip").show();
					}

				});

			}
			$(function() {
				var newVar = request("new");
				var protocol = store.get('protocol');
				if(newVar && newVar === "1" && !protocol) {
					showProtocolAlert();
				}
			})
		</script>
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