<!DOCTYPE html>
<html>
<head>
    <title>【试客多】-用户中心</title>
    <link rel="shortcut icon" href="/saleterrace/images/favicon.ico" type="image/x-icon" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">

    <link rel="stylesheet" type="text/css" href="/saleterrace/css/zebra_dialog.css"/>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/top.css"/>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/viewer.css" />
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/layout.css"/>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/header.css"/>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/navigator.css" />
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/navigator.css"/>
    <link rel="stylesheet" type="text/css" href="/saleterrace/css/footer.css"/>

	<style>
		.order-vip-box{
			background-color: #fff;
			overflow: hidden;
			padding-bottom: 30px;
			margin-bottom: 30px;
		}
		.order-vip-box a{
			cursor: pointer;
		}
		.order-vip-box>h3{
			color: #5CCC9E;
			font-size: 25px;
			font-weight:normal;
			margin-top: 40px;
			margin-bottom: 16px;
		}
		.order-vip-box>p{
			font-size: 14px;
		}
		.sel-order-box{
			margin: auto;
			width: 670px;
			margin-top: 25px;
		}
		.sel-order-box>a{
			float: left;
			width: 300px;
			height: 78px;
			border: 2px solid #999;
			margin-bottom: 50px;
		}
		.sel-order-box>a.left-tag-a{
			margin-right: 60px;
		}
		.sel-order-box>a>p.title{
			font-size: 18px;
		}
		.sel-order-box>a>p>span{
			color: #FF5100;
			font-size: 30px;
		}
		.sel-order-box>a>p.small{
			color: black;
		}
		.sel-order-box>a.active{
			border-color: #FF5100;
			background: url("../static/images/subscript.png") no-repeat bottom right;
		}
		.click-order-box{
			margin: auto;
			width: 670px;
			margin-top: 65px;
		}
		.click-order-box>a{
			float: left;
			background-color: #59C2E6;
			color: #fff;
			width: 250px;
			height: 48px;
			text-align: center;
			font-size: 18px;
			border-radius: 5px;
		}
		.click-order-box>span{
		   float: left;
		   color: #fff;
		   width: 208px;
		   height: 60px;
		   text-align: center;
		   font-size: 18px;
		   border-radius: 5px;
		}

		.click-order-box>a>p.title{
			color: #fff;
			font-size: 18px;
			margin-top: 5px;
		}
		.click-order-box>a>p.small{
			color: #fff;
			font-size: 13px;
		}

		/*弹框样式*/
		.leftext .iconTh {
			width: 16px;
			height: 16px;
			float: left;
			background: url(../static/images/i16_sm.png) no-repeat;
			margin-top: 3px;
			margin-right: 4px
		}
		.recharge-box>div>p{
			color: #8696a7;
			font-size: 14px;
			line-height: 30px;
			font-family: "微软雅黑";
		}
		.recharge-box input[type='text'],.recharge-box select{
			width: 107px;
			height: 27px;
			border: 1px solid #e8e8e8;
			margin-top: 15px;
			margin-left: 7px;
		}

		.recharge-box>div>p>a,.recharge-box>div>p>span{
			color: #8696a7;
			font-size: 14px;
		}
		#sureSubmit{
			background-color: #59c2e6;
			border: 1px solid #e8e8e8;
			color: #FFF;
			font-size: 14px;
			margin-top: 25px;
			margin-left: 302px;
			cursor: pointer;
			padding: 5px 20px;
			margin-left: 32px;
		}
        #renewalsSubmit{
			background-color: #59c2e6;
			border: 1px solid #e8e8e8;
			color: #FFF;
			font-size: 14px;
			margin-top: 25px;
			margin-left: 302px;
			cursor: pointer;
			padding: 5px 20px;
			margin-left: 32px;
		}
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
</head>
<body>
    <div class='contentBox'  onclick='closeImg2();'>
        <div class='content' style="width: 440px; height: 640px;">
                 <a class="sPopupImgJump" target="_blank" style=" margin: auto; display: block; "><img class='sPopup' src='' alt='' style="position: absolute; left: 0; top: 0; width: 100%;"></a>
                <span onclick='closeImg();' style='color: #999;right: 50px;'>X</span>
        </div>
    </div>
        <a class="sImgJump" style=" margin: auto; display: block; "><img class="sTongZhi" src="/saleterrace/images/demo_01.jpg" alt="" style="display: block; width: 100%; height: 51px;"></a>

    <a class="sImgJump" href="#" style=" margin: auto; display: block;text-align: center;color: red;font-style: italic;text-decoration: underline;font-size: 17px; background-color: bisque;line-height: 40px;">本站所有赏金均由商家提供，旨在激励试客生成优质的买家秀内容，本站从中不获取任何盈利！</a>
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
                    <p class="user-name">15355056891</p>
                    <p class="user-tag" style="text-align: center; line-height:normal;">VIP X 天试用中</p>
                </a>
                <ul class="menu-select-box">
                    <li style="background-color: #f3f3f3; padding-left: 20px">
                        货款：<b class="clfdaa29" id="top_user_money">100</b>元 &nbsp;&nbsp;&nbsp;金币：100
                        <b class="clfdaa29" id="top_user_coin"></b>个
                    </li>
                    <li style="padding-left: 20px; clear: both;">
                        <a href="/saleterrace/zjgl_index?tab=2" class="cl000 menu-select-a">充值</a>
                    <#--<a href="./zjgl_index.ftl?tab=jquery-zclip-1.1.2" class="cl000 menu-select-a">充值</a>-->
                        <a href="/saleterrace/zjgl_index?tab=4" class="cl000 menu-select-a">提现</a>
                    <#--<a href="./zjgl_index.ftl?tab=jquery-zclip-1.1.2" class="cl000 menu-select-a">提现</a>-->
                        <a href="/saleterrace/jnbzj_index" target="_blank" class="menu-select-myCenter">缴纳保证金</a>
                    <#--<a href="./zjgl_index.ftl" target="_blank" class="menu-select-myCenter">缴纳保证金</a>-->
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:logout();" class="cl01b76c">退出登陆</a>
            </li>
        </ul>
        <input type="hidden" id="exam" value="0">
    </div>
    <div class="right-menu">
        <a href="javascript:void(0);" id="offKfqq">
            <img src="/saleterrace/images/colsed-kfqq.png" alt="">
        </a>
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
                    <p style="font-size: 12px;">周一至周日<br> 9:00-18:00</p>
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
    <a href="javascript:void(0);" id="onKfqq"><img src="/saleterrace/images/kfqqsmall.png" alt=""></a>

    <input type="hidden" id="imageRootPath" value="http://image-1254237507.image.myqcloud.com">
    <input type="hidden" id="cosAppId" value="1254237507">
    <input type="hidden" id="cosBucketName" value="image">
    <input type="hidden" id="cosDownRootPath" value="http://image-1254237507.cosgz.myqcloud.com">
    <input type="hidden" id="currentDate" value="20181022">
    <input type="hidden" id="userRole" value="true">


    <div id="Container" align="center">
        <div id="Header">
            <div class="headMenu" align="right">
            </div>
        </div>
        <div class="Content-Space-h"></div>
        <div id="Content">
            <div id="Content-Left">
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
            </div>

			<div id="Content-Space"></div>
			<div id="Content-Main">
				<div class="order-vip-box">
					<img src="/saleterrace/images/vip-banner.png" alt="">
					<img src="/saleterrace/images/explain.png" alt="" style="    margin-top: 10px;    margin-bottom: 30px;">
					<p>一次性缴纳的保证金越多，权限时间越长，优惠力度越大<br></p>
					<div class="sel-order-box" id="selectPrice">
						<a id="alongMonth" style="margin-left: 171px" class="active">
							<p class="title" style="height: 50px;line-height: 60px"> 永久权限&nbsp;&nbsp;  <span class="price">8998</span>   &nbsp;&nbsp;
								<span class="vipLevelEnum" style="display: none">MONTH_ALONG</span>
							</p>
							<p class="small">
								同平台店铺绑可绑定<b style="color: red;">100</b>家
							</p>
						</a>
						<a id="twoYear" class="left-tag-a">
							<p class="title">
								两年权限&nbsp;&nbsp;  <span class="price">2398</span>   &nbsp;&nbsp;
								<span class="vipLevelEnum" style="display: none">MONTH_TWENTY_FOUR</span>
							</p>
							<p class="small">
								同平台店铺可绑定<b style="color: red;">10</b>家
							</p>
						</a>
						<a id="oneYear">
							<p class="title">
								一年权限&nbsp;&nbsp;  <span class="price">1798</span>   &nbsp;&nbsp;
								<span class="vipLevelEnum" style="display: none">MONTH_TWELVE</span>
							</p>
							<p class="small">
								同平台店铺可绑定<b style="color: red;">5</b>家
							</p>
						</a>
						<a  id="sixMonth" class="left-tag-a">
							<p class="title">
								半年权限&nbsp;&nbsp;  <span class="price">1398</span>   &nbsp;&nbsp;
								<span class="vipLevelEnum" style="display: none">MONTH_SIX</span>
							</p>
							<p class="small">
								同平台店铺可绑定<b style="color: red;">3</b>家
							</p>
						</a>
						<a id="threeMonth">
							<p class="title" style="height: 50px;line-height: 60px">
								季度权限&nbsp;&nbsp;  <span class="price">998</span>   &nbsp;&nbsp;
								<span class="vipLevelEnum" style="display: none">MONTH_THREE</span>
							</p>
							<p class="small">
								同平台店铺可绑定<b style="color: red;">1</b>家
							</p>
						</a>
					</div>
					<div class="click-order-box">
                        <a id="handControlBtn"  style="margin-left: 210px">
                            <p class="title">转账联系客服手动缴纳保证金</p>
                            <p class="small">周一至周日9:00-18:00</p>
                        </a>
					</div>
				</div>
			</div>
		</div>
		<input id="historyLevel" type="hidden" value="">
		<div class="Content-Space-h"></div>
		<div class="Clear">
			<!--如何你上面用到float,下面布局开始前最好清除一下。-->
		</div>
		<div id="Footer">

<div class="foot_div">

    <div class="foot_div_div1">
        <a class="foot_div_div1_a1"></a>
    </div>
    <div style="text-align: center;">




    </div>

</div> </div>
	</div>
	<div id="dialogVip" style="
		background-color: #fff;
		position:absolute;
		top: 50%;
		left:50%;
		margin-left:-400px;
		margin-top: -10px;
		display: none;
		z-index:1024;
		width: 800px;
		border: 1px solid #ddd;
		border-radius: 10px;">
		<div>
			<div style="display: block;margin: 20px 0 20px 40px; ">
				<a class="leftext" style="font-size: 16px;"><span class="iconTh"></span>人工开通权限，工作时间：周一至周日9:00-18:00</a>
				<a id="closeBtn" style="cursor:pointer; float: right;font-size: 24px; margin-right: 36px;line-height: 21px;height: 21px;position: relative;top: -7px;">x</a>
			</div>
		</div>

		<div style="margin-left: 10px;">
			<h1 style="display: inline-block;
					text-align: left;
					font-size: 14px;
					color: blue;
					margin-top: 5px;
					line-height: 30px;
					background-color: antiquewhite;
					width: 400px;
					padding-left: 15px;
					margin-left: 27px"
			>第一步：转账到试客多官方账号：</h1>
		   <span style="display: block;font-size: 16px;padding:20px 25px;line-height: 24px;">





























			   			<br>
							<span style="    margin-top: 15px;    display: inline-block;    font-size: 14px;"> 平安银行
				   			<span style="color: red;font-size: 14px;">6230 5850 0000 1848 530</span>  （户名：郭天亮      开户行：平安银行杭州分行营业部）</span>
						<br>
			</span>
			<h1 style="display: inline-block;
					text-align: left;
					font-size: 14px;
					color: blue;
					margin-top: 5px;
					line-height: 30px;
					background-color: antiquewhite;
					width: 400px;
					padding-left: 15px;
					margin-left: 27px"
			>第二步：每次打完钱都必需提交如下信息，否则<span style="color: red;font-size: 14px;">无法到账</span></h1>
			</span>
		</div>

		<div style="margin-left: 40px;" class="recharge-box">
			<div >
				<p>
					转账金额：
					<input type="text" id="moneyUnionPayAccount" style="width: 107px;height: 27px;border: 1px solid #e8e8e8;margin-top: 15px;margin-left: 7px;" />
					&nbsp;元
				</p>

				<p>
					<a>支付渠道：</a>
					<span><input type="radio"  name="unionPayType" value="1">PC版网上银行</span>
					<span><input type="radio" name="unionPayType" value="2">手机银行APP</span>

				</p>
				<p>
					<a>
						转出银行卡持卡人姓名：
						<input type="text" id="UnionPayUserName" style="width: 300px;" />
					</a>

				</p>

				<p style="width: 300px;margin-left: 258px;margin-bottom: 40px;ine-height: 41px;">
					<input id="sureSubmit" type="button" value="确认提交并联系客服"/>
					<br>
					<a style="color: red;">人工开通,必须与客服会话并提醒客服对账</a>
				</p>

			</div>

		</div>
	</div>
	<div id="renewalsVip" style="
		background-color: #fff;
		position:absolute;
		top: 50%;
		left:50%;
		margin-left:-400px;
		margin-top: -10px;
		display: none;
		z-index:1024;
		width: 800px;
		border: 1px solid #ddd;
		border-radius: 10px;">
		<div>
			<div style="display: block;margin: 20px 0 20px 40px; ">
				<a class="leftext" style="font-size: 16px;"><span class="iconTh"></span>订单信息</a>
				<a id="closeRenewalsBtn" style="cursor:pointer; float: right;font-size: 24px; margin-right: 36px;line-height: 21px;height: 21px;position: relative;top: -7px;">x</a>
			</div>
		</div>

		<div style="margin-left: 40px;" class="recharge-box">
			<div >
				<p>
					版本信息：
					<span type="text" id="vipDetail" style="margin-left: 7px;"/>
				</p>
				<p>
					支付金额：
					<span type="text" id="payMoney" style="margin-left: 7px;"/>
				</p>
				<p>
					购买用户：
					<span type="text" id="payUser" style="margin-left: 7px;"/>
				</p>
				<p>
					<a>支付渠道：</a>
					<span><input type="radio" name="payType" value="1">网银转账自动开通</span>
					<span><input type="radio" name="payType" value="2">转账联系客服手动开通</span>

				</p>
				<p style="width: 300px;margin-left: 258px;margin-bottom: 40px;ine-height: 41px;">
					<input id="renewalsSubmit" type="button" value="确认支付"/>
				</p>

			</div>

		</div>
	</div>

	<script>
		$(function () {
			var vipOrderPrice = [1188,888,688,488];
			//点击更换套餐
            var historyLevel =$('#historyLevel').val();
			$(".sel-order-box>a").on("click",function () {
                $(this).addClass("active").siblings().removeClass("active");
			    if (historyLevel == 3){

				}else if (historyLevel == 6){
                    $('#threeMonth').removeClass("active");
				}else if (historyLevel == 12){
                    $('#threeMonth').removeClass("active");
                    $('#sixMonth').removeClass("active");
				}else if (historyLevel == 24){
                    $('#threeMonth').removeClass("active");
                    $('#sixMonth').removeClass("active");
                    $('#oneYear').removeClass("active");
				}
			});
			//点击提示
			var errorMsg="您已开通更高版本权限，无法开通低版本权限，您可以选择开通其他版本权限";
            $("#threeMonth").click(function(){
				if(historyLevel > 3){
                    showImportDialog("提示",errorMsg,null);
				}
            });
            $("#sixMonth").click(function(){
                if(historyLevel > 6){
                    showImportDialog("提示",errorMsg,null);
                }
            });
            $("#oneYear").click(function(){
                if(historyLevel > 12){
                    showImportDialog("提示",errorMsg,null);
                }
            });
			//网银自动转张
			$("#atuoCyberBankBtn").on("click",function () {
				var orderPrice = $(".sel-order-box>a.active").find(".price").text();
				var vipLevelEnum = $(".sel-order-box>a.active").find(".vipLevelEnum").text();
				window.open("/account/gotoAllinpayVip?act=SHANG_JIA_VIP_HUI_FEI_SYSTEM_AUTO"+"&count="+orderPrice+"&vipLevelEnum="+vipLevelEnum);
			});
			$("#handControlBtn").on("click",function () {

				var orderPrice = $(".sel-order-box>a.active").find(".price").text();
				var vipLevelEnum = $(".sel-order-box>a.active").find(".vipLevelEnum").text();
				$("#moneyUnionPayAccount").val(orderPrice);
				$("#moneyUnionPayAccount").attr("disabled","disabled");
				$("body").append("<div class='closeDialog' style='position: absolute; left: 0; top: 0; width: 100%; opacity: 0.5; background-color: #000; height: 200%;'></div>")
				$("#dialogVip").show();
			});
			//马上续费
            $("#renewalsBtn").on("click",function () {
                showQQ("提示","如需续费升级更高版本权限，请联系官网客服",null);
                /*var orderPrice = $(".sel-order-box>a.active").find(".price").text();
                var vipLevelEnum = $(".sel-order-box>a.active").find(".vipLevelEnum").text();
                if(vipLevelEnum == ''){
                    showImportDialog("提示","请选择VIP版本",null);
                    return;
				}
                $.ajax({
                    url: "/account/renewalsVip.htm",
                    data: {count: orderPrice,vipLevelEnum:vipLevelEnum},
                    dataType: "json",
                    success: function (data) {
                        if (data.flag){
                            $("body").append("<div class='closeDialog' style='position: absolute; left: 0; top: 0; width: 100%; opacity: 0.5; background-color: #000; height: 200%;'></div>")
                            $("#payUser").text(data.payUser);
                            $("#payMoney").text(data.payMoney);
                            $("#vipDetail").text(data.vipDetail);
							$("#renewalsVip").show();
                        }else {
                            showImportDialog("提示",data.msg,null);
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert("出错了")
                    }
                })*/
            });
			var typePay = 1;
            $("#renewalsSubmit").on("click",function () {
                $('#closeRenewalsBtn').click();
                var payMoney = $("#payMoney").text();
                var vipDetail = $("#vipDetail").text();
                var payUser = $("#payUser").text();
                var payType = $('input[name="payType"]:checked').val();
                if(payType == null){
                    alert("请选择支付方式");
				}
                if (payType == 1){
                    var orderPrice = payMoney;
                    var vipLevelEnum = $(".sel-order-box>a.active").find(".vipLevelEnum").text();
                    window.open("/account/gotoAllinpayVip?act=SHANG_JIA_VIP_XU_FEI_SYSTEM_AUTO"+"&count="+orderPrice+"&vipLevelEnum="+vipLevelEnum+"&type=renewals");
				}else if (payType == 2){
                    var orderPrice = payMoney;
                    var vipLevelEnum = $(".sel-order-box>a.active").find(".vipLevelEnum").text();
                    typePay=2;
                    $("#moneyUnionPayAccount").val(orderPrice);
                   /* $("#moneyUnionPayAccount").attr("disabled","disabled");*/
                    $("body").append("<div class='closeDialog' style='position: absolute; left: 0; top: 0; width: 100%; opacity: 0.5; background-color: #000; height: 200%;'></div>")
                    $("#dialogVip").show();
				}else if (payType == 3){



                }
            });
            //巴士币支付
            $("#busCoinBtn").on("click",function () {
                var orderPrice = $(".sel-order-box>a.active").find(".price").text();
                var vipLevelEnum = $(".sel-order-box>a.active").find(".vipLevelEnum").text();
                window.open("/account/gotoBusCoinPayVip?act=SHANG_JIA_VIP_HUI_FEI_SYSTEM_AUTO_MJBS"+"&count="+orderPrice+"&vipLevelEnum="+vipLevelEnum);
            });
			/*var bankStr = $("#UnionPayBankName").val();
			var bankArray = bankStr.split(",");
			var bankHtml;
			for(var i=0, j=bankArray.length; i<j; i++){
				bankHtml += '<option>'+bankArray[i]+'</option>'
			}
			$("#bankSelect").html(bankHtml);*/
			//关闭按钮
			$("#closeBtn").on("click",function () {
				$(".closeDialog").remove();
				$("#dialogVip").hide();
			});
            $("#closeRenewalsBtn").on("click",function () {
                $(".closeDialog").remove();
                $("#renewalsVip").hide();
            });
			$("#sureSubmit").on("click",function(){
			    debugger;
				var orderPrice = $(".sel-order-box>a.active").find(".price").text();
				var vipLevelEnum = $(".sel-order-box>a.active").find(".vipLevelEnum").text();
				var payChannel = $('input[name="unionPayType"]:checked').val();
				var payUserName = $('#UnionPayUserName').val();
//				var payBankName = $("#bankSelect").find("option:selected").text();
                var payBankName = "";
                var	actStr = "SHANG_JIA_VIP_HUI_FEI_SYSTEM_MANUAL";
                var type = "recharge";
				if (typePay == 2){
                    orderPrice = $("#moneyUnionPayAccount").val();
                    actStr = "SHANG_JIA_VIP_XU_FEI_SYSTEM_MANUAL";
                    type = "renewals";
				}
				if(!payChannel){
					alert("请选择支付渠道");
					return;
				}
				if(payUserName.length==0){
					alert("请输入持卡人名称");
					return;
				}
				if(orderPrice == ''){
					alert('充值金额不能为空');
					return
				}
				var reg = /^\d+(\.\d{0,2})?$/;
				if(!reg.test(orderPrice)){
					alert('请输入正确充值金额！');
					return
				}
				$.ajax({
					url: "/account/createVipPayOrder.htm",
					data: {act: actStr, count: orderPrice,paytype:'unionpay',payChannel:payChannel,payUserName:payUserName,payBankName:payBankName,vipLevelEnum:vipLevelEnum,type:type},
					dataType: "json",
					success: function (data) {
						if (data.flag){
							$(".closeDialog").remove();
							$("#dialogVip").hide();
							function okcallback() {
								window.open("http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=2852368898","_BLANK");
							}
							showImportDialog("提示","已成功提交，请联系客服进行人工充值",okcallback);
						}else {
							showImportDialog("提示",data.msg,null);
						}

					},
					error: function (XMLHttpRequest, textStatus, errorThrown) {
						alert(errorThrown);
					}
				})
			});
		});

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

        $(document).ready(function() {
            if(isGodChoose()) {
                var gotoxiuba = $("#goto-xiuba-href");
                if (gotoxiuba&&gotoxiuba.length>0){
                    gotoxiuba.css("display","inline-block");
                }
            }
        });

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
</body>

<script src="/saleterrace/js/verdor/jquery/jquery-1.10.2.js"></script>
<script src="/saleterrace/js/common/common.js"></script>
<script src="/saleterrace/js/common/page.js"></script>
<script src="/saleterrace/js/common/store.min.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/zebra_dialog/zebra_dialog.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/popdg.js"></script>
<script type="text/javascript" src="/saleterrace/js/verdor/jquery-first-event.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store+json2.min.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/store.expire.js"></script>
<script type="text/javascript" src="/saleterrace/js/common/top.js"></script>
<script type="text/javascript" src="/saleterrace/js/dist/viewer.js"></script>
<script type="text/javascript" src="https://js.users.51.la/19492995.js"></script>

</html>