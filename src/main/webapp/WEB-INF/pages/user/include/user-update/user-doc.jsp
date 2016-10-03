<%@ page 
    pageEncoding="utf-8"%>


<div id="mydoc" class="tab-pane fade">
	<div class="content-mydoc">
     	<ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" ng-click="getDocumentByUser(2)" href="">PDF</a></li>
		  <li><a data-toggle="tab" ng-click="getDocumentByUser(1)" href="">PPT</a></li>
		  <li><a data-toggle="tab" ng-click="getDocumentByUser(3)" href="">DOC</a></li>
		</ul>
	   	<div class="pdf-ppt-doc-edit tab-content">
	   		 <div id="user-doc" class="tab-pane fade in active">	   		 		
	   		 	<div class="list-group" ng-repeat ="slide in DocumentUser  ">
	    			<a href="/detail/{{slide.DOC_ID}}" class="">
						<div class="media">
							<div class="pull-left">
								<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
							</div>
							<div class="media-body" style="padding-top:20px;">
								<h4 class="media-heading">{{slide.TITLE}}</h4>
								<p>{{slide.DES}}</p>
								<p>{{slide.CREATED_DATE}}</p>
							</div>	
						</div>									        
				    </a>				    
				    <div id="updateAndDelete" style="padding-top:10px;">
						<button ng-click="checkDocID(slide.DOC_ID)" class="btn btn-default" data-toggle="modal" data-target="#updateDocument">កែរប្រែ</button>
						<button ng-click="deleteDocument(slide.DOC_ID)" class="btn btn-default">លុប</button>
					</div>
				</div>	   		 		
	   		 </div>
		</div>	   
	</div>
</div>