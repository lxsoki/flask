/**
 * Display menu in frontend
 * @param {String} menu
 * @param {String} parent_id
 */
function ShowMenuItem(menu, parent_id)
{
	for (var i = 0; i <= 100; i++)
	{
		if (document.getElementById(menu + '_' + i))
		{
			document.getElementById(menu + '_' + i).style.display = 'none';
		}
	}

	if (document.getElementById(menu + '_' + parent_id))
	{
		document.getElementById(menu + '_' + parent_id).style.display = 'block';
	}
}
/**
 * Show/Hide div ID
 * @param {String} id
 */
function ShowHideDiv (idv, classv)
{
	if ($('#' + idv).is(':visible'))
	{
		$('#' + idv).hide();
	}
	else
	{
		$('.' + classv).hide();
		$('#' + idv).show();
	}
}

/**
 * Show/Hide top menu
 * @param void
 */
function ShowTopMenu ()
{
	if ($('#top_menu').is(':visible'))
	{
		$('#top_menu').slideUp("slow", function() {
			
		});
	}
	else
	{
		$('#top_menu').slideDown("slow", function() {		
		});
	}
}
$( document ).ready( function(){
$('#flask_add_file').click(function(event){
	event.preventDefault();
	 
	$('.filelist').append(' <input class="fileUpload" type="file" name="files[]"/>');
	 
})});



function nrToSize(number)
{
	if(number < 10 )
		return (number).toFixed(2) + ' b';
	if(number < 1024 )
		return (number/100).toFixed(2) + ' kb';
	if(number < 1024 * 1000 )
		return (number/1024).toFixed(2) +' kb'; 
	if(number < 1024 * 1024 * 1000 )
		return (number/1024/1024).toFixed(2) +' mb';
	if(number < 1024 * 1024 * 1024 *1000 )
		return (number/1024/1024/1024).toFixed(2) +' gb'; 
	
}

$( document ).ready(function() {

	$( '#expiry_days_text' ).text($( '#expiry_days_input' ).value );
	
    $( '.flask_file_size' ).each(function( index, element ) {
    // element == this

    var number = $( element ).text(   );
    $( element ).text( nrToSize(number) );
  });
    $( '#expiry_days_input' ).on('change', function(   ) {
        // element == this
    	if(this.value == 0){
    		$( '#expiry_days_text' ).text("nelimitat");
    	}
    	else{
    		$( '#expiry_days_text' ).text(this.value + " zile");
    	}
      });
    
});


