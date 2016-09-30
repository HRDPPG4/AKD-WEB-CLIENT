<%@ page 
    pageEncoding="utf-8"%>
    
<div id="viewed" class="tab-pane fade" >
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
</div>