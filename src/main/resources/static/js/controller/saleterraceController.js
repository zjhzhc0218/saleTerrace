_saleterrace.controller('saleterraceController',['$scope','$http','$sce','$filter', function ($scope,$http,$sce,$filter) {



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
        'shopStoreUrl':null,//url
        'img':null,//状态
         'insert' : function () {
           var param = {
               'shopStorename':$scope.shopParams.shopStorename,//店铺名称
               'shopShopkeepername':$scope.shopParams.shopShopkeepername,//掌柜旺旺
               'shopStoreUrl':$scope.shopParams.shopStoreUrl,//url
               'img':$scope.shopParams.img,//状态
               'shopShopkeeper' :1
           }
             _saleterrace.ajax({
                 method: 'POST',
                 url: 'saveShopRecord',
                 data: param,
                 success: function (response) {
                     console.log(response);
                     $('#myModal_tb').modal('hide');
                 }
             });

         }, //新增
         'fileChanged' : function(ele){
         var fileP= ele.files;
         $scope.shopParams.img = fileP[0].name;
        },
         'editShop' : function () { //修改
            // console.log( $scope.editshopParams);
             _saleterrace.ajax({
                 method: 'POST',
                 url: 'editShopRecord',
                 data: {'params':angular.toJson($scope.editshopParams)},
                 success: function (response) {
                     console.log(response);
                     $('#myModal_dpname').modal('hide');
                 }
             });
         }
    };


    $scope.$on('edit-shop', function(d,data) {
        $scope.editshopParams = data;
    });




    }]

);