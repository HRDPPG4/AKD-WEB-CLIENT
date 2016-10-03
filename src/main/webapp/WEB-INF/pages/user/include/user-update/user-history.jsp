<%@ page pageEncoding="utf-8"%>

<style>
	.history-header{
		background-color:white;
		width:100%;
		height:110px;
		color:black;
		padding:10px;
	}
	.history-header h3{
		
		font-family:Khmer OS Battambang;
	}
</style>
<div id="viewed" class="tab-pane fade main-list row " >
	<div class="history-header">
		<h3>ប្រវត្តិនៃការមើលរបស់អ្នក</h3>
		<div class="btn-clear-history">
			<button class="clear-history btn btn-primary">លុបទាំងអស់</button>
		</div>
	</div>
	<ol class="main-list-data">
		<li ng-repeat="log in getLogByUser">
			<div class="list-data row">	   		 		
				<div class="col-md-3">
					<span class="no-savelist">{{$index+1}}</span>
					<a href="/detail/{{log.DOCUMENT.DOC_ID}}">
						<img src="{{log.DOCUMENT.THUMBNAIL_URL}}" alt="Thumbnail">
					</a>
					
				</div>
				<div class="col-md-8">
					<h4>{{log.DOCUMENT.TITLE}}</h4>
					<!-- <h4>{{slide.DOCUMENT[0].USERS[0].USER_NAME}}</h4>
					<p>{{slide.DOCUMENT[0].CREATED_DATE}}</p> -->
				 	<p>{{log.DOCUMENT.DES}}</p>
				</div>
				<div class="col-md-1">
					<button class="btn btn-danger" ng-click="deleteLog(log.LOG_ID)"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
					<input type="hidden" value="{{log.DOCUMENT.USER_ID}}" id="userID">
				</div>	   		 		
			</div>
		</li>
	</ol>
	
	   
    
</div>





    
<!-- <div id="viewed" class="tab-pane fade" >
    <div class="content-viewed-all">
		<div id="header-view-history">
			<ul>
				<li class="history-title">ប្រវត្តិការមើល</li>
			</ul>
		</div>
   		<div id="content-view-history">
     		<div class="btn-clear-history">
     			<button class="clear-history">សំអាតប្រវត្តិមើលទាំងអស់</button>
     		</div>    		
    		<div class="history-view">
    			<div class="list-group" ng-repeat="log in getLogByUser" >
 					<a href="/detail/{{log.DOCUMENT.DOC_ID}}" class="list-group-item">
						<div class="media">				        
							<div class="checkbox pull-right" ng-click="deleteLog(log.LOG_ID)">
					    		<label>
					    	        <input type="hidden" value="{{log.DOCUMENT.USER_ID}}" id="userID">
									<span><i class="fa fa-times" aria-hidden="true"></i></span>				
								</label>
							</div>
							<div class="pull-left">
								<img class="media-object" src="{{log.DOCUMENT.THUMBNAIL_URL}}" alt="Image">
							</div>
							<div class="media-body">
								<h4 class="media-heading">{{log.DOCUMENT.TITLE}}</h4>
								<p>{{log.DOCUMENT.DES}}</p>
							</div>
						</div>					        
    				</a>
 				</div>
    		</div>
   		</div>
    </div>
</div> -->