<%@ page 
    pageEncoding="utf-8"%>
    
<div id="savelist" class="tab-pane fade">
 	<div class="content-savelist-all">
	 	<div id="header-view-savelist">
	 		<ul class="view-savelist">
			  	<li class="savelist"> បញ្ជី​បទ​ដែល​បាន​បង្កើត</li>
			  	<li class="btn-add">
				  <button>
				  	<i class="fa fa-plus-circle" aria-hidden="true"></i>បញ្ជីបង្កើតឯកសារថ្មី
				  </button>
			  </li>
			</ul>
	    </div>
	    <div>
			<div class="list-group" ng-repeat="list in getuserSavelist ">
	 			<a href="/detail/{{list.SAVELISTDETAIL[0].DOCUMENT[0].DOC_ID}}" class="list-group-item">
					<div class="media">		    
						<div class="checkbox pull-right">
						</div>
						<div class="pull-left">
							<img class="media-object" src="{{list.SAVELISTDETAIL[0].DOCUMENT[0].THUMBNAIL_URL}}" alt="Image">
						</div>
						<div class="media-body">
							<h4 class="media-heading">{{list.SAVELISTDETAIL[0].DOCUMENT[0].TITLE}}</h4>
							<p>{{list.SAVELISTDETAIL[0].DOCUMENT[0].DES}}</p>
							<p>បង្កើតថ្ងៃទីៈ{{list.CREATED_DATE}}</p>
						</div>		
					</div>							       
			   	</a>
	 		</div>
	    </div>
	</div>
	<div class="createlist-tooltip">
     	<div class="tooltip-header-list">
     	</div>
   		<div class="body-list">
   			<div​​​​​ class="header-list">   			 
    			 <div class="descript-list">
    				<input type="text" placeholder="បញ្ចូលចំណងជើងបញ្ជីដាក់ឯកសារ" ng-model="saveListname"/>
    			</div>
    			<div class="footer-list">
 					<div class="create-playlist-section">
 						<button class="btn-content-list">បោះបង់</button>
 						<button class="btn-create" ng-click="saveList()">បង្កើត</button>
 					</div>
    			</div>
   			</div>   			
   		</div>
     </div>
  </div>