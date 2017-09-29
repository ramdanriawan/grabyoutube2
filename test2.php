<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script src="./node_modules/jquery/dist/jquery.min.js"></script>
</head>
<body>

<div id="test">
	
</div>

<script>
	$(document).ready(function(){

		var data = {
			action_continuation : 1,
			continuation : "4qmFsgJAEhhVQ3BTUFM1eUxDeFlSdVpTckN4LWVCakEaJEVnWjJhV1JsYjNNZ0FEZ0JZQUZxQUhvQk1yZ0JBQSUzRCUzRA%3D%3D",
			direct_render : 1
		}

		$.ajax({
			url: "http://youtube.com/browse_ajax",
			data: data,
			success: function(response){
				console.log(response)
				data = $.parseJSON(response);
				$("#test").html(data.content_html);
			}
		})
	})
</script>
</body>
</html>