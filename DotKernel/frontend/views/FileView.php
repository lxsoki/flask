<?php

class File_View extends View
{
	/**
	 * Constructor
	 * @access public
	 * @param Dot_Template $tpl
	 */
	public function __construct($tpl)
	{
		$this->tpl = $tpl;
	}
	/**
	 * Show the content of a page item
	 * @access public
	 * @param string $templateFile [optional]
	 * @return void
	 */
	public function showPage($templateFile = '')
	{
		if ($templateFile != '') $this->templateFile = $templateFile;//in some cases we need to overwrite this variable
		$this->tpl->setFile('tpl_main', 'file/' . $this->templateFile . '.tpl');
	}
	
	public function showUploadedFiles($templateFile, $uploadedFiles = array() )
	{
		$this->showPage($templateFile);
		if(count($uploadedFiles) > 1 )
		{
			$this->tpl->setBlock('tpl_main', 'flask_file_list', 'filelist_block');
			foreach($uploadedFiles as $file)
			{
				foreach($file as $key => $value)
				{
					$this->tpl->setVar('FILE_'.strtoupper($key), $value);
				}
				$this->tpl->parse('filelist_block', 'flask_file_list', true);
			}
		}
	}
}
