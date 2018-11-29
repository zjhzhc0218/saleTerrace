<!-- 修改登陆密码 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="top: 12%;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header" style="background-color: #5ac3e8;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel" style="text-align: center;color: #fff;">修改登陆密码</h3>
            </div>

            <div class="modal-body" style="">
                <img src="/saleterrace/images/mobile_icon.png" style="margin-top: -10px">&nbsp;&nbsp;&nbsp;&nbsp;<label style="font-size: 18px ;">通过手机  15355056891</label>
            </div>

            <div class="modal-body" >
                <label style="font-size: 18px ;margin-left: 80px">图 片 验 证 码&nbsp;&nbsp;&nbsp;&nbsp;<input  type="text" placeholder="请输入图片验证码">
                <canvas id="canvas" width="120" height="40"></canvas>
                <a href="#" id="changeImg">更换</a>
                </label>
            </div>

            <div class="modal-body" >
                <label style="font-size: 18px ;margin-left: 80px">短 信 验 证 码&nbsp;&nbsp;&nbsp;&nbsp;<input placeholder="请输入短信验证码">&nbsp;&nbsp;&nbsp;&nbsp;<button style="height: 32px">获取</button>
            </div>

            <div class="modal-body" >
                <label style="font-size: 18px ;margin-left: 80px"> 修改登陆密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  placeholder="请修改登陆密码"></label>
            </div>
            
            <div class="modal-body" >
                <label style="font-size: 18px ;margin-left: 80px"> 确认登陆密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  placeholder="请再次输入密码"></label>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">确认修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <#--<button type="button" class="btn btn-primary" ng-click="signLogin()">取消修改</button>-->
                <button type="button" class="btn btn-default" data-dismiss="modal">取消修改</button>
            </div>
        </div>
    </div>
</div>

<!-- 修改支付密码 -->
<div class="modal fade" id="myModal_zf" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="top: 12%;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header" style="background-color: #5ac3e8;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel" style="text-align: center;color: #fff">修改支付密码</h3>
            </div>

            <div class="modal-body" style="">
                <img src="/saleterrace/images/mobile_icon.png" style="margin-top: -10px">&nbsp;&nbsp;&nbsp;&nbsp;<label style="font-size: 18px ;">通过手机  15355056891</label>
            </div>

            <div class="modal-body" >
                <label style="font-size: 18px ;margin-left: 80px">图 片 验 证 码&nbsp;&nbsp;&nbsp;&nbsp;<input  type="text" placeholder="请输入图片验证码">
                    <canvas id="canvas" width="120" height="40"></canvas>
                    <a href="#" id="changeImg">更换</a>
                </label>
            </div>

            <div class="modal-body" >
                <label style="font-size: 18px ;margin-left: 80px">短 信 验 证 码&nbsp;&nbsp;&nbsp;&nbsp;<input placeholder="请输入短信验证码">&nbsp;&nbsp;&nbsp;&nbsp;<button style="height: 32px">获取</button>
            </div>

            <div class="modal-body" >
                <label style="font-size: 18px ;margin-left: 80px"> 修改支付密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  placeholder="请修改支付密码"></label>
            </div>

            <div class="modal-body" >
                <label style="font-size: 18px ;margin-left: 80px"> 确认支付密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  placeholder="请再次输入密码"></label>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">确认修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <#--<button type="button" class="btn btn-primary" ng-click="signLogin()">取消修改</button>-->
                <button type="button" class="btn btn-default" data-dismiss="modal">取消修改</button>
            </div>
        </div>
    </div>
</div>

<!-- 修改绑定QQ -->
<div class="modal fade" id="myModal_qq" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="top: 12%;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header" style="background-color: #5ac3e8;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel" style="text-align: center;color: #fff">修改会员QQ</h3>
            </div>

            <div class="modal-body" >
                <div>
                    <div>
                        <img src="/saleterrace/images/confirmation.png" style="margin-left: 130px">&nbsp;&nbsp;&nbsp;
                        <input type="text" placeholder="请输入要更换的QQ号" style="font-size: 20px;">
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">确认修改</button>&nbsp;&nbsp;&nbsp;
                <button type="button" class="btn btn-default" data-dismiss="modal">取消修改</button>
            </div>
        </div>
    </div>
</div>

<!-- 修改紧急联系人 -->
<div class="modal fade" id="myModal_phone" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="top: 12%;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header" style="background-color: #5ac3e8;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel" style="text-align: center;color: #fff">修改紧急联系号码</h3>
            </div>

            <div class="modal-body" >
                <div>
                    <div>
                        <img src="/saleterrace/images/confirmation.png" style="margin-left: 130px">&nbsp;&nbsp;&nbsp;
                    <#--<div>亲，为了方便平台能第一时间联系到您，平台邀请您设置紧急联系人号码</div>-->
                        <input type="text" placeholder="请输入紧急联系人手机号码" style="font-size: 20px;">
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">确认修改</button>&nbsp;&nbsp;&nbsp;
                <button type="button" class="btn btn-default" data-dismiss="modal">取消修改</button>
            </div>
        </div>
    </div>
</div>

<!-- 修改店铺名称 -->
<div class="modal fade" id="myModal_dpname" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="top: 12%;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header" style="background-color: #5ac3e8;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel" style="color: #fff;text-align: center">修改店铺名称</h3>
            </div>

            <div class="modal-body" style="">
                <div style="font-size: 16px;height: 35px;margin-left: 50px;margin-top: 10px;margin-bottom: 5px;"><img src="/saleterrace/images/step1_icon.png">&nbsp;&nbsp;掌柜旺旺：&nbsp;&nbsp;&nbsp;<b class="dp_account" >{{editshopParams.shopShopkeepername}}</b></div>
                <div style="font-size: 16px;height: 35px;margin-left: 50px;margin-top: 20px"><img src="/saleterrace/images/step2_icon.png">&nbsp;&nbsp;店铺名称：<input type="text" placeholder="请输入店铺名称：" ng-model="editshopParams.shopStorename">&nbsp;&nbsp;(务必与宝贝显示的店铺名一致)</div>
                <p style="margin-top: 20px;margin-left: 50px">店铺后台截图:
                <div class="upload-button" type="file" capture="camera" ngf-select="editshopParams.uploadFiles($file,$errorfile)" ng-model="editshopParams.file" accept="image/jpg,image/JPG,image/jpeg,image/gif,image/png" ngf-max-height="2000" ngf-max-size="3MB">
                    <img  style="height: 150px;width: 150px" class="uploadpic img-rounded" ng-src="{{editshopParams.imgSrc}}" ng-model="editshopParams.img"/>
                    <div class="glyphicon glyphicon-camera uploadpic-label">点击上传照片</div>
                </div>
                </p>
                <p style="margin-left: 50px">1、这里设置的发货地址将做为平台空包时的默认发货地址<br/>
                    2、您也可在发送平台快递的时候更改</p>
            </div>

            <div class="modal-footer">
            <#--<button type="button" class="btn btn-default" data-dismiss="modal">取消修改</button>-->
                <button type="button" class="btn btn-default" ng-click="shopParams.editShop()" >确认修改</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消修改</button>
            </div>
        </div>
    </div>
</div>

<#--添加淘宝新店铺-->
<div class="modal fade" id="myModal_tb" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="top: 12%;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header" style="background-color: #5ac3e8;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <div style="text-align: center">
                    <h4 class="modal-title" id="myModalLabel" style="color: #fff"><img src="/saleterrace/images/i36_dpjt01.png" style="">&nbsp;&nbsp;&nbsp;截图绑定(人工审核)</h4>
                </div>
            </div>

            <div class="modal-body" >
                <div>
                    <div>
                        <div><h4 style="">绑定店铺并认证</h4></div>
                    <#--<p>（仅接手活动的试客可以看到，不会被泄露）</p>-->
                        <div style="font-size: 16px;height: 35px;margin-left: 50px;margin-top: 10px;margin-bottom: 5px;"><img src="/saleterrace/images/step1_icon.png">&nbsp;&nbsp;掌柜旺旺：<input type="text" ng-model="shopParams.shopShopkeepername"   placeholder="请输入掌柜旺旺：">&nbsp;&nbsp;(*店铺名称绑定后不可更改)</div>
                        <div style="font-size: 16px;height: 35px;margin-left: 50px;margin-top: 5px;margin-bottom: 5px;"><img src="/saleterrace/images/step2_icon.png">&nbsp;&nbsp;店铺名称：<input type="text" ng-model="shopParams.shopStorename" placeholder="请输入店铺名称：">&nbsp;&nbsp;(务必与宝贝显示的店铺名一致)</div>
                        <div style="font-size: 16px;height: 35px;margin-left: 50px;margin-top: 5px;margin-bottom: 5px;"><img src="/saleterrace/images/step3_icon.png">&nbsp;&nbsp;店铺网址：<input type="text" ng-model="shopParams.shopStoreUrl" placeholder="请输入店铺网址：">&nbsp;&nbsp;(*店铺地址绑定后不可更改)</div>
                        <div style="font-size: 15px;height: 185px;margin-left: 50px;">
                            <p>店铺后台截图:

                                <#--<input type="file"  onchange='angular.element(this).scope().shopParams.fileChanged(this)'  style="margin-top: -22px;width: 180px;margin-left: 100px"><a style="font-size: 18px;margin-top: -25px;margin-left: 300px">查看示例图</a>-->
                                <div class="upload-button" type="file" capture="camera" ngf-select="shopParams.uploadFiles($file,$errorfile)" ng-model="shopParams.file" accept="image/jpg,image/JPG,image/jpeg,image/gif,image/png" ngf-max-height="2000" ngf-max-size="3MB">
                                    <img  style="height: 150px;width: 150px" class="uploadpic img-rounded" ng-src="{{shopParams.imgSrc}}" ng-model="shopParams.img"/>
                                    <div class="glyphicon glyphicon-camera uploadpic-label">点击上传照片</div>
                                </div>

                            </p>
                        </div>
                        <p style="font-size: 14px;margin-top: 20px;margin-left: 50px">提示：店铺绑定审核时间1个工作日左右，若超过一个工作日请联系客服！</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" ng-click="shopParams.insert()" >提交审核</button>
            <#--<button type="button" class="btn btn-default" data-dismiss="modal">取消审核</button>-->
            </div>
        </div>
    </div>
</div>


<style>
    .modal-header .close span {
        font-size: 28px;
    }
</style>

<#--添加黑名单-->
<div class="modal fade" id="myModal_black" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="top: 12%;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header" style="background-color: #5ac3e8;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <div>
                <#--<img src="/saleterrace/images/i36_dpjt01.png" style="margin-left: -200px;">-->
                    <h4 class="modal-title" id="myModalLabel" style="color: #fff;text-align: center;">添加黑名单</h4>
                </div>
            </div>

            <div class="modal-body" style="margin-left: 60px">
                <div>
                    <div style="">
                        选择类别：
                        <select>
                            <option>淘宝/天猫</option>
                        </select>
                    </div>

                    <div style="margin-top: 20px;margin-left: -45px">淘宝账号(旺旺ID)：<input id=""></div>

                    <div style="margin-top: 20px">
                        拉黑原因：
                        <select>
                            <option>评论被删除</option>
                            <option>淘宝客</option>
                            <option>申请退款</option>
                            <option>垫付金额填错</option>
                            <option>拍下未付款</option>
                            <option>拍错宝贝</option>
                            <option>未按要求评价</option>
                            <option>付款方式不对</option>
                            <option>预售活动未付款</option>
                            <option>预售活动提前付款</option>
                            <option>自定义</option>
                            <option>空包</option>
                            <option>排名找不到</option>
                        </select>
                    </div>

                    <div style="margin-top: 20px">
                        <div>填写原因:</div>
                        <textarea placeholder="最多100字" style="width: 290px;height: 77px;margin-left: 78px;margin-top: -20;"></textarea>
                    </div>

                    <div style="margin-top: 10px">
                        <span style="margin-left: 28px">截图:</span>
                        <div style="width: 200px;margin-left: 100px;margin-top: -20px">
                            <a href="#"><img src="/saleterrace/images/i88_img.png" style="cursor: pointer;margin-left: -20px">上传截图</a>
                            <a href="/saleterrace/images/plbs.png" target="_blank" style="text-decoration:underline">*示例图</a>
                        </div>

                        <#--<div><span style="color: red;position: absolute;left: 150px;top: 400px;">请正确填写拉黑的具体原因，平台针对不同情况的处罚措施不同</span></div>-->
                        <div style="margin-left: 50px;margin-top: 10px"><span style="color: red;">请正确填写拉黑的具体原因，平台针对不同情况的处罚措施不同</span></div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">确认</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>




