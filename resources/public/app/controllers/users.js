app.controller('employeesController', function ($scope, $http, API_URL) {
    //retrieve employees listing from 

    $http({
        method: 'GET',
        url: API_URL + "employees"
    }).then(function (response) {
        $scope.employees = response.data.employees;
        console.log(response);
    }, function (error) {
        console.log(error);
        alert('This is embarassing. An error has occurred. Please check the log for details');
    });

    //show modal form
    $scope.toggle = function (modalstate, id) {
        $scope.modalstate = modalstate;
        $scope.employee = null;

        switch (modalstate) {
            case 'add':
                $scope.form_title = "Add New Employee";
                break;
            case 'edit':
                $scope.form_title = "Employee Detail";
                $scope.id = id;
                $http.get(API_URL + 'employees/' + id)
                    .then(function (response) {
                        console.log(response);
                        $scope.employee = response.data.employee;
                    });
                break;
            default:
                break;
        }
        
        console.log(id);
        $('#myModal').modal('show');
    }

    //save new record / update existing record
    $scope.save = function (modalstate, id) {
        var url = API_URL + "employees";
        var method = "POST";

        //append employee id to the URL if the form is in edit mode
        if (modalstate === 'edit') {
            url += "/" + id;

            method = "PUT";
        }

        $http({
            method: method,
            url: url,
            data: $.param($scope.employee),
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
        }).then(function (response) {
            console.log(response);
            location.reload();
        }), (function (error) {
            console.log(error);
            alert('This is embarassing. An error has occurred. Please check the log for details');
        });
    }

    //delete record
    $scope.confirmDelete = function (id) {
        var isConfirmDelete = confirm('Are you sure you want this record?');
        if (isConfirmDelete) {

            $http({
                method: 'DELETE',
                url: API_URL + 'employees/' + id
            }).then(function (response) {
                console.log(response);
                location.reload();
            }, function (error) {
                console.log(error);
                alert('Unable to delete');
            });
        } else {
            return false;
        }
    }


    $scope.DisableEmployee = function(id){
        var isConfirmDisable = confirm('Are you sure you want to disable user');

        if(isConfirmDisable){

            $http({
                method:'GET',
                url: API_URL + 'employees/disableuser/' + id
            }).then(function(response) {
                console.log(response);
                location.reload();
            }, function(error){
                console.log(error);
            })
        }else{
            return false;
        }
       
    }

    // $scope.getResulltsPage(pageNumber) {
    //     if(! $.isEmptyObject($scope.libTemp)) {
    //         dataFactory.httpRequest('/items?search='+$scope.searchText+'&page='+pageNumber).then(function(data) {
    //             $scope.data = data.data;
    //             $scope.totalItems = data.total;
    //           });
    //     }else{
    //         dataFactory.httpRequest('/items?page='+pageNumber).then(function(data) {
    //             $scope.data = data.data;
    //             $scope.totalItems = data.total;
    //           });
    //     }
    // }
    
});