 <!DOCTYPE html>
 <html lang="en">
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js" type="text/javascript"></script>
   <script type="text/javascript">
        $("a").click(function(event){
   		event.preventDefault();
   		$(this).hide("slow");
 		});
   </script>
 </head>
 <body>
   <a href="http://jquery.com/">jQuery</a>
 </body>
 </html>
