<!DOCTYPE >
<html ng-app="saleterrace">
	<head>
        <title>【试客多】-店铺管理</title>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
        <#include "//header_css.ftl">
	</head>

	<body>
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
		<a class="sImgJump" href="#" style=" margin: auto; display: block;text-align: center;color: red;font-style: italic;text-decoration: underline;font-size: 17px; background-color: bisque;line-height: 40px;">本站所有赏金均由商家提供，旨在激励试客生成优质的买家秀内容，本站从中不获取任何盈利！</a>
		<div class="top">
			<a href="#grxx_div">
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
							<a href="/saleterrace/zjgl_index?tab=1" class="cl000 menu-select-a">充值</a>
							<#--<a href="./zjgl_index.ftl?tab=jquery-zclip-1.1.2" class="cl000 menu-select-a">充值</a>-->
							<a href="/saleterrace/zjgl_index?tab=3" class="cl000 menu-select-a">提现</a>
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
		<input type="hidden" id="currentDate" value="20181021">
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
						<#--<li class="menu_selected">-->
						<li class="menu_li">
                            <a href="#grxx_div" role="tab" data-toggle="tab" ><i class="grxx"></i>
                            <span>用户中心</span></a>
						</li>
                        <li class="menu_li add">
                            <a class="active"  role="tab" data-toggle="tab" href="#mainDiv" id="dpgl"><i class="dpbt"></i>
                            <span>店铺管理</span></a>
						</li>
						<li class="menu_li">
                            <a href="#Content-Main-syhd" role="tab" data-toggle="tab"><i class="fbrw"></i>
                            <span>试用活动发布</span></a>
						</li>
						<li class="menu_li">
                            <a  href="#Content-Main-syhdgl"  role="tab" data-toggle="tab" ><i class="yfbrw"></i>
                            <span>试用活动管理</span></a>
						</li>

						<li class="menu_li">
                            <a href="#black_div"  role="tab" data-toggle="tab" ><i class="hmd"></i>
                            <span>试客黑名单</span>
                            <div class="new" style="left:90px;"></div></a>
						</li>

						<#--<li  onclick="change_color(this)">-->
                            <#--<a href="/saleterrace/ckzd_index" id="ckzd"><i class="ckzd"></i>-->
                            <#--<span>查看账单</span></a>-->
						<#--</li>-->
						<#--<li>-->
                            <#--<a href="/saleterrace/zjgl_index"><i class="zjgl"></i>-->
                            <#--<span>资金管理</span></a-->
						<#--</li>-->
						<#--<li>-->
                            <#--<a  href="/saleterrace/ptzf_index" id="ptzf"><i class="ckzz"></i>-->
                            <#--<span>平台资费说明</span></a>-->
						<#--</li>-->

						<#--<li>-->
                            <#--<a  href="/saleterrace/tjzjb_index" id="tjzjb"><i class="rcd"></i>-->
							<#--<img src="/saleterrace/images/hot.gif" alt="" style="position: relative;top: -2px;left: 5px;">-->
                            <#--<span>推荐赚金币</span></a>-->
						<#--</li>-->
						<#--<!--<li href="/popular/popular.htm?pg=task.pcFlow" target="_blank">&ndash;&gt;-->
						<#--<li>-->
                            <#--<a href="https://burenqi.com/task-pc-flow" target="_blank"><i class="i16_brq" ></i>补人气</a>-->
							<#--<!--<span>补人气</span>&ndash;&gt;-->
						<#--</li>-->
						<#--<li>-->
							<#--<a href="http://www.chapaiming.com/" target="_blank" style="overflow:hidden;display:block;margin:0;">-->
								<#--<i class="i16_cpm"></i>-->
								<#--<span>查排名</span>-->
							<#--</a>-->
						<#--</li>-->
						<#--<li>-->
							<#--<a href="http://www.maijiabus.com/" target="_blank" style="overflow:hidden;display:block;margin:0;">-->
								<#--<i class="i16_mjbs"></i>-->
								<#--<span>流量捕手</span>-->
							<#--</a>-->
						<#--</li>-->
						<#--<li>-->
							<#--<a href="sjxy_index.ftl" style="overflow:hidden;display:block;margin:0;" id="sjxy">-->
								<#--<i class="i16_protocol"></i>-->
								<#--<span>商家电子协议</span>-->
							<#--</a>-->
						<#--</li>-->
					</ul>
					<#--<a class="sLeftImgJump" target="_blank" style="float: left; margin: 10px 0 0 0;">-->
						<#--<img class="sLeft " src="/saleterrace/images/lwds.jpg" alt="" style="width: 190px; height: 62px;">-->
					<#--</a>-->
					<input type="hidden" id="nav_hidden" value="1" />
				</div>
			    <div id="Content-Space"></div>
				<div id="Content-Main"  class="tab-content container" >
					<!-- center begin -->
                    <div  ng-controller="shopController"  role="tabpanel" class="tab-pane active" class="content" class="mainDiv" id="mainDiv">
                        <div class="dp_list_div">
                            <div class="addDp_div" style="height: 60px;margin-top: 40px">
                                ;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div style="width: 360px;display: inline;margin-left: -150px"><img src="/saleterrace/images/addDp_bg.png"><a style="font-size: 12px;margin-left: -100px" href="#myModal_tb" role="tab" data-toggle="tab">添加淘宝新店铺</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <div style="width: 360px;display: inline"><img src="/saleterrace/images/addDp_bg.png"><a style="font-size: 12px;margin-left: -100px" href="#myModal_jd" role="tab" data-toggle="tab" >添加京东新店铺</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <div style="width: 360px;display: inline"><img src="/saleterrace/images/addDp_bg.png"><a style="font-size: 12px;margin-left: -100px"  href="#myModal_pdd" role="tab" data-toggle="tab" >添加拼多多新店铺</a></div>
                                <#--<input type="button" class="addDp_button" value="添加京东新店铺" onclick="addStore('jd')" style="left: 95px">-->
                                <#--<input type="button" class="addDp_button" value="添加拼多多新店铺" onclick="addStore('pdd')" style="left: 165px">-->
                                <#--<input type="button" class="addDp_button" value="添加拼多多新店铺" onclick="addStore('pdd')" style="left: 165px">-->
                            </div>
                            <div class="dp_div" align="left">
                                <div class="dp_title_div">
                                    <div>
                                        <div id="tabsSwitch1" align="left" class="tabsSwitchDiv1" style="margin-top: 0px;height: 34px">
                                                <ul class="tabsSwitch_ul">
                                                    <li value="0" class="tabsSwitchSeletedLi" id="tbStore">管理淘宝店铺</li>
                                                    <li value="1" class="tabsSwitchUnSeletedLi" id="jdStore">管理京东店铺</li>
                                                    <li value="2" class="tabsSwitchUnSeletedLi" id="pddStore">管理拼多多店铺</li>
                                                </ul>
                                        </div>
                                    </div>
                                </div>
                                <ul class="dp_head">
                                    <li class="dp_li1" style="width: 195px;">掌柜旺旺</li>
                                    <li class="dp_li7" style="width: 180px" >店铺名称</li>
                                    <li class="dp_li2" style="width: 125px">绑定时间</li>
                                    <li class="dp_li7" style="width: 180px">试用间隔时间设置</li>
                                    <li class="dp_li3" style="width: 110px">状态</li>
                                    <li class="dp_li6" style="width: 160px;text-align: center">操作</li>
                                </ul>
                                <ul class="dp_headJD" style="display: none">
                                    <li class="dp_li1" style="width: 195px;">店铺名称</li>
                                    <li class="dp_li7" style="width: 180px"></li>
                                    <li class="dp_li2" style="width: 125px">绑定时间</li>
                                    <li class="dp_li7" style="width: 180px">试用间隔时间设置</li>
                                    <li class="dp_li3" style="width: 110px">状态</li>
                                    <li class="dp_li6" style="width: 160px;text-align: center">操作</li>
                                </ul>
                                <div id="storeInfo">
                                    <ul class="dp_info">
                                        <li class="dp_li1" style="width: 195px;padding-left: 30px"><div>泰嘉boy</div></li>
                                        <li class="dp_li7" style="width: 180px;"><div>小算珠婴童店</div></li>
                                        <li class="dp_li2" style="width: 125px;">2018-06-15</li>
                                        <li class="dp_li7" style="width: 180px;"><div><span>30天</span><button class="repurchaseDay" onclick="setRepurchaseDay(40999,&quot;30&quot;)">设置</button></div></li>
                                        <li class="dp_li3" style="width: 110px;"><span class="statusStart">已启用</span></li>
                                        <li class="dp_li6" style="position: relative;width: 160px;">
                                            <img src="/saleterrace/images/start.png">
                                            <input type="hidden" id="storeType" value="2">
                                            <div style="position: absolute;top: 23px;left: 23px;color: #59C2E6;width: 110px;height: 0px">
                                                <a href="#myModal_dpname" role="tab" data-toggle="tab" style="color: #59C2E6;">编辑</a>
                                            </div>
                                        </li>
                                        <li class="dp_hidden" column-id="status" value="1"></li>
                                        <li class="dp_hidden" column-id="version" value="18" ></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- center end -->
                <#--用户中心-->
                    <#include "//yhzx_index.ftl">
                <#--试用活动发布-->
              		<#include "//syhd_release_index.ftl">
                <#--&lt;#&ndash;试用活动管理&ndash;&gt;-->
                	<#include "//syhd_management_index.ftl">
					<#--试客黑名单-->
                    <#include "//black_index.ftl">

                </div>
            </div>
		</div>

		<script type="text/html" id="storeInfoRow">
			<ul class="dp_info">
				<li class="dp_li1">
					<#--<div data-content-text="wangwangid"></div>-->
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
					<#--<div data-content-text="wangwangid">小算珠婴童店</div>-->
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

        <#include "//protocolTemplate.ftl">
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

			</div>
		</div>

	</body>
    <#include "//footer_js.ftl">

</html>