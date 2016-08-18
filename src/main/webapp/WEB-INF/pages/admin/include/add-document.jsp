<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class="modal fade" id="addDocument" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body" style="padding: 40px 50px;">
				<form method="post" enctype="multipart/form-data">
					<input type="file" name="file" id="filer_input" multiple="multiple"
						data-bind-file="" data-ng-model="theFile">
					<div class="progress progress-striped active">
						<div class="progress-bar progress-bar-success" role="progressbar"
							id="BBBB" aria-valuenow="60" aria-valuemin="0"
							aria-valuemax="100" style="width: 0%;">

							<span class="sr-only">40% Complete</span>
						</div>
					</div>
				</form>
				<!-- <button ng-click="myAlert()">Test Alert</button> -->

				<div ng-show="theFile">
					<form role="form">
						<div class="form-group">
							<label>Title:</label> <input type="text" class="form-control"
								placeholder="Title" ng-model="theFile.name" id="title"
								ng-readonly="false">
							<!-- ng-model="fileTitle" id="title" -->
							<!--  <p>Title: {{theFile.name}}</p> -->
							<!--    <p>Type: {{theFile.type}}</p> -->
						</div>

						<div class="form-group">
							<label>Category:</label> <select class="form-control"
								ng-model="catID">
								<option ng-repeat="x in category" value="{{x.CAT_ID}}">{{x.CAT_NAME}}</option>
							</select>
						</div>

						<div class="form-group">
							<label>Description:</label> <input type="text"
								class="form-control" placeholder="Description" ng-model="des">
						</div>
					</form>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" ​ alignt="center" ​​ id="btnSave"
					ng-click="uploadFile($event)">រក្សាទុក</button>
			</div>
		</div>

	</div>
</div>

