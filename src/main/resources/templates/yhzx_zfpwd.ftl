<div class="reset_payPwd_div" align="center" style="margin: 0 20px">

    <div class="title_div" align="left"><p>试客多|<span>重置支付密码</span></p></div>
    <div class="title_div2" align="left"><div class="halfDiv"><img src="/saleterrace/images/step1.png"><b>选择重置方式</b></div><div class="halfDiv" align="right"><span>您正在找回15355056891的支付密码</span></div></div>
    <div class="reset_payPwd_content_div" align="center">
        <div class="finding_ways">
            <div class="floatLeft" style="margin-left: 100px">请选择重置方式：<img src="/saleterrace/images/success_icon.png"></div>
            <div class="floatLeft">
                <div class="check_surrounding" align="center">基于对您账户及操作环境的检测, 我们将提供以下方式供您选择</div>
                <div class="forget_finding">
                    <div class="halfDiv" align="left"><span>我忘记支付密码了</span><br><span class="tip_label">忘记密码或是密码被锁定了</span></div>
                    <div class="halfDiv arrow_div" align="right"><b>›</b></div>
                </div>
                <div class="remember_finding">
                    <div class="halfDiv" align="left"><span>我记得原来的密码</span></div>
                    <div class="halfDiv" align="right"><b>›</b></div>
                </div>
            </div>
        </div>
        <div class="set_payPwd hidden">
            <form id="passwordF">
                <input type="hidden" id="role" value="1">
                <div class="floatLeft newPwd_field" align="right">原始密码：</div>
                <div class="floatLeft" style="position:relative;">
                    <input name="passwordCheck" id="passwordOld" type="password" class="oldPayPwd_text"><!-- <span class="tip_label">支付密码长度大于6</span> -->
                    <span class="pwdm" onclick="showPwd(this)"></span>
                </div>
                <div class="floatLeft newPwd_field" align="right">新密码：</div>
                <div class="floatLeft" style="position:relative;">
                    <input name="password" id="passwordNew" type="password" class="newPayPwd_text">
                    <span class="pwdm" onclick="showPwd(this)"></span>
                </div>
                <div class="floatLeft newPwd_field" align="right">重复密码：</div>
                <div class="floatLeft" style="position:relative;">
                    <input id="passwordNew2" type="password" class="newPayPwd_text2">
                    <span class="pwdm" onclick="showPwd(this)"></span>
                </div>
                <div class="floatLeft newPwd_field">&nbsp;</div>
                <div class="floatLeft">
                    <input id="passwordNewS" type="button" value="确 定" class="confirm_button">
                    <input id="passwordPrv" type="button" value="返 回" class="confirm_button" style="margin-left: 71px">
                </div>
            </form>
        </div>
        <form id="passwordF2">
            <div class="safety_check hidden" align="left">
                <div class="floatLeft"><img src="/saleterrace/images/mobile_icon.png"></div>
                <div class="floatLeft" style="margin-top: 15px;">
                    通过手机&nbsp;&nbsp;<span style="margin-left: 10px;">15355056891</span><br>
                    <input type="hidden" id="phoneNoId" value="15355056891"/>
                    图片验证码&nbsp;&nbsp;<input type="text" id="verifyCode" style="width: 115px;" name="verifyCode" class="code_text"/><img id="imgObj" alt="验证码" style="margin-left: 10px;" class="validate_code" src="/saleterrace/images/code1.jpg" onClick="changeImg()" /><br>
                    <input name="checkW" id="smsCode" type="text" style="width: 170px;" class="code_text"><input id="sendSmsId" type="button" value="获取短信验证码" class="getCode_button"><br>

                    <input type="button" value="下一步" class="next_step_button">
                    <input type="button" value="上一步" class="prev_step_button"><br>
                    <a id="otherway" href="javascript:void(0);">选择其他找回方式>></a>
                </div>
            </div>
            <div class="set_newPwd hidden">
                <div class="floatLeft newPwd_field" align="right">新密码：</div>
                <div class="floatLeft" style="position:relative;">
                    <input name=password id="password3" type="password" class="newPwd_text">
                    <span class="pwdm" onclick="showPwd(this)"></span>
                </div>
                <div class="floatLeft newPwd_field" align="right">重复密码：</div>
                <div class="floatLeft" style="position:relative;">
                    <input id="password4" type="password" class="newPwd_text2">
                    <span class="pwdm" onclick="showPwd(this)"></span>
                </div>
                <div class="floatLeft newPwd_field">&nbsp;</div>
                <div class="floatLeft">
                    <input id="passwordS2" type="button" value="确 定" class="confirm_button">
                    <input id="passwordPrv2" type="button" value="返 回" class="confirm_button" style="margin-left: 71px">
                </div>
            </div>
        </form>
    </div>
    <!-- <div class="foot_div"></div> -->
</div>
