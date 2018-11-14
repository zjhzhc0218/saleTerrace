_saleterrace.controller('saleterraceController',['$scope','$http','$sce','$filter', function ($scope,$http,$sce,$filter,Upload) {



    /**
     * 店铺信息初始化
     */
    $scope.initParams = function (node) {
        $scope.$broadcast('init-'+node, node);
    };


    /**
     * 店铺
     * @type {{shopStorename: null, shopShopkeepername: null, shopStoreUrl: null, img: null, insert: insert, fileChanged: fileChanged}}
     */
     $scope.shopParams = {
        'shopStorename':null,//店铺名称
        'shopShopkeepername':null,//掌柜旺旺
        'reader':new FileReader(), //创建一个FileReader接口
         'form' : { //用于绑定提交内容，图片或其他数据
             image: {},
         },
        'thumb':null, //用于存放图片的base64
        'shopStoreUrl':null,//url
        'imgSrc':null,//imgSrc
        'file':null,//file
        'img':null,//状态
         'uploadFiles' : function (file, errorFile) {
             if ( file ) {
                 $scope.shopParams.reader.onload = function(ev) {
                     $scope.$apply(function() {
                         $scope.shopParams.thumb = ev.target.result; //接收base64
                     });
                     $scope.shopParams.imgSrc = $scope.shopParams.thumb;
                 };
             }
             $scope.shopParams.reader.readAsDataURL(file); //FileReader的方法，把图片转成base64
         },
         'insert' : function () {
           /*var param = {
               'shopStorename':$scope.shopParams.shopStorename,//店铺名称
               'shopShopkeepername':$scope.shopParams.shopShopkeepername,//掌柜旺旺
               'shopStoreUrl':$scope.shopParams.shopStoreUrl,//url
               'img':$scope.shopParams.img,//状态
               'shopShopkeeper' :1
           }
             _saleterrace.ajax({
                 method: 'POST',
                 url: 'saveShopRecord',
                 enctype:"multipart/form-data",
                 data: param,
                 success: function (response) {
                     console.log(response);
                     $('#myModal_tb').modal('hide');
                 }
             });*/
             if($scope.shopParams.file == null ||$scope.shopParams.shopStorename == null ||$scope.shopParams.shopShopkeepername  == null || $scope.shopParams.shopStoreUrl  == null ) {
                 alert("请填写空白信息");
                 return;
             }
             var data = new FormData();
             data.append("shopStorename", $scope.shopParams.shopStorename);
             data.append("shopShopkeepername", $scope.shopParams.shopShopkeepername);
             data.append("shopStoreUrl", $scope.shopParams.shopStoreUrl);
             data.append("shopShopkeeper", 1);
             data.append("img", $scope.shopParams.file);

             $http({
                 method: "POST",
                 url: "saveShopRecord",
                 data: data,
                 headers: {
                     'Content-Type': undefined
                 },
                 transformRequest: angular.identity

             }).then(function successCallback(response) {
                     console.log(response.data)
                     $('#myModal_tb').modal('hide');
                 },
                 function errorCallback(response) {
                     console.log("error")
                     console.log(response);
                     $('#myModal_tb').modal('hide');
                 });

         }, //新增
         /*'fileChanged' : function(ele){
         var fileP= ele.files;
         $scope.shopParams.img = fileP;//[0].name;
        },*/
         'editShop' : function () { //修改
            // console.log( $scope.editshopParams);
             /*_saleterrace.ajax({
                 method: 'POST',
                 url: 'editShopRecord',
                 data: {'params':angular.toJson($scope.editshopParams)},
                 success: function (response) {
                     console.log(response);
                     $('#myModal_dpname').modal('hide');
                 }
             });*/
             var data = new FormData();
             data.append("params", angular.toJson($scope.editshopParams));
             $http({
                 method: "POST",
                 url: "editShopRecord",
                 data: data,
                 headers: {
                     'Content-Type': undefined
                 },
                 transformRequest: angular.identity
             }).then(function successCallback(response) {
                     console.log(response.data)
                     $('#myModal_dpname').modal('hide');
                 },
                 function errorCallback(response) {
                     console.log("error")
                     console.log(response);
                     $('#myModal_dpname').modal('hide');
                 });

         }
    };


    $scope.$on('edit-shop', function(d,data) {
        $scope.editshopParams = data;
        $scope.editshopParams.reader = new FileReader(), //创建一个FileReader接口
        $scope.editshopParams.form  = { //用于绑定提交内容，图片或其他数据
            image: {},
        }, $scope.editshopParams.thumb=null, //用于存放图片的base64
        $scope.editshopParams.shopStoreUrl=null,//url
        $scope.editshopParams.imgSrc=null,//imgSrc
        $scope.editshopParams.file=null,//file
        $scope.editshopParams.img=null,//状态
        $scope.editshopParams.uploadFiles = function (file, errorFile) {
            if ( file ) {
                $scope.editshopParams.reader.onload = function(ev) {
                    $scope.$apply(function() {
                        $scope.editshopParams.thumb = ev.target.result; //接收base64
                    });
                    $scope.editshopParams.imgSrc = $scope.editshopParams.thumb;
                };
            }
            $scope.editshopParams.reader.readAsDataURL(file); //FileReader的方法，把图片转成base64
        }
    });




    }]

);