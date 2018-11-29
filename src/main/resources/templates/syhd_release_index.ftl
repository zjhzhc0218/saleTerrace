<div id="hdfb_div" role="tabpanel" class="tab-pane content" >
    <div class="leadBox"></div>
    <div class="lead">
        <input type="hidden" id="emergency" value="13706827563">
        <input type="hidden" id="forbidEmergency" value="">
    </div>
    <div class="role" >
        <h2 style="margin-bottom: 2px">发布活动 </h2>
    </div>
    <div class="select">
        <#--<h2 style="float:right">第一步：选择活动类型</h2>-->
        <h2 style="margin-top: 0px">第一步：选择活动类型</h2>
        <#--<span class="select_span" style="">第一步：选择活动类型</span>-->
        <div class="missonType">
            <h3><span>1</span>选择活动类型：</h3>
            <ul class="bigTag">
                <li class="active" jobType="TASK"><span></span>试用活动（试客垫付）</li>

            </ul>
            <p class="remind" style="width: 720px;margin-left: -60px">
                <img src="/saleterrace/images/i16_sm.png" alt="">
                友情提示：本平台为拍A发A的试用平台，禁止一切虚假刷单行为。
            </p>
            <h3><span>2</span>选择活动小类：</h3>

            <div class="vip-select-box">
                <ul class="misson TASK" style="display: block;margin-left: 150px">
                    <li style="display: block;">
                        <div class="tuijian-img"></div>
                        <div class="diamond-img" style="margin-left: -62px;"></div>
                        <i></i><p style="width: 800px;margin-left: -900">淘宝/天猫<em>手机APP</em>活动<span>（<em>仅限优质花呗试客！</em>）</span></p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="store_select_div">
            <h2>第二步：选择店铺</h2>
            <ul class="store">
                <li>
                    <a style="color: #5bbff3;text-decoration: underline;font-size: 15px;float: left" href="/saleterrace/dpgl_index?rt=n" target="_self">去店铺管理绑定店铺</a>
                </li>
                <#--<div id="shopList" class="shopType" style="display: none">-->
                <div id="shopList" class="shopType">
                    <ul class="shop">
                        <li style="margin-bottom: 0px;" class="shopList">
                            <div>
                                <img src="/saleterrace/images/tmail_icon.png" style="margin-left: -730px">
                                <i shopName="thinklittle旗舰店" style="margin-top: 12px"></i><span>thinklittle旗舰店</span>
                            </div>
                        </li>
                    </ul>
                </div>

                <div id="tbShopList" class="shopType" style="display: none">
                    <ul class="shop">
                        <li style="margin-bottom: 0px;" class="shopList">
                            <div>
                                <img src="/saleterrace/images/tmail_icon.png" style="margin-left: -770px;margin-top: -10px">
                                <i shopName="thinklittle旗舰店"></i><span>thinklittle旗舰店</span>
                            </div>
                        </li>
                    </ul>ß
                </div>

                <li style="margin-top:25px;">
                    <h3 id="itemLinkShow">宝贝链接：</h3>
                    <input type="text" id="itemUrl" placeholder="请将宝贝的链接地址粘贴于此" class="show_item_detail" style="margin-top: 10px;margin-left: -250px">
                    <br>
                    <#--<span style="color: red;margin-left: 20px;font-size: 13px;">高级引流活动此处填写链接为进店宝贝链接，其他活动为下单宝贝链接，拼多多活动无需填写宝贝链接！</span>-->
                </li>
            </ul>
        </div>
    </div>
    <div style="margin-bottom: 10px;">
        <span style="font-size: 17px;font-style: italic;color: red;text-decoration:underline;text-align: center;margin-left: 30px; ">本站仅支持拍A发A，禁止一切拍A发B和虚假发货的行为</span>
    </div>
    <input type="submit" value="下一步" id="next">
</div>
<!--店铺认证相关页面-->
<div class="shopAddBox" id="shopAddBox">
    <a href="javascript:;" class="close" onclick="closeShowAdd()">X</a>
    <div class="shopBox">
        <div class="success_back hidden">
            <div style="height: 165px;">
                <img style="margin-top: 60px;margin-left: 310px;" src='/saleterrace/images/i88_cg.png'/>
            </div>
            <p style='width:100%;margin-top:32px;font-size:20px;color:#969BAB;text-align: center;'>
                店铺绑定申请已提交，客服审核需要1个工作日左右~</p>
            <p style='width:100%;margin-top:15px;font-size:20px;color:#969BAB;text-align: center;'>需要马上发布活动“<a
                    href="javascript:goCodeCheck()"></a>验证码绑定”方式绑定店铺，无需等待！</p>
            <div id='contact_service' style='float: left;cursor: pointer;margin-top: 60px;background-color: #59C2E6;width: 220px;height: 50px;border-radius: 5px;margin-left: 111px;'>
                <p style='font-size: 18px;line-height: 50px;text-align: center;color: #FFFFFF'>联系客服</p></div>
            <div id='store_manage' style='float: left;cursor: pointer;margin-top: 60px;background-color: #59C2E6;width: 220px;height: 50px;border-radius: 5px;margin-left: 57px;'>
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
                        <span>（<b>*</b>店铺旺旺绑定后不可更改）</span>
                    </div>
                    <div class="yzm_input">
                        <img src="/saleterrace/images/step2_icon.png">
                        <span>请输入宝贝链接：</span>
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

