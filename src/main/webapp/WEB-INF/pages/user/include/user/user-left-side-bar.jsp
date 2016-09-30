<%@ page
    pageEncoding="utf-8"%>
    
<div class="left-profile" >
	<div class="img-pro">
		<img alt="" src="${userProfile}">
		<div class="edit-profileImage">
			<a class="upload-proflie" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myProfileImage"><i class="fa fa-instagram" aria-hidden="true" id="camera"></i><div class="profileImage">រូបភាពព័ត៌មានផ្ទាល់ខ្លួន</div></a>
		</div>
		<script>
		   $(document).ready(function(){
			   var profile ='close';
			   $('.img-pro').hover(function(){
				   if (profile=="close") {
				   $('.edit-profileImage').css({'visibility':'visible'}).slideDown();
				   $('.upload-proflie').css({'visibility':'visible'}).slideDown();
				  /*  $('#camera').css({'font-size':'15px','top':'20px'}).slideDown(); */
				   profile ='open';
				   }else{
					   $('.edit-profileImage').css({'visibility':'hidden'}).slideDown();
					   $('.upload-proflie').css({'visibility':'hidden'}).slideDown();
					   /* $('#camera').css({'font-size':'20px','top':'30px'}).slideDown(); */
					   profile ='close';
				   }
			   });
		   });
		</script>
	</div>
	<ul class="title-profile nav nav-pills nav-stacked">
		<li class="about"><a data-toggle="tab" href="#infor">អំពីខ្ញុំ </a></li>
		<li class="about"><a data-toggle="tab" ng-click="getDocumentByUser()" href="#mydoc">បញ្ជីរគ្រប់គ្រងឯកសារ</a></li>
		<li class="about" ><a data-toggle="tab" ng-click="getLogByUser()" href="#viewed">ឯកសារដែលបានមើល</a></li>
		<li class="about" id="toggleSavelist">
			<a data-toggle="tab" ng-click="getSavelistMenuUser()" href="#savelist">បញ្ជីររក្សាទុកឯកសារ </a>
			<ul style="background-color:#26a63c">
				<li ng-repeat ="savelistmenu in getSavelistMenu" class="about " ng-show ="showsavelist" >
					<a style="background-color:#26a63c" data-toggle="tab"  ng-click="getDocumentByEachSavelist(savelistmenu.LIST_ID)" href="#mysavelist">{{savelistmenu.LIST_NAME}}</a>
				</li>
			</ul>	       
		</li>
	</ul>
</div>