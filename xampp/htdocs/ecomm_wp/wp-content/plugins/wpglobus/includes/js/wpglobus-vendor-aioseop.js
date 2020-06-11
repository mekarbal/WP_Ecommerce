/**
 * WPGlobus Administration All on one seo pack
 * Interface JS functions
 *
 * @since 1.0.8
 * @since 2.2.9 Support All In One SEO Pack 3.
 *
 * @package WPGlobus
 * @subpackage Administration
 */
/* jslint browser: true */
/* global jQuery, console, WPGlobusCore, WPGlobusCoreData */

(function($) {
    "use strict";
	
	if ( 'undefined' === typeof WPGlobusAioseop ) {
		return;	
	}	

	var api = {
		addRules: false,
		parseBool: function(b)  {
			return !(/^(false|0)$/i).test(b) && !!b;
		},
		init: function() {
			if ( 0 == $('#aiosp_snippet_wrapper').size() ) {
				/* maybe All in One SEO Pack Pro license key is not set yet or invalid */
				return;	
			}
			api.addRules = api.parseBool(WPGlobusAioseop.add_css_rules);
			// tabs on
			$('#wpglobus-aioseop-tabs').removeClass('hidden wpglobus-hidden').tabs();
			$('#wpglobus-aioseop-tabs').insertBefore($('#aiosp_snippet_wrapper'));
			$('#aiosp_snippet_wrapper, #aiosp_title_wrapper, #aiosp_description_wrapper, #aiosp_keywords_wrapper').addClass('hidden');
			api.setCounters();
			if ( api.addRules ) {
				api.addCssRules();
			}
			api.tabDecoration(true);
			api.attachListeners();
		},
		addCssRules: function() {
			$('.wpglobus-aioseop-general .aioseop_wrapper.aioseop_html_type').each(function(i, elm){
				$(elm).css({'border-radius':'4px', 'border':'1px solid #8d96a0', 'padding':'10px 10px 0', 'max-width':'97%', 'margin-bottom':'15px'});
			});				
		},
		setCounters: function() {
			$('.wpglobus_countable').each(function(i,e){
				var $e = $(e), extra = 0,
					counter = $e.data('field-count');
				if ( typeof $e.data('extra-element') !== 'undefined' ) {
					extra = $('#'+$e.data('extra-element')).data('extra-length');
				}
				$('input[name='+counter+']').val( $e.val().length+extra );	
			});				
		},	
		countChars: function($field,cntfield) {
			var extra = 0, field_size,
				cntfield = 'input[name='+cntfield+']',
				max_size = $field.data('max-size');

			if ( typeof $field.data('extra-element') !== 'undefined' ) {
				extra = $('#'+$field.data('extra-element')).data('extra-length');
			}
			
			field_size = $field.val().length + extra;
			$(cntfield).val( field_size );
			if ( field_size > max_size ) {
				$(cntfield).css({'color':'#fff','background-color':'#f00'});
			} else {
				if ( field_size > max_size - 6 ) {
					$(cntfield).css({'color':'#515151','background-color':'#ff0'});
				} else {
					$(cntfield).css({'color':'#515151','background-color':'#eee'});
				}
			}	
		},	
		tabDecoration: function(init) {
			if ( 'undefined' === typeof init ) {
				init = false;
			}
			if ('boolean' === typeof init && init) {
				$('.wpglobus-aioseop-tabs-list li#aioseop-link-tab-'+WPGlobusCoreData.default_language+' a').css({'border-top':'2px solid #00f'});
				return;
			}
			if ( 'string' === typeof init ) {
				$('.wpglobus-aioseop-tabs-list li a').css({'border-top':''});
				$('.wpglobus-aioseop-tabs-list li#aioseop-link-tab-'+init+' a').css({'border-top':'2px solid #00f'});
			}
		},
		attachListeners: function() {
			$('.wpglobus_countable').on('keyup', function(event) {
				var $t = $(this); 
				api.countChars($t, $t.data('field-count'));
			});

			// tabsactivate			
			$('#wpglobus-aioseop-tabs').on('tabsactivate', function(event, ui){
				api.tabDecoration($(ui.newTab).data('language'));
			});

			$('body').on('click', '.wpglobus-post-body-tabs-list li', function(event){
				var $t = $(this);
				if ( $t.hasClass('wpglobus-post-tab') ) {
					$('#wpglobus-aioseop-tabs').tabs('option','active', $t.data('order'));
					api.tabDecoration($t.data('language'));
				}	
			});				
			
			// title
			$('.wpglobus-aioseop_title').on('keyup', function(event){
				var $t = $(this);
				$('#'+'aioseop_snippet_title_'+$t.data('language')).text($t.val());
			});
			$('body').on('change', '.wpglobus-aioseop_title', function(event){
				var $t = $(this),
					save_to = 'input[name=aiosp_title]';
				$(save_to).val( WPGlobusCore.getString( $(save_to).val(), $t.val(), $t.data('language')) );		
			});		
			
			// description
			$('.wpglobus-aioseop_description').on('keyup', function(event){
				var $t = $(this);
				$('#'+'aioseop_snippet_description_'+$t.data('language')).text($t.val());
			});
			
			$('body').on('change', '.wpglobus-aioseop_description', function(event){
				var $t = $(this),
					save_to = 'textarea[name=aiosp_description]';
				$(save_to).val( WPGlobusCore.getString( $(save_to).val(), $t.val(), $t.data('language')) );		
			});					
			
			// keywords
			$('body').on('change', '.wpglobus-aioseop_keywords', function(event){
				var $t = $(this), 
					save_to = 'input[name=aiosp_keywords]';
				$(save_to).val( WPGlobusCore.getString( $(save_to).val(), $t.val(), $t.data('language')) );		
			});				
			
		}	
	};
	WPGlobusAioseop = $.extend({}, WPGlobusAioseop, api);
	WPGlobusAioseop.init();
})(jQuery);