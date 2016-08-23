$(document).ready(function(){
    $("#savelist").click(function(){
       $("#showSavelist").show();
    });
    $("#bnt-create").click(function(){
    	var cat = $('#saveListnames').val();
    	if(cat > 0){
    		alert("លោកអ្នកមិនអាចបង្កើតថ្មីបានទេ ព្រោះបានជ្រើសរើស Savelist ដែលមានស្រាប់ហើយ! ");
    	}else{
    		$("#newsavelist").show();
    	}
    	
    	
    });
  
});
