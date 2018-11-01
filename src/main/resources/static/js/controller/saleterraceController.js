_saleterrace.controller('saleterraceController',['$scope','$http','$sce','$filter', function ($scope,$http,$sce,$filter) {



    /**
     * 店铺信息初始化
     */
    $scope.initParams = function (node) {
        $scope.$broadcast('init-'+node, node);
    };








    }]

);