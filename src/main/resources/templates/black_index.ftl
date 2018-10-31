<#--<#include "//modal.ftl">-->
<#--<#include "//modal_js.ftl">-->
<!-- center begin -->
<div id="black_div" align="center"  role="tabpanel" class="tab-pane "class="content" >
    <div class="dp_list_div">
        <div class="addDp_div" align="left">
            <input type="button" class="addDp_button" value="添加黑名单">
            <#--<a href="#myModal_black" class="addDp_button">添加黑名单</a>-->
            <p>提示：添加黑名单旺旺号，该旺旺号所属账号将永远无法接手自己发布的活动（包括试用活动和浏览活动）。</p>
        </div>
        <div class="dp_div" align="left">
            <div class="dp_title_div">
                <p>黑名单管理</p>
            </div>
            <div style="float: right;">
                <div style="position: relative;
                            top: -7px;
                            margin-top: -35px;
                            margin-right: 115px;
                            background: #6EC9EA;
                            padding: 8px;
                            border-radius: 5px;
                            cursor: pointer;">
                        <a style="color: #fff; font-size: 14px;" target="_blank" href="/seller/blacklist/batch-black-template.htm">模板导出</a>
                    </div>
            </div>
            <div style="float: right;">
                <form id="patchUploadForm" enctype="multipart/form-data" method="post">
                    <input style="display: none;" id="blackFile" name="blackFile" type="file" onchange="submitPatchUploadForm()">
                </form>
                <div style="position: relative;
                            top: -7px;
                            margin-top: -35px;
                            margin-right: 15px;
                            background: #6EC9EA;
                            padding: 8px;
                            border-radius: 5px;
                            color: #fff;
                            font-size: 14px;
                            cursor: pointer;"
                     onclick="click2Other('blackFile')">
                    批量导入
                </div>
            </div>
            <ul class="dp_head">
                <li class="dp_li1">账号类型</li>
                <li class="dp_li1">买家账号</li>
                <li class="dp_li7">用户名称</li>

                <li class="dp_li4">拉黑时间</li>
                <li class="dp_li3">拉黑原因</li>
                <li class="dp_li3">状态</li>
                <li class="dp_li6">操作</li>
            </ul>
            <div id="blacklist">
                <ul class="dp_info">
                <li class="dp_li1"><div>淘宝/天猫</div></li>
                <li class="dp_li1"><div>zero</div></li>
                <li class="dp_li7"><div>未绑定</div></li>

                <li class="dp_li4"><div>2018-10-26 16:21:49</div></li>
                <li class="dp_li3" style="display:table;"><div style="display:table-cell;vertical-align: middle;line-height: normal;color: #7b8da0;font-size: 14px;">评价被删除</div></li>
                <li class="dp_li8"><div>有效黑名单</div></li>
                <li class="dp_li6"><a style="color: #6EC9EA" href='javascript:removeBlacklist(144496,"zero")'>删除黑名单</a></li>
                </ul>
            </div>
        </div>
    </div>
  </div>
<!-- center end -->

<script type="text/html" id="blacklistRow" >
<ul class="dp_info">
<li class="dp_li1" ><div data-content-text="typeName"></div></li>
<li class="dp_li1" ><div data-content-text="blankName"></div></li>
<li class="dp_li7" ><div data-content-text="blankUsername"></div></li>

<li class="dp_li4" ><div data-content-text="createTime"></div></li>
<li class="dp_li3" style="display:table;" data-content="assessReason"></li>
<li class="dp_li8" ><div data-content-text="status"></div></li>
<li class="dp_li6" data-content="operator" ></li>
</ul>
</script>
<div class="addBlackName add_black_background hidden" ></div>
<div class="addBlackName add_black_content hidden">
<form id="infoForm" name="infoForm" enctype="multipart/form-data" method="post">
<div>
<div class="add_black_title" >添加黑名单</div>
<div>
    <div class="add_black_wwid_left">选择类别：</div>
    <div class="add_black_wwid_right" >
        <select class="reason_for_black_select" name="type" id="blackType">
            <option value="1">淘宝/天猫</option>
            <option value="2">京东</option>
            <option value="3">拼多多</option>
        </select>
    </div>
    <div class="add_black_wwid_left TBJD">淘宝账号（旺旺ID）：</div>
    <div class="add_black_wwid_left hidden PDD">子活动编号：</div>
    <div class="add_black_wwid_right" ><input type="text" id="blankName" name="blankName"></div>
    <div class="add_black_reason_left">拉黑原因：</div>
    <div class="add_black_reason_right">
        <select class="reason_for_black_select" id="assessReason" name="assessReason" >


                    <option class="TBJD" value="PING_JIA_BEI_SHAN_CHU">评价被删除</option>



                    <option class="TBJD" value="TAO_BAO_KE">淘宝客</option>



                    <option class="TBJD" value="SHEN_QING_TUI_KUAN">申请退款</option>



                    <option class="TBJD" value="DIAN_FU_JIN_E_TIAN_CUO">垫付金额填错</option>



                    <option class="TBJD" value="PAI_XIA_WEI_FU_KUAN">拍下未付款</option>



                    <option class="TBJD" value="PAI_CUO_BAO_BEI">拍错宝贝</option>



                    <option class="TBJD" value="WEI_AN_YAO_QIU_PING_JIA">未按要求评价</option>



                    <option class="TBJD" value="FU_KUAN_FANG_SHI_BU_DUI">付款方式不对</option>



                    <option class="TBJD" value="YU_SHOU_WEI_FU_KUAN">预售活动未付款</option>



                    <option class="TBJD" value="YU_SHOU_TI_QIAN_FU_KUAN">预售活动提前付款</option>



                    <option class="TBJD" value="ZI_DING_YI">自定义</option>



                    <option class="TBJD" value="KONG_BAO">空包</option>



                    <option class="TBJD" value="RANK_NOT_FOUND">排名找不到</option>



                    <option class="PDD hidden" value="PDD">多多进宝</option>


        </select>
    </div>

    <div class="add_black_wwid_left taobaoke hidden">子活动编号：</div>
    <div class="add_black_wwid_right taobaoke hidden" ><input type="text" id="childTaskNum" name="childTaskNum"></div>

    <div class="add_black_wwid_left taobaoke hidden">淘宝订单编号：</div>
    <div class="add_black_wwid_right taobaoke hidden" ><input type="text" id="payOrder" name="payOrder"></div>


    <div class="add_black_wwid_left taobaoke hidden">淘客昵称：</div>
    <div class="add_black_wwid_right taobaoke hidden" ><input type="text" id="tkNick" name="tkNick"></div>

    <div class="add_black_reason_left remarks_div ">填写原因：</div>
    <div class="add_black_remark_right remarks_div " ><textarea id="remarks" name="remarks" placeholder="最多100字" maxlength="100"></textarea></div>
    <div class="add_black_reason_left  hidden taobaoke">淘客后台截图：</div>
    <div class="add_black_remark_right hidden taobaoke" >
        <div style="width: 340px;height: 40px;">
            <img id="tbkBlackCheckImgShow" style="cursor: pointer;	"
                 src="/saleterrace/images/i88_img.png" alt="">
                 <#--src="../saleterrace/images/i88_img.png" alt="">-->
            <input type="file" id="tbkPicValue" name="tbkBlackCheckImgTemp" accept=".jpg,.jpeg,.gif,.png" onchange="jic.onchange(this,'bind',162036,successTbkSetValueCallBack,successTbkCallBack,errorCallBack,'');" style="display: none"/>
            <h3 id="selectTbkPic">上传截图</h3>
            <a href="/saleterrace/images/tk_slt.png" target="_blank">*示例图</a>
            <input type="hidden" id="tbkBlackCheckImg" name="tbkBlackCheckImg">
        </div>
    </div>
    <div class="add_black_reason_left taobaoke hidden">活动管理截图：</div>
    <div class="add_black_remark_right taobaoke hidden" >
        <div style="width: 340px;height: 40px;">
            <img id="taskBlackCheckImgShow" style="cursor: pointer;	"
                 src="/saleterrace/images/i88_img.png" alt="">
            <input type="file" id="taskPicValue" name="taskBlackCheckImgTemp" accept=".jpg,.jpeg,.gif,.png" onchange="jic.onchange(this,'bind',162036,successTaskSetValueCallBack,successCallBack,errorCallBack,'');" style="display: none"/>
            <h3 id="selectTaskPic">上传截图</h3>
            <a href="/saleterrace/images/task_slt.png" style="top:483px" class="taskManager" target="_blank">*示例图</a>
            <input type="hidden" id="taskBlackCheckImg" name="taskBlackCheckImg">
        </div>
    </div>
    <div class="add_black_reason_left pjscjt_div">截图：</div>
    <div class="add_black_remark_right pjscjt_div" >
        <div style="width: 340px;height: 40px;">
            <img id="blackCheckImgShow" style="cursor: pointer;	"
                 src="/saleterrace/images/i88_img.png" alt="">
            <input type="file" id="picValue" name="blackCheckImgTemp" accept=".jpg,.jpeg,.gif,.png" onchange="jic.onchange(this,'bind',162036,successSetValueCallBack,successCallBack,errorCallBack,'');" style="display: none"/>
            <h3 id="selectPic">上传截图</h3>
            <a href="/saleterrace/images/plbs.png" target="_blank">*示例图</a>
            <input type="hidden" id="blackCheckImg" name="blackCheckImg">
        </div>
    </div>
</div>
</div>
<div><span id="tips" style="position: absolute;left: 150px;top: 400px; color: red;">请正确填写拉黑的具体原因，平台针对不同情况的处罚措施不同</span></div>
<div><span id="tkTips" style="position: absolute;left: 150px;top: 509px; color: red;" class="taobaoke hidden">请按要求提交正确的信息和截图，否则不予审核通过</span></div>
<div>
<div id="confirmAddBlack" class="add_black_confirm" >确认</div>
<div id="cancelAddBlack" class="add_black_cancel">取消</div>
</div>
</form>
</div>
