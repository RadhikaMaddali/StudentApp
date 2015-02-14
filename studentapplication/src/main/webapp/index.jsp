<html ng-app="myapp">
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.28/angular.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.28/angular.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.18/angular-resource.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" ng-controller="StudentController">
		<p class="bg-primary" style="text-align: center">
			<b style="font-family: Arial; font-size: 24">STUDENT INFORMATION
				SYSTEM</b>
		</p>

		<table class="table table-hover"
			style="font-family: Arial; font-size: 13">
			<thead>
				<tr>
					<th>Student Number</th>
					<th>Preferred Name</th>
					<th>Gender</th>
					<th>Date Of Birth</th>
					<th>Disability</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<tr class="info">
					<td>123832</td>
					<td>Doe</td>
					<td>Male</td>
					<td>2005-06-15</td>
					<td>False</td>
					<td>Hock</td>
					<td>Chahine</td>
					<td>hock.chahine@river-district.com</td>
					<td><button type="button" ng-click="update()"
							style="background-color: transparent">
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
							<span class="sr-only"></span>
						</button></td>
					<td><button type="button" ng-click="deleteStudent()"
							style="background-color: transparent">
							<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							<span class="sr-only"></span>
						</button></td>
				</tr>
				<tr class="info">
					<td>717164</td>
					<td>Christopher</td>
					<td>Male</td>
					<td>2005-05-27</td>
					<td>False</td>
					<td>Alborough</td>
					<td>Bocasan</td>
					<td>alborough.bocasan@river-district.com</td>
					<td><button type="button" ng-click="update()"
							style="background-color: transparent">
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
							<span class="sr-only"></span>
						</button></td>
					<td><button type="button" ng-click="deleteStudent()"
							style="background-color: transparent">
							<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							<span class="sr-only"></span>
						</button></td>
				</tr>
				<tr class="info">
					<td>286452</td>
					<td>Aoife</td>
					<td>Female</td>
					<td>2006-02-13</td>
					<td>False</td>
					<td>Louise</td>
					<td>Gladdish-Fitzgerald</td>
					<td>louise.gladdish-fitzgerald@river-district.com</td>
					<td><button type="button" ng-click="update()"
							style="background-color: transparent">
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
							<span class="sr-only"></span>
						</button></td>
					<td><button type="button" ng-click="deleteStudent()"
							style="background-color: transparent">
							<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							<span class="sr-only"></span>
						</button></td>
				</tr>
				<tr class="info">
					<td>673361</td>
					<td>Chantelle</td>
					<td>Female</td>
					<td>2005-06-15</td>
					<td>False</td>
					<td>Marilu</td>
					<td>Mercado</td>
					<td>marilu.mercado@river-district.com</td>
					<td><button type="button" ng-click="update()"
							style="background-color: transparent">
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
							<span class="sr-only"></span>
						</button></td>
					<td><button type="button" ng-click="deleteStudent()"
							style="background-color: transparent">
							<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							<span class="sr-only"></span>
						</button></td>
				</tr>
			</tbody>
		</table>

		<form class="form-horizontal"
			style="font-family: Arial; font-size: 12">

			<div class="form-group">
				<label for="firstName" class="col-sm-2 control-label">Student
					Number</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						placeholder="Student Number" style="width: 30%"
						ng-model="studentNumber">
				</div>
			</div>

			<div class="form-group">
				<label for="firstName" class="col-sm-2 control-label">Preferred
					Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						placeholder="Preferred Name" style="width: 30%"
						ng-model="preferredName">
				</div>
			</div>

			<div class="form-group">
				<label for="firstName" class="col-sm-2 control-label">Gender</label>
				<div class="col-sm-10">

					<label class="radio-inline"> <input type="radio"
						name="optradio" ng-model="gender">Male
					</label> <label class="radio-inline"> <input type="radio"
						name="optradio" ng-model="gender">Female 
				</div>
			</div>

			<div class="form-group">
				<label for="firstName" class="col-sm-2 control-label">Date
					Of Birth </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="Date Of Birth"
						style="width: 30%" ng-model="dateOfBirth">
				</div>
			</div>
			<div class="form-group">
				<label for="firstName" class="col-sm-2 control-label">Disability</label>
				<div class="col-sm-10">
					<label class="radio-inline"> <input type="radio"
						name="optradio" ng-model="disability">True
					</label> <label class="radio-inline"> <input type="radio"
						name="optradio" ng-model="disability">False 
				</div>
			</div>

			<div class="form-group">
				<label for="firstName" class="col-sm-2 control-label">First
					Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="First Name"
						style="width: 30%" ng-model="firstName">
				</div>
			</div>

			<div class="form-group">
				<label for="firstName" class="col-sm-2 control-label">Last
					Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="Last Name"
						style="width: 30%" ng-model="lastName">
				</div>
			</div>

			<div class="form-group">
				<label for="firstName" class="col-sm-2 control-label">Email</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="Email"
						style="width: 30%" ng-model="email">
				</div>
			</div>
		</form>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="button" class="btn btn-primary" ng-click="add()">Add
					Student</button>

				<button type="button" class="btn btn-primary" ng-click="clear()">Clear</button>
			</div>
		</div>




	</div>
	<script>
var myapp = angular.module('myapp',[]);

 myapp.controller('StudentController',function ($scope,$http) {
	 var Student = {  
	            StudentNumber: $scope.StudentNumber,  
	            PreferredName:$scope.PreferredName,
	            Gender: $scope.Gender,  
	            DateOfBirth: $scope.DateOfBirth,  
	            Disability: $scope.Disability,  
	            FirstName: $scope.FirstName,
	            LastName: $scope.LastName,
	            Email: $scope.Email
	        }; 
	 $scope.add = function($http)
	 {		
		 $http.post('http://localhost:8080/studentapplication/api/student/:{Student}').
	        success(function() {
	            $scope.message = "Record Saved";
	        });	
	 }
	 $scope.update = function($http)
	 {		
		 $http.put('http://localhost:8080/studentapplication/api/student/:{Student}').
	        success(function() {
	            $scope.message = "Record Updated";
	        });
	 }
	 $scope.getStudent = function($http)
	 {
		 $http.get('http://localhost:8080/studentapplication/api/student/:{$scope.StudentNumber}').
	        success(function() {
	            
	        });		
	 }
	 $scope.deleteStudent = function($http)
	 {		
		 $http.delete('http://localhost:8080/studentapplication/api/student/:{$scope.StudentNumber}').
	        success(function() {
	            $scope.message = "Record Deleted";
	        });		
	 }
	 
	 $scope.clear = function($scope, $http) {
		    $scope.StudentNumber='';
		    $scope.PreferredName='';
		    $scope.Gender='';
		    $scope.DateOfBirth='';
		    $scope.Disability='';
		    $scope.FirstName='';
		    $scope.LastName='';
		    $scope.Email='';
		}
});
</script>
</body>
</html>
