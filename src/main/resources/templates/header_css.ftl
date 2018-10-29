<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>引入css</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/accountmanage.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/bindStore.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/common.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/footer.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/header.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/homePage.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/index_store.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/layout.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/navigator.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/paging.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/recommendPage.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/selectize.default.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/top.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/viewer.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/zebra_dialog.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/viewer.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/seller/bindStorePop.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/seller/blacklist.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/seller/jfbrw.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/seller/newPrefbrw.css"/>
<link rel="stylesheet" type="text/css" href="/saleterrace/css/zebra_dialog.css"/>
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
        background:url(/saleterrace/images/QQyd.png);
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
</body>
</html>