<#--<#include "//modal.ftl">-->
<#--<#include "//modal_js.ftl">-->
<!-- center begin -->
<div id="black_div" align="center"  role="tabpanel" class="tab-pane content black_div">
    <div class="dp_list_div">
        <div class="addDp_div" align="left">

            <div>
                <img src="/saleterrace/images/addDp_bg.png" style="margin-top: 60px">
                <a onclick="searchLogin('myModal_black')" class="pointer addDp_button" style="color: #11ade2;left: 0px">添加黑名单</a>
                <p style="margin-top: 15px;margin-left: 10px">提示：添加黑名单旺旺号，该旺旺号所属账号将永远无法接手自己发布的活动（包括试用活动和浏览活动）。</p>
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
                            <a style="color: #fff; font-size: 14px;" target="_blank" href="#">模板导出</a>
                    </div>
                </div>

                <div style="float: right;">
                    <div style="position: relative;
                                top: -7px;
                                margin-top: -35px;
                                margin-right: 15px;
                                background: #6EC9EA;
                                padding: 8px;
                                border-radius: 5px;
                                color: #fff;
                                font-size: 14px;
                                cursor: pointer;">批量导入</div>
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
                        <li class="dp_li1"><div>1111/1111</div></li>
                        <li class="dp_li1"><div>1111</div></li>
                        <li class="dp_li7"><div>111111</div></li>
                        <li class="dp_li4"><div>1111-11-11 11:11:11</div></li>
                        <li class="dp_li3" style="display:table;"><div style="display:table-cell;vertical-align: middle;line-height: normal;color: #7b8da0;font-size: 14px;">1111111111</div></li>
                        <li class="dp_li8"><div>1111111111</div></li>
                        <li class="dp_li6"><a style="color: #6EC9EA" href='#'>删除黑名单</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


