$(document).ready(function(){
    $("#list-save").click(function(){
        $("#frmsavelist").toggle();
    });
    $("#btn-savelist").click(function(){
    	alert(3);
    	var msg = $("#message");
    	msg.animate({height: '300px', opacity: '0.4'}, "slow");
    	msg.animate({width: '300px', opacity: '0.8'}, "slow");
    	msg.animate({height: '100px', opacity: '0.4'}, "slow");
    	msg.animate({width: '100px', opacity: '0.8'}, "slow");
    	
    });
});
