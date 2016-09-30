<%@ page 
    pageEncoding="utf-8"%>
    
<div id="mysavelist" class="tab-pane fade">
	<div class="content-mydoc">	        
	   <div class="pdf-ppt-doc-edit tab-content">
	   		 <div id="pdf-edit" class="tab-pane fade in active">	   	
	   		 	<div class="list-group" ng-repeat ="slide in getDocumentInSavelist  ">
	    			<a href="/detail/{{slide.DOCUMENT[0].DOC_ID}}" class="list-group-item">
						<div class="media">
							<div class="checkbox pull-left" >
					    		<label>
									<input type="checkbox" ng-click="deleteSavelistDetail(slide.DOCUMENT[0].DOC_ID)">
									<input type="hidden" value="{{slide.DOCUMENT[0].USER_ID}}" id ="userID">
									<input type="hidden" value="{{slide.LIST_ID}}" id ="listID">				
								</label>
							</div>
							<div class="pull-left">
								<img class="media-object" src="{{slide.DOCUMENT[0].THUMBNAIL_URL}}" alt="Image">
							</div>
							<div class="media-body" style="padding-top:20px;">
								<h4 class="media-heading">{{slide.DOCUMENT[0].TITLE}}</h4>
								<p>{{slide.DOCUMENT[0].DES}}</p>
								<p>{{slide.DOCUMENT[0].CREATED_DATE}}</p>
							</div>
						</div>									        
				    </a>
				</div>	   		 		
	   		</div>	
	   </div>
	</div>
</div>