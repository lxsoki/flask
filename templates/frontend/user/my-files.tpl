<script type="text/javascript">
	
</script>

<h2>Lista fisierelor</h2>
<!--  flask filelist  -->
<table class="pure-table pure-table-horizontal pure-table-striped white_bg" style="width: 100%">
	<thead>
		<tr>
			<th>Data</th>
			<th>Nume fisier</th>
			<th style="max-width: 100px">Dimensiune</th>
			<th style="max-width: 100px">Link descarcare</th>
			<th >Cheie acces</th>
			<th style="max-width: 100px">Descarcare directa </th>
		</tr>
	</thead>
	<tbody>
		<!-- BEGIN flask_file_list -->
		<tr>
			<td>{FILE_DATEUPLOADED}</td>
			<td>{FILE_NAME}</td>
			
			<td><span class="flask_file_size">{FILE_SIZE}</span></td>
			<td>
				<a href="{SITE_URL}d/{FILE_HASH}" class="fa fa-download fa-2x no_decoration">  </a>
			</td>
			<td>
				{FILE_KEY}
			</td>
			<td>
				<a href="{SITE_URL}d/{FILE_HASH}/k/{FILE_KEY}" class="fa fa-cloud-download fa-2x no_decoration">  </a>
				
			</td>
		</tr>
		<!-- END flask_file_list -->
	</tbody>
</table>