<form enctype="multipart/form-data" method="POST" action="{SITE_URL}/file/upload">
	<div class="filelist">
		<input class="fileUpload" type="file" name="files[]"/>
		
	</div>
	
	<div class="flask_field">
	
	</div>
	<div class="expiry_div">
		<input name="flask_expiry" id="expiry_days_input" type="range" min="0" max="31" value="15"/>
	</div>
	<div class="expiry_div" id="expiry_text_div">
		<span class="expiry_text" id="expiry_days_text"> 15 zile </span>
	</div>
		<button class="flask_button flask_blue_button"  id="flask_add_file"> Adaugare fisier </button>
	<input class="uploadButton" type="submit" name="submit" value="Upload"/>
</form>