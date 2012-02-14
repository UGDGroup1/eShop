<?php
################################################################################################
#  developed by tomsky http://themeforest.net/user/tomsky 		                               #
#  All rights reserved                                                                         #
################################################################################################
class ControllerModuleShopcart extends Controller {
	
	private $error = array(); 
	
	public function index() {   
		//Load the language file for this module
		$this->load->language('module/shopcart');

		//Set the title from the language file $_['heading_title'] string
		$this->document->setTitle($this->language->get('heading_title'));
		
		

		
		
		//Load the settings model. You can also add any other models you want to load here.
		$this->load->model('setting/setting');
		
					$this->load->model('tool/image');
	
	if (isset($this->request->post['own_image'])) {
			$this->data['own_image'] = $this->request->post['own_image'];
			$own_image = $this->request->post['own_image'];
		} else {
			$this->data['own_image'] = '';
		}
		
		if (isset($this->request->post['own_full_image'])) {
			$this->data['own_full_image'] = $this->request->post['own_full_image'];
			$own_image = $this->request->post['own_full_image'];
		} else {
			$this->data['own_full_image'] = '';
		}
		
		
		//Save the settings if the user has submitted the admin form (ie if someone has pressed save).
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('shopcart', $this->request->post);	

				
					
			$this->session->data['success'] = $this->language->get('text_success');
		
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
			$this->data['text_image_manager'] = 'Image manager';
					$this->data['token'] = $this->session->data['token'];		
		
		$text_strings = array(
				'heading_title',
				'text_enabled',
				'text_disabled',
				'text_content_top',
				'text_content_bottom',
				'text_column_left',
				'text_column_right',
				'entry_layout',
				'entry_position',
				'entry_status',
				'entry_sort_order',
				'button_save',
				'button_cancel',
				'button_add_module',
				'button_remove'
		);
		
		foreach ($text_strings as $text) {
			$this->data[$text] = $this->language->get($text);
		}
		

		// store config data
		
		$config_data = array(
		'shopcart_status',
		'shopcart_color_a',
		'shopcart_color_b',
		'shopcart_color_c',
		'shopcart_links_a_color',
		'shopcart_links_b_color',
		'shopcart_links_hover_color',
		'shopcart_menu_links_color',
		'shopcart_menu_bg_color',
		'shopcart_top_bg_color',
		'shopcart_top_menu_bg',
		'shopcart_breadcrumbs_bg_color',
		'shopcart_footer_bg_color',
		'shopcart_button_normal_a',
		'shopcart_button_normal_b',
		'shopcart_button_hover_a',
		'shopcart_button_hover_b',
		'shopcart_promo_price',
		'shopcart_normal_price',
		'shopcart_old_price',
		'shopcart_button_text_color',
		'shopcart_button_text_color_hover',
		
		'shopcart_top_bg_image',
		'google_body_font',
		'google_body_font2',
		
		'shopcart_font',
		'shopcart_body_font',
		'own_image',
		'shopcart_preview',
		'own_bg_image',
		'own_full_image',
		'shopcart_full_preview',
		'own_full_bg_image',
		);
		
		foreach ($config_data as $conf) {
			if (isset($this->request->post[$conf])) {
				$this->data[$conf] = $this->request->post[$conf];
			} else {
				$this->data[$conf] = $this->config->get($conf);
			}
		}
		
		
		
	
		//This creates an error message. The error['warning'] variable is set by the call to function validate() in this controller (below)
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		//SET UP BREADCRUMB TRAIL. YOU WILL NOT NEED TO MODIFY THIS UNLESS YOU CHANGE YOUR MODULE NAME.
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/shopcart', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/shopcart', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

	
		//This code handles the situation where you have multiple instances of this module, for different layouts.
		if (isset($this->request->post['shopcart_module'])) {
			$modules = explode(',', $this->request->post['shopcart_module']);
		} elseif ($this->config->get('shopcart_module') != '') {
			$modules = explode(',', $this->config->get('shopcart_module'));
		} else {
			$modules = array();
		}			
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
				
		foreach ($modules as $module) {
			if (isset($this->request->post['shopcart_' . $module . '_layout_id'])) {
				$this->data['shopcart_' . $module . '_layout_id'] = $this->request->post['shopcart_' . $module . '_layout_id'];
			} else {
				$this->data['shopcart_' . $module . '_layout_id'] = $this->config->get('shopcart_' . $module . '_layout_id');
			}	
			
			if (isset($this->request->post['shopcart_' . $module . '_position'])) {
				$this->data['shopcart_' . $module . '_position'] = $this->request->post['shopcart_' . $module . '_position'];
			} else {
				$this->data['shopcart_' . $module . '_position'] = $this->config->get('shopcart_' . $module . '_position');
			}	
			
			if (isset($this->request->post['shopcart_' . $module . '_status'])) {
				$this->data['shopcart_' . $module . '_status'] = $this->request->post['shopcart_' . $module . '_status'];
			} else {
				$this->data['shopcart_' . $module . '_status'] = $this->config->get('shopcart_' . $module . '_status');
			}	
						
			if (isset($this->request->post['shopcart_' . $module . '_sort_order'])) {
				$this->data['shopcart_' . $module . '_sort_order'] = $this->request->post['shopcart_' . $module . '_sort_order'];
			} else {
				$this->data['shopcart_' . $module . '_sort_order'] = $this->config->get('shopcart_' . $module . '_sort_order');
			}				
		}
		

		
		$this->data['modules'] = $modules;
		
		if (isset($this->request->post['shopcart_module'])) {
			$this->data['shopcart_module'] = $this->request->post['shopcart_module'];
		} else {
			$this->data['shopcart_module'] = $this->config->get('shopcart_module');
		}

		//Choose which template file will be used to display this request.
		$this->template = 'module/shopcart.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		

		
		if (isset($this->data['own_image']) && $this->data['own_image'] != "" && file_exists(DIR_IMAGE . $this->data['own_image'])) {
			$this->data['shopcart_preview'] = $this->model_tool_image->resize($this->data['own_image'], 70, 70);
		} else {
			$this->data['shopcart_preview'] = $this->model_tool_image->resize('no_image.jpg', 50, 70);
		}
		
		
		if (isset($this->data['own_full_image']) && $this->data['own_full_image'] != "" && file_exists(DIR_IMAGE . $this->data['own_full_image'])) {
			$this->data['shopcart_full_preview'] = $this->model_tool_image->resize($this->data['own_full_image'], 70, 70);
		} else {
			$this->data['shopcart_full_preview'] = $this->model_tool_image->resize('no_image.jpg', 50, 70);
		}

		//Send the output.
		$this->response->setOutput($this->render());
	}
	
	/*
	 * 
	 * This function is called to ensure that the settings chosen by the admin user are allowed/valid.
	 * You can add checks in here of your own.
	 * 
	 */
	
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/shopcart')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}


}
?>