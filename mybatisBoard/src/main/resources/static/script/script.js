$(function(){
	//$("#title").val("제목 입니당!");
})

function fn_submit(){	
		/* trim() 앞뒤 공백 제거 */
		if( $.trim($("#title").val()) == ""){
			alert("제목을 입력해주세요 !");
			$("#title").focus();
			return false;
		}
		$("#title").val($.trim($("#title").val()));
		
		if( $.trim($("#content").val()) == ""){
			alert("내용을 입력해주세요 !");
			$("#content").focus();
			return false;
		}
		$("#content").val($.trim($("#content").val()));
		
	
	/* if(document.frm.title.value == ""){
		alert("제목을 입력해주세요 !");
		document.frm.title.focus();
		return false;
	}
	if(document.frm.content.value == ""){
		alert("암호를 입력해주세요 !");
		document.frm.pass.focus();
		return false;
	}
	 동기 전송방식 
	document.frm.submit(); */
	
}