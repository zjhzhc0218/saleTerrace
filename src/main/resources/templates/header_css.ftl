
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/saleterrace/css/homePage.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/zebra_dialog.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/bindStore.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/seller/bindStorePop.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/recommendPage.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/seller/jfbrw.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/paging.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/common.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/seller/blacklist.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/accountmanage.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/selectize.default.css"/>
<#--<link rel="stylesheet" type="text/css" href="/saleterrace/css/index_store.css"/>-->
<link rel="stylesheet" type="text/css" href="/saleterrace/css/seller/newPrefbrw.css"/>

<#--公用css-->
<link rel="stylesheet" type="text/css" href="/saleterrace/css/top.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/viewer.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/layout.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/header.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/navigator.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/footer.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/WdatePicker.css"/>

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
        background: url(/saleterrace/images/gou.png) no-repeat center;
    }
</style>
<style>
    .leadBox {
        position: fixed;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, .5);
        z-index: 10000;
        display: none;
    }

    .lead {
        position: absolute;
        right: 25px;
        top: 80px;
        width: 437px;
        height: 227px;
        background: url(/saleterrace/images/QQyd.png);
        z-index: 10001;
        display: none;
    }

    .lead a {
        position: absolute;
        bottom: 2px;
        width: 90px;
        height: 30px;
    }

    .lead a.change {
        left: 133px;
    }

    .lead a.unPrompt {
        right: 60px;
    }

    .ZebraDialog {
        top: 300px !important;
    }
</style>
<style>
    *{
        margin:0px;
        padding:0px;
    }
    p,span,input,div,b{
        font-family: 微软雅黑;
        font-size: 14px;
        font-weight: normal;
    }
    .reset_payPwd_div{
        width:854px;
        background-color: #F8F8F8;
    }
    .title_div,.title_div2{
        width: 100%;
        background-color: #ffffff;
        height:50px;
        line-height: 50px;
        position:relative;
        top:10px;
    }
    .title_div2{
        margin-top:20px;
        top:0px;
    }
    .title_div2 span{
        color:#384655;
        margin-right:25px;
        font-size: 14px;
    }
    .title_div2 b{
        font-size: 16px;
        margin-left:5px;
        color:#666666;
    }
    .title_div2 img{
        position:relative;
        top:8px;
        /*margin-left:25px;*/
    }
    .title_div p{
        font-size: 18px;
        color:#1d1d26;
        /*margin-left:25px;*/
    }
    .title_div p span{
        color:#384655;
        font-size: 18px;
    }
    .foot_div{
        width:100%;
        height:20px;
        clear:both;
    }
    .reset_payPwd_content_div{
        width:854px;
        background-color: #ffffff;
        height:305px;
        margin-top:10px;
    }
    .finding_ways{
        width:854px;
        color:#384655;
        position:relative;
        top:40px;
    }
    .finding_ways img{
        margin-left:15px;
        margin-right:10px;
        position:relative;
        top:5px;
    }
    .floatLeft{
        float:left;
    }
    .hidden{
        display:none;
    }
    .check_surrounding{
        width:437px;
        height:37px;
        line-height: 37px;
        background-color: #5AC2E7;
        border:1px solid #E8E8E8;
        color:#ffffff;
    }
    .remember_finding,.forget_finding{
        width:437px;
        height:66px;
        line-height: 66px;
        background-color: #ffffff;
        border:1px solid #E8E8E8;
        color:#11ade2;
        cursor:pointer;
        margin-top:20px;
    }
    .halfDiv{
        width:50%;
        height:100%;
        float:left;
    }
    .remember_finding span{
        margin-left:20px;
    }
    .forget_finding span{
        margin-left:20px;
        position:relative;
        top:7px;
    }
    .forget_finding{
        line-height: 23px;
    }
    .remember_finding b{
        margin-right:20px;
        font-size: 45px;
    }
    .forget_finding .arrow_div{
        line-height: 66px;
    }
    .forget_finding span.tip_label{
        color:#AEAEAE;
    }
    .forget_finding b{
        margin-right:20px;
        font-size: 45px;
    }
    .set_payPwd{
        width:505px;
        color:#384655;
        position:relative;
        top:35px;
        line-height: 50px;
    }
    .newPwd_field{
        clear:both;
        width:70px;
        margin-right:10px;
    }
    .oldPayPwd_text,.newPayPwd_text,.newPayPwd_text2{
        width:274px;
        height:27px;
        border:1px solid #E8E8E8;
        line-height: 27px;
        font-size: 12px;
    }
    .confirm_button{
        width: 101px;
        height: 30px;
        border:1px solid #E8E8E8;
        background-color: #5AC2E7;
        color:#ffffff;
        font-size: 18px;
        cursor:pointer;
    }
    .set_payPwd span.tip_label{
        color:#AEB1B6;
        margin-left:20px;
    }
    .safety_check{
        width:360px;
        position:relative;
        top:45px;
        color:#384655;
    }
    .safety_check img{
        margin-right:10px;
        position:relative;
        top:4px;
    }
    .code_text{
        width:274px;
        height:27px;
        border:1px solid #E8E8E8;
        line-height: 27px;
        font-size: 12px;
        margin-top:20px;
        margin-bottom:20px;
    }
    .safety_check a{
        color:#7b8da0;
        position:relative;
        top:25px;
        text-decoration: none;
    }
    .set_newPwd{
        width:370px;
        position:relative;
        top:35px;
        line-height: 50px;
        color:#384655;
    }
    .next_step_button{
        width:101px;
        height:30px;
        border:1px solid #E8E8E8;
        background-color: #5AC2E7;
        color:#ffffff;
        font-size: 18px;
        cursor:pointer;
    }
    .prev_step_button{
        width: 101px;
        height: 30px;
        border: 1px solid #E8E8E8;
        background-color: #5AC2E7;
        color: #ffffff;
        font-size: 18px;
        cursor: pointer;
        margin-left: 77px;
    }
    .getCode_button{
        width:118px;
        height:28px;
        color: #384655;
        border:1px solid #F3F3F5;
        font-size: 12px;
        background-color: #ECF0F3;
        cursor:pointer;
        margin-left:15px;
    }
    .set_newPwd{
        width:370px;
        position:relative;
        top:35px;
        line-height: 50px;
        color:#384655;
    }
    .newPwd_text,.newPwd_text2{
        width:274px;
        height:27px;
        border:1px solid #E8E8E8;
        line-height: 27px;
        font-size: 12px;
    }
    .reset_payPwd_div{
        float: left;
    }
    .top-margin{
        height: 25px;
        width: 100%;
        float: left;
        background-color: #f8f8f8;
    }
    .set_payPwd .pwdm{
        position:absolute;
        right:5px;
        top:7px;
        width:18px;
        height:16px;
        background:#fff url(/saleterrace/images/i16_mclose.png) no-repeat;
        cursor:pointer;
    }
    .set_newPwd .pwdm{
        position:absolute;
        right:5px;
        top:18px;
        width:16px;
        height:16px;
        background:#fff url(/saleterrace/images/i16_mclose.png) no-repeat;
        cursor:pointer;
    }
</style>
<style>
    * {
        margin: 0px;
        padding: 0px;
    }

    input {
        font-family: 微软雅黑;
        font-size: 14px;
        outline: none;
    }

    div {
        font-family: 微软雅黑;
        font-size: 14px;
    }

    .floatLeft {
        float: left;
    }

    .zjjl_div {
        width: 1000px;
        background-color: #F8F8F8;
    }

    .zjjl_title {
        width: 980px;
        background-color: #ffffff;
        height: 50px;
        line-height: 50px;
        position: relative;
        top: 10px;
        border: 1px solid #F5F5F5;
    }

    .zjjl_title p {
        font-family: 微软雅黑;
        font-size: 18px;
        color: #1d1d26;
        margin-left: 20px;
    }

    .tabsDiv {
        width: 980px;
        margin-top: 20px;
    }

    .tabsDiv ul.tabs_ul {
        width: 500px;
        height: 51px;
        list-style: none;
        background-color: transparent;
    }

    .tabsDiv ul.tabs_ul li {
        float: left;
        cursor: pointer;
        text-align: center;
        width: 140px;
        height: 50px;
        line-height: 50px;
        font-family: 微软雅黑;
        font-size: 18px;
        border-style: solid;
        border-color: #EFF0F2;
        border-width: 1px 1px 0 1px;
        display: none;
    }

    .tabsDiv ul.tabs_ul li:hover {
        background-color: #08C7B5;
        color: #666666;
    }

    .tabsDiv div.content_div {
        width: 980px;
        clear: both;
    }

    .tabsSeletedLi {
        background-color: #5AC2E7;
        color: #ffffff;
    }

    .tabsUnSeletedLi {
        background-color: #ffffff;
        color: #1d1d26;
    }

    .tab_title {
        width: 978px;
        border: 1px solid #EFF0F2;
        background-color: #ffffff;
    }

    .datechooser {
        color: #1d1d26;
        font-size: 14px;
        font-family: 微软雅黑;
        height: 50px;
        line-height: 50px;
        padding-left: 20px;
        border-bottom: 1px solid #EFF0F2;
    }

    .date_input_text {
        width: 150px;
        height: 29px;
        border: 1px solid #E8E8E8;
        line-height: 29px;
        color: #1d1d26;
        margin-left: 10px;
        margin-right: 10px;
    }

    .options_ul {
        padding-left: 40px;
    }

    .options_ul li {
        float: left;
        list-style-type: none;
        margin-left: 5px;
        /*color: #7b8da0;*/
    }

    input.date_option_s {
        width: 66px;
        height: 27px;
        border: 0px;
        background-image: url("/saleterrace/images/date_option_s.png");
        background-color: transparent;
        color: #384655;
        cursor: pointer;
    }

    input.date_option_l {
        width: 98px;
        height: 27px;
        border: 0px;
        background-image: url("/saleterrace/images/date_option_l.png");
        color: #384655;
        cursor: pointer;
        background-color: transparent;
    }

    input.option_s {
        width: 66px;
        height: 20px;
        border: 0px;
        background-image: url("/saleterrace/images/zjjl/option_s.png");
        color: #384655;
        background-color: transparent;
        background-repeat: no-repeat;
        cursor: pointer;
    }

    input.option_l {
        width: 82px;
        height: 20px;
        border: 0px;
        background-image: url("/saleterrace/images/option_l.png");
        color: #384655;
        background-color: transparent;
        cursor: pointer;
        background-repeat: no-repeat;
    }

    input.option_ll {
        width: 100px;
        height: 20px;
        border: 0px;
        background-image: url("/saleterrace/images/option_ll.png");
        color: #384655;
        background-color: transparent;
        cursor: pointer;
        background-repeat: no-repeat;
    }

    ul.jylx_ul {
        clear: both;
        padding-left: 0px;
        margin-left: 12px;
        position: relative;
    }

    ul.jyzt_ul {
        clear: both;
        margin-left: -5px;
        padding-left: 0px;
        position: relative;
        top: -3px;
    }

    input.hide_chosen_button {
        background-image: none;
        background-color: transparent;
        color: #7b8da0;
    }

    .options_div {
        height: 50px;
        line-height: 50px;
    }

    .options_div > dl > dt {
        float: left;
    }

    .options_div > dl > dd {
        float: left;
    }

    .jyjl_table {
        border-spacing: 0px;
        border-collapse: collapse;
        background-color: #ffffff;
        width: 980px;
        margin-top: 10px;
    }

    .jyjl_table td {
        font-family: 微软雅黑;
        color: #7b8da0;
        height: 50px;
        text-align: left;
        border-width: 1px 0 1px 0;
        border-style: solid;
        border-color: #EFF0F4;
        padding-left: 20px;

    }

    .jyjl_table td.createTime_td {
        padding-left: 12px;
        line-height: 20px;
        font-size: 12px;
    }

    .jyjl_table td.type_td {
        padding-left: 30px;
        line-height: 20px;
        font-size: 12px;
    }

    .jyjl_table td.money_td {
        padding-left: 30px;
    }

    .jyjl_table .head_tr td {
        padding-left: 20px;
        font-size: 14px;
    }

    .minute_label, .lsh_label {
        color: #C0C0C0;
    }

    .je_label, .cg_label {
        color: #59c2e6;
        position: relative;
    }

    .detail_label {
        color: #59c2e6;
        text-decoration: none;
        font-family: 微软雅黑;
        font-size: 12px;
        font-weight: normal;
        cursor: pointer;
        position: relative;
    }

    .detail_label img {
        position: relative;
        top: -3px;
        left: 3px;
    }

    .fkz_label {
        color: #ff9c00;
        position: relative;
        top: 5px;
    }

    .sb_label {
        color: #ff0000;
        position: relative;
        top: 5px;
    }

    .paging {
        height: 50px;
        line-height: 50px;
        width: 980px;
        margin-top: 10px;
        background-color: #ffffff;
    }

    .number_button {
        width: 50px;
        height: 26px;
        border: 0px;
        background-color: transparent;
        cursor: pointer;
        color: #666666;
        font-size: 16px;
    }

    .number_button_chosen {
        background: rgb(218, 225, 232);
        color: #1d1d26;
    }

    .paging_button {
        width: 55px;
        height: 27px;
        border: 0px;
        background-image: url("/saleterrace/images/paging_button.png");
        background-color: transparent;
        cursor: pointer;
        font-size: 16px;
        color: #ffffff;
    }

    #finalPage {
        margin-right: 10px;
    }

    .foot_div {
        width: 100%;
        height: 20px;
    }

    .txjl_div .options_div {
        height: 50px;
        line-height: 50px;
    }

    .txjl_div .jylx_ul {
        top: 0px;
    }

    .txjl_div .jylx_ul li {
        margin-left: 20px;
    }

    .txjl_div .jyzt_ul {
        top: 0px;
        clear: none;
        left: 70px;
    }

    .txjl_div .jyzt_ul li {
        margin-left: 20px;
    }

    .jyjl_table .operation_td a {
        margin-left: 0px;
    }

    #user_menu .exit_button_cd {
        margin-top: 0px !important;
    }

    .left_menu img {
        position: relative;
        top: 8px;
    }

    .jyjl_ul {
        overflow: hidden;
        background-color: #fff;
        height: 50px;
        border-bottom: 1px solid #EFF0F4;
        width: 100%;
    }

    .jyjl_ul li {
        float: left;
        display: table-cell;
        color: #7b8da0;
    }

    .wd27 {
        width: 20%;
    }

    .wd28 {
        width: 28%;
    }

    .wd33 {
        width: 33%;
    }

    .wd26 {
        width: 26%;
    }

    .trade_info {
        display: none;
        text-align: center;
        width: 100%;
        margin: 20px auto 30px auto;
        border: 1px solid #EFF0F4;
        overflow: hidden;
        background-color: #fff;
    }

    .trade_info_head {
        border-bottom: 1px solid #EFF0F4;
        overflow: hidden;
        line-height: 50px;
    }

    .trade_info_head, .trade_info_value {
        background-color: #fff;
        height: 50px;

        text-align: left;
    }

    .trade_info_head li, .trade_info_value li {
        float: left;
        font-size: 14px;
        width: 20%;
        color: #C0C0C0;
    }

    .trade_info_value, .trade_info_head {
        padding-left: 10px;
    }

    .trade_info_value li {
        font-size: 12px;
    }

    .pdl12 {
        padding-left: 12px;
    }

    .height50 {
        height: 50px;
        line-height: 50px;
    }

    .mgt5 {
        margin-top: 5px;
    }

    .clC0C0C0 {
        color: #C0C0C0;
    }

    .hide {
        display: none;
    }

    .show {
        display: block;
    }

    .search_button {
        width: 80px;
        height: 29px;
        border: 1px solid #E8E8E8;
        background-color: #5AC2E7;
        color: #ffffff;
        margin-left: 10px;
        cursor: pointer;
    }

    .options_div dl.dl_two dd {
        overflow: hidden;
        -ms-text-overflow: ellipsis;
        text-overflow: ellipsis;
        white-space: nowrap;
        width: 100px;
        float: left;
    }

    .options_div dl.dl_two dd i, .options_div dl.dl_two dt i {
        width: 12px;
        height: 10px;
        border: 1px solid #333;
        border-radius: 3px;
        float: left;
        margin: 19px 8px 0 0;
    }

    .options_div dl.dl_two dd i.current, .options_div dl.dl_two dt i.current {
        background: url(/saleterrace/images/dt_icon_point.png) no-repeat 1px 0;
    }

    .options_div dl dd label {
        cursor: pointer;
    }

    .moneyBgA {
        color: #ff3300;
    }

    .moneyBgS {
        color: #008800;
    }
</style>

