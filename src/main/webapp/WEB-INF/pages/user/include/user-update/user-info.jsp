<%@ page
    pageEncoding="utf-8"%>
    
<div id="infor" class="tab-pane fade in active">
	<div class="content-aboutme">
		<div class="header-infor">
			<h1>ព័ត៌មានផ្ទាល់ខ្លួន</h1>
		</div>
		<div class="profile-wrap">
			<form action="">
				<div class="profile-name-content">
				 	<span class="profile-name-label" style=""><label>ឈ្មោះ </label></span>
					<span class="profile-name"><input type="text" value="${userName}" class="input-name"/></span>
				</div>
				<div class="profile-name-content">
				 	<span class="profile-email-label"><label> អីុម៉ែល</label></span>
				  	<span class="profile-name"><input type="text" value="${userEmail}" class="input-name" /></span>
				</div>	
			</form>									
		 </div>
	</div>
</div>