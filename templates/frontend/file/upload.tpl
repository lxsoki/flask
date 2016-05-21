<style>
header{
	background-color: #FFA630;
}
#wrapper{
	background-color: #1d1d1d; 
}
#content{
	background-color: #D7E8BA; 
	padding: 15px;
}
.fileUpload{
	margin:auto;
	display:block; 
	border: 0px;
	background-color: #611C35;
	color: #fff;
	width: 200px;
	height: 40px;
	font-size: 24px;
	color:transparent;
}
.uploadButton{
	margin:auto;
	display:block; 
	border: 0px;
	background-color: #611C35;
	color: #fff;
	width: 200px;
	height: 40px;
	font-size: 24px;	
}
.uploadButton:hover{
	background-color: #3d3d3d;
	color: #FFA630;
}


.flaskFooter{
	background-color: #2E5077;
	color: #fff;
	padding: 24px;
	font-size: 16px;
	text-align: center;
}

h1, h2, h3, h4{
	color: #611C35;
}
.debugger{
	color: #fff;
}
footer{
	background-color: #4DA1A9;
}
</style>
<form enctype="multipart/form-data">
	<input class="fileUpload" type="file" name="files[]"/>
	<input class="uploadButton" type="submit" name="submit" value="Upload"/>
</form>