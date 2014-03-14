<html>
<head>
	<title>Spring 3.0 MVC Series: Index - ViralPatel.net</title>
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script> 
</head>
<body>

 <script>  
   function doAjaxPost() { 
    $.ajax({ 
     cache: false,	
     type : 'GET',
     dataType : 'html',   
     url : "show.ajax",   
     success: function (data) {
         $('#showresults').append(data);
     },
     error : function(e) {
         alert(e);
     }
    });  
   }  
   
   function resetForm() {
	   var date = $('#datepicker').datepicker().val();
	   
   		$.ajax({ 
	     cache: false,	
	     type : 'GET',
	     dataType : 'html',   
	     url : "reset.ajax",   
	     success: function (data) {
	         $('#showresults').html(data);
	         $('#dates').html(data);
	         $('#datepicker').val('');
	        
	     },
	     error : function(e) {
	         alert(e);
	     }
	    });  
	   }
   
   function showDate(){
	   
	    var date = $('#datepicker').datepicker().val();
	    
  		$.ajax({ 
	     cache: false,	
	     type : 'GET',
	     dataType : 'text',  
	     data : "date=" + date,
	     url : "showDate.ajax",   
	     success: function (result) {
	         $('#dates').append(result);
	     },
	     error : function(e) {
	         alert("showDate" + e);
	     }
	    });  
	   }
  
   $(function() {
	    $( "#datepicker" ).datepicker({
	    	onSelect: function() {
	    		showDate();
	 	   }
	    });
	  });
   
  
  </script>  
 
   <div id="form">  
   <form method="get">
	
	<br>
	<table>
	 <tr>  
      <td><input type="button"  value="You like Java ?" onclick="doAjaxPost();" />  </td>  
      <td><p>Date: <input type="text" id="datepicker"></p></td>
      <td><input type="button"  value="Reset" onclick="resetForm();" /></td> 
     </tr> 
     
     <tr>
      <td><div id="showresults"></div></td>
      <td><div id="dates"> </div></td>
      <td></td>
     </tr>
     
	</table>
	
	
	
</form>
</div>
	
</body>
</html>