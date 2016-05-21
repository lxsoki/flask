<script type="text/javascript">

function nrToSize(number)
{
	if(number < 10 )
		return (number).toFixed(2) + ' b';
	if(number < 1024 )
		return (number/100).toFixed(2) + ' kb';
	if(number < 1024 * 1000 )
		return (number/1024).toFixed(2) +' kb'; 
	if(number < 1024 * 1024 *1000 )
		return (number/1024).toFixed(2) +' mb';
	if(number < 1024 * 1024 * 1024 *1000 )
		return (number/1024).toFixed(2) +' gb'; 
	
}
$( document ).ready(function() {
    $( '.flask_file_size' ).each(function( index, element ) {
    // element == this

    var number = $( element ).text(   );
    $( element ).text( nrToSize(number) );
  });
});
</script>
<h2> Fisierele au fost incarcate cu succes </h2>

<div class="flask_filelist">
<!-- BEGIN flask_file_list -->
	<div class="flask_file">
		<div class="flask_file_data">
		
			<div class="flask_file_extension">{FILE_EXTENSION}</div>
			<div class="flask_file_size">{FILE_SIZE}</div>
			
			
		</div>
		<div class="flask_file_name">{FILE_NAME}</div>
		<div class="flask_download">
			<a href="{SITE_URL}/d/{FILE_HASH}"> <i class="fa fa-download fa-2x"> </i></a>
		</div>
		
		
		
	</div>
<!-- END flask_file_list -->
</div>