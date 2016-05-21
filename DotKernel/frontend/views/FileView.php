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
		$this->tpl->setFile('tpl_main', 'page/' . $this->templateFile . '.tpl');
	}
	
	/** Display the content of the Sample Class file
	 * @access public
	 * @param
	 * @return void
	 */
	public function showCodingStandard()
	{
		$content = highlight_file(APPLICATION_PATH . '/library/Dot/Sample/Class.php', true);
		
		$this->tpl->setFile('tpl_main', 'page/coding-standard.tpl');
		$this->tpl->setVar('CODING_STANDARD', $content);
		
	}
}
