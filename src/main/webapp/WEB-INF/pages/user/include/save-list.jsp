<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<div class="modal fade" id="save-list" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header"  >
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4><span class="glyphicon glyphicon-lock"></span>តារាងឯកសារសំខាន់</h4>
        
        
    <div class="imgcontainer">						     
    
    </div>
			          
        
      </div>
      <div class="modal-body" style="padding:40px 50px;">

     		<form action="#" method="post" enctype="multipart/form-data">
     			<div class="row">
  					  
  					   		<div id="message" style="background:#98bf21;height:30px;width:800px;position:absolute;display:none;">
  					   		   <p>Save Succesfully</p>
  					   		</div>
    						<div class="thumbnail">
     						 <img src="${pageContext.request.contextPath}/resources/user/img/book.jpg" alt="Thumbnail" style=" width:400px; height:300px;position:relative;" >
      				         
   			 			
   			 				<button type="button" class="btn btn-success" id="list-save">SaveList</button>
   			 				
   			 				
   			 				<div id="showSavelist" style="padding-bottom:10px;padding-top:20px; display:none;"  >
   			 				 <div class="form-group" id="catsavelist" style="display:none;">
  								
  								<select class="form-control">
    								<option style="text-align:center;">---Select(Optional)---</option>
    								<option style="text-align:center;">2</option>
    								<option style="text-align:center;">3</option>
   									<option style="text-align:center;">4</option>
 								 </select>
							 </div>
   			 				 <div class="form-group" style="padding-bottom:10px;padding-top:20px; " ng-repeat="slide in getDocumentById" >
   			 				 
  								
  								<input class="input-save-list"  type="text" class="form-control" ng-model="saveListname">
  						
  								<input class="input-save-list"  type="hidden" class="form-control" ng-model="docID">
  								<input class="input-save-list"  type="hidden" class="form-control" ng-model="userID">
  								<input class="input-save-list"  type="hidden" class="form-control" id="usr">
							</div>
							
							<div class="form-group" style="padding-top:10px;padding-top:20px; " >
  								<button type="button" class="btn btn-info" id="btn-savelist">បង្កើត</button>
							</div>
   			 			    </div>
   			 		 </div>
  					
				</div>
     			 		
     					
			</form>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/save-list.js"></script>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
    
  </div>
</div>
