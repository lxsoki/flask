<style>

</style>
<form enctype="multipart/form-data" method="POST" action="{SITE_URL}/file/upload">
	<div class="filelist">
		<input class="fileUpload" type="file" name="files[]"/>
		<input class="fileUpload" type="file" name="files[]"/>
	</div>
	<input class="uploadButton" type="submit" name="submit" value="Upload"/>
</form>