_saleterrace.controller('shopController',['$scope','$http','$sce','$filter', function ($scope,$http,$sce,$filter) {


    /**
     * 店铺对象
     * @type {{}}
     */
   /* $scope.shop = {
        'shopStorename':null,//店铺名称
        'shopShopkeepername':null,//掌柜旺旺
        'shopCreationtime':null,//绑定时间
        'shopTrialinterval':null,//试用间隔时间
        'shopBan':null//状态
    };*/


        $scope.$on('init-shop', function(d,data) {
            // console.log(data);         //父级能得到值
            _saleterrace.ajax({
                method: 'POST',
                url: 'getShopRecords',
                data: {
                    'id': '1'
                },
                success: function (response) {
                    console.log(response);
                    $scope.shop = angular.fromJson(response);
                    $scope.$apply();
                }
            });
        });

        $scope.editShop = function (data) {
            $scope.$emit('edit-shop', data);
            searchLogin('myModal_dpname');
        }











    }]

);