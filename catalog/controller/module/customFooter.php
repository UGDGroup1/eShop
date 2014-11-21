<?php
class ControllerModuleCustomFooter extends Controller {
	protected function index() {
		//Load the language file for this module - catalog/language/module/my_module.php
		$this->language->load ( 'module/customFooter' );
		
		//Get the title from the language file
		
		
		$this->data['categories_text'] = $this->language->get('categories_text');

		$this->data ['custom_footer_status'] = $this->config->get ( 'custom_footer_status' );
		
		
		// ABOUT US
		$this->data ['about_status'] = $this->config->get ( 'about_status' );	
		$this->data ['about_header'] = $this->config->get ( 'about_header' );
		$this->data ['about_text'] = $this->config->get ( 'about_text' );
		
		
		// CONTACT COLUMN
		$this->data ['contact_status'] = $this->config->get ( 'contact_status' );
		$this->data ['contact_header'] = $this->config->get ( 'contact_header' );
		$this->data ['telephone1'] = $this->config->get ( 'telephone1' );
		$this->data ['telephone2'] = $this->config->get ( 'telephone2' );
		$this->data ['email1'] = $this->config->get ( 'email1' );
		$this->data ['email2'] = $this->config->get ( 'email2' );
		$this->data ['skype'] = $this->config->get ( 'skype' );
		$this->data ['fax'] = $this->config->get ( 'fax' );
		
		
		// FACEBOOK
		$this->data ['facebook_status'] = $this->config->get ( 'facebook_status' );		
		$this->data ['facebook_id'] = $this->config->get ( 'facebook_id' );
		
		// CUSTOM COLUMN
		$this->data ['custom_footer_column_status'] = $this->config->get ( 'custom_footer_column_status' );
		$this->data ['custom_footer_column_header'] = $this->config->get ( 'custom_footer_column_header' );
		$this->data ['custom_footer_column_content'] = $this->config->get ( 'custom_footer_column_content' );
		
		// TWITTER
		$this->data ['twitter_column_status'] = $this->config->get ( 'twitter_column_status' );
		$this->data ['twitter_column_header'] = $this->config->get ( 'twitter_column_header' );
		$this->data ['twitter_number_of_tweets'] = $this->config->get ( 'twitter_number_of_tweets' );
			$this->data ['twitter_username'] = $this->config->get ( 'twitter_username' );
		
			//CATEGORIES
		$this->data ['categories_column_status'] = $this->config->get ( 'categories_column_status' );
		
		// number of active columns
		$this->data ['custom_footer_active_columns'] = $this->data ['about_status'] + $this->data ['contact_status'] + $this->data ['facebook_status'] + $this->data ['custom_footer_column_status'] + $this->data ['twitter_column_status'] + $this->data ['categories_column_status'];
		//Load any required model files - catalog/product is a common one, or you can make your own DB access
		//methods in catalog/model/module/my_module.php
		//$this->load->model('module/my_module');
		

		/*
 * 
 * 
 * What you do here depends on what you want your module to do. You should call your model methods to get some
 * data out of the DB and then make it accessible to your view file by putting it in the $this->data[] array.
 * 
 * 
 * 
 */
		
		//Example functionality: pull through customer firstnames and make them available to the view.
		

		$this->data ['custom_html'] = $this->config->get ( 'custom_html' );
		$this->id = 'customFooter';
		
		//Choose which view to display this module with - the left and right column use the same file, the home page center
		//column uses its own view file.
		

		if (file_exists ( DIR_TEMPLATE . $this->config->get ( 'config_template' ) . '/template/module/customFooter.tpl' )) {
			$this->template = $this->config->get ( 'config_template' ) . '/template/module/customFooter.tpl';
		} else {
			$this->template = 'default/template/module/customFooter.tpl';
		}
		
		$this->render ();
	}
}
?>