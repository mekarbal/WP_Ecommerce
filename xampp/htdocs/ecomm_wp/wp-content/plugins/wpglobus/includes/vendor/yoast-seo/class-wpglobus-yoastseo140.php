<?php
/**
 * Support of Yoast SEO 14.0
 *
 * @package WPGlobus\Vendor\YoastSEO
 * @since 2.4
 */

/**
 * Class WPGlobus_YoastSEO.
 */
class WPGlobus_YoastSEO {

	/**
	 * Yoast SEO separator.
	 *
	 * @var string
	 */
	public static $yoastseo_separator = '';

	/**
	 * Name of the script.
	 *
	 * @var string
	 */
	public static $handle_script = 'wpglobus-yoastseo';
	
	/**
	 * Name of the dashboard script.
	 *
	 * @since 2.4.5
	 * @var string
	 */
	public static $handle_script_dashboard = 'wpglobus-yoastseo-dashboard';

	/**
	 * Name of the premium script.
	 *
	 * @since 1.7.2
	 * @var string
	 */
	public static $handle_script_premium = 'wpglobus-yoastseo-premium';

	/**
	 * Current version yoast seo.
	 *
	 * @since 1.8
	 * @var string	 
	 */
	protected static $version = '';

	/**
	 * Contains wpseo meta.
	 *
	 * @since 2.2.16
	 * @var null|array 
	 */	
	protected static $wpseo_meta = null;

	/**
	 * Contains document title.
	 *
	 * @since 2.4.7
	 * @var null|string
	 */		
	protected static $title = null;
	
	/**
	 * Plus access.
	 *
	 * @since 2.2.20
	 * @var boolean|string
	 */		
	protected static $plus_module = false;
	
	/**
	 * Static "controller"
	 */
	public static function controller($version, $plus_module = false) {
			
		self::$version = $version;
		self::$plus_module = $plus_module;

		if ( is_admin() ) {
			
			/**
			 * @since 2.2.20
			 */
			add_action( 'admin_print_scripts', array(
				__CLASS__,
				'action__admin_print_scripts'
			) );
				
			if ( WPGlobus_WP::is_pagenow( 'edit.php' ) ) {
				
				/**
				 * To translate Yoast columns on `edit.php` page.
				 * @since 2.2.16
				 */
				add_filter( 'wpseo_title', array(
					__CLASS__,
					'filter__wpseo_title'
				), 5 );
				
				
				add_filter( 'wpseo_metadesc', array(
					__CLASS__,
					'filter__wpseo_metadesc'
				), 5 );
			}

		} else {
			
			/**
			 * Frontend.
			 */
			 
			/**
			 * Filter SEO title and meta description on front only, when the page header HTML tags are generated.
			 * AJAX is probably not required (waiting for a case).
			 */
			add_filter( 'wpseo_title', array( __CLASS__, 'filter__title' ), PHP_INT_MAX );
			/**
			 * Filter opengraph title.
			 * @since 2.4
			 */			
			add_filter( 'wpseo_opengraph_title', array( __CLASS__, 'filter_front__title' ), 5, 2 );	
	
			/**
			 * Filter meta description.
			 * @since 2.4
			 */
			add_filter( 'wpseo_metadesc', array( __CLASS__, 'filter_front__description' ), 5, 2 );	
			add_filter( 'wpseo_opengraph_desc', array( __CLASS__, 'filter_front__description' ), 5, 2 );	
			
			/**
			 * Filter canonical URL and open graph URL
			 * @since 2.4
			 */
			add_filter( 'wpseo_canonical', array( __CLASS__, 'filter_front__localize_url' ), 5, 2 );	
			add_filter( 'wpseo_opengraph_url', array( __CLASS__, 'filter_front__localize_url' ), 5, 2 );	
			
			/**
			 * Filter the HTML output of the Yoast SEO breadcrumbs class.
			 * @since 2.4.2
			 */		
			add_filter( 'wpseo_breadcrumb_output', array( __CLASS__, 'filter__breadcrumb_output' ), 5, 2 );	

			/**
			 * @todo check for '_yoast_wpseo_title' meta
			 * @see <title> view-source:http://test/test-post-seo/
			 * @see <title> view-source:http://test/ru/test-post-seo/
			 */
			add_filter( 'get_post_metadata', array( __CLASS__, 'filter__get_post_metadata' ), 6, 4 );
			
			/**
			 * Filter meta keywords.
			 * @from 1.8.8
			 */
			add_filter( 'wpseo_metakeywords', array( __CLASS__, 'filter__metakeywords' ), 0 );

			/**
			 * Filter schema generator.
			 * @from 2.4.7
			 */			
			add_filter( 'wpseo_schema_breadcrumb', array( __CLASS__, 'filter__wpseo_schema_breadcrumb' ), 5, 2 );
						
		}
	}
	
	/**
	 * Filter Yoast post meta title.
	 *
	 * @scope front
	 * @since 1.9.18
	 * @since 2.4.7	  Handle multilingual title from `postmeta` table.
	 *
	 * @param string $title Post title.
	 *
	 * @return string.
	 */	
	public static function filter__title( $title ) {
		
		/**
		 * In some cases we can get $title like {:en}En title{:}{:ru}Ru title{:}{:fr}Fr title{:} - SiteTitle
		 * so, let's filter.
		 */
		if ( WPGlobus_Core::has_translations($title) ) {
		
			if ( is_null( self::$title ) ) {
				self::$title = $title;
			}			
			return WPGlobus_Core::extract_text( self::$title, WPGlobus::Config()->language );
		}

		/**
		 * We can get title in last saved language (has no multilingual) from @see `wp_yoast_indexable` table.  
		 * So, we need get multilingual title from `postmeta` table.
		 * @since 2.4.7
		 */
		if ( ! is_null( self::$title ) ) {
			return WPGlobus_Core::extract_text( self::$title, WPGlobus::Config()->language );
		}
		
		/** @global wpdb $wpdb */		
		global $wpdb;
		
		/** @global WP_Post $post */
		global $post;
		
		if ( (int) $post->ID > 0 ) {
			$query = $wpdb->prepare( 
				"SELECT meta_value FROM {$wpdb->prefix}postmeta AS m WHERE m.post_id = %s AND m.meta_key = %s",
				$post->ID,
				'_yoast_wpseo_title'
			);
			
			$meta = $wpdb->get_var($query);
			if ( ! empty($meta)	&& false != mb_strpos($meta, $title) && WPGlobus_Core::has_translations($meta) ) {
				self::$title = $meta;
				return WPGlobus_Core::extract_text( self::$title, WPGlobus::Config()->language );
			}
		}		
	
		return $title;
	}
	
	/**
	 * Filter wpseo title.
	 *
	 * @see wordpress-seo\src\presenters\open-graph\title-presenter.php
	 * @scope front
	 * @since 2.4
	 * @since 2.4.6 Removed checking for default language.
	 *
	 * @param string 				 $title 	   The title.
	 * @param Indexable_Presentation $presentation The presentation of an indexable.
	 *
	 * @return string
	 */
	public static function filter_front__title( $title, $presentation ) {
		
		if ( empty( $title ) ) {
			return $title;
		}
		return self::filter__title( $title );
	}
	
	/**
	 * Filter post meta.
	 *
	 * @since 1.9.21
	 * @since 2.1.3
	 * @see function function get_value() in wordpress-seo\inc\class-wpseo-meta.php
	 */
	public static function filter__get_post_metadata( $check, $object_id, $meta_key, $single  ) {

		global $post;
	
		if ( $single ) {
			return $check;
		}
		
		if ( ! is_object($post) ) {
			return $check;
		}
		
		if ( $object_id != $post->ID ) {
			return $check;
		}
		
		/**
		 * May be called many times on one page. Let's cache.
		 */
		static $_done = null;	
		if ( ! is_null($_done) ) {
			return $check;
		}
		
		$meta_type = 'post';	
		
		$meta_cache = wp_cache_get($object_id, $meta_type . '_meta');
		
		if ( ! empty($meta_cache['_yoast_wpseo_title'][0]) ) {
			$meta_cache['_yoast_wpseo_title'][0] = WPGlobus_Core::text_filter( $meta_cache['_yoast_wpseo_title'][0], WPGlobus::Config()->language, WPGlobus::RETURN_EMPTY );
			wp_cache_replace( $object_id, $meta_cache, $meta_type . '_meta' );
		}
		
		/**
		 * @since 2.2.33
		 */
		if ( ! empty($meta_cache['_yoast_wpseo_focuskw'][0]) ) {
			$meta_cache['_yoast_wpseo_focuskw'][0] = WPGlobus_Core::text_filter( $meta_cache['_yoast_wpseo_focuskw'][0], WPGlobus::Config()->language, WPGlobus::RETURN_EMPTY );
			wp_cache_replace( $object_id, $meta_cache, $meta_type . '_meta' );
		}

		$_done = true;
		
		return $check;

	}
	
	/**
	 * Filter Yoast post meta keywords.
	 *
	 * @scope front
	 * @since 1.8.8
	 *
	 * @param string $keywords Multilingual keywords.
	 *
	 * @return string.
	 */
	public static function filter__metakeywords( $keywords ) {
		if ( WPGlobus::Config()->language != WPGlobus::Config()->default_language ) {
			return '';
		}
		return WPGlobus_Core::text_filter($keywords, WPGlobus::Config()->language, WPGlobus::RETURN_EMPTY);
	}
	
	/**
	 * @obsolete
	 *
	 * Fix empty yoast_wpseo_focuskw while saving/updating post with active extra language.
	 *
	 * @since 1.6.3
	 * @since 1.7.7
	 * @see filter 'wpseo_save_compare_data' wordpress-seo\admin\metabox\class-metabox.php
	 *
	 * @param WP_Post Object $post Current post.
	 */
	public static function action__save_compare_data( $post ) {
		// @see wpglobus\includes\vendor\yoast-seo\class-wpglobus-yoastseo120.php	
	}

	/**
	 * @obsolete
	 * 
	 * Filter to get yoast seo separator.
	 *
	 * @since 1.5.3
	 *
	 * @param array $sep Contains separator.
	 *
	 * @return string
	 */
	public static function filter__get_separator( $sep ) {
		// @see wpglobus\includes\vendor\yoast-seo\class-wpglobus-yoastseo120.php	
	}

	/**
	 * @obsolete
	 * 
	 * Filter which editor should be displayed by default.
	 *
	 * @since 1.4.8
	 *
	 * @param array $editors An array of editors. Accepts 'tinymce', 'html', 'test'.
	 *
	 * @return string
	 */
	public static function set_default_editor(
		/** @noinspection PhpUnusedParameterInspection */
		$editors
	) {
		// @see wpglobus\includes\vendor\yoast-seo\class-wpglobus-yoastseo120.php	
	}

	/**
	 * Filter wpseo meta description.
	 *
	 * @see wordpress-seo\src\presenters\meta-description-presenter.php 
	 * @see wordpress-seo\src\presenters\open-graph\description-presenter.php
	 * @scope front
	 * @since 2.4
	 *
	 * @param string 				 $meta_description Value from @see `description` field in `wp_yoast_indexable` table.
	 * @param Indexable_Presentation $presentation The presentation of an indexable.
	 *
	 * @return string
	 */
	public static function filter_front__description( $meta_description, $presentation ) {

		/**
		 * $meta_description is received from `description` field in `wp_yoast_indexable` table. 
		 */

		/**
		 * Key to define that `wpseo_metadesc` filter was already fired earlier.
		 */
		static $meta_description_presenter_was_fired = false;
		
		if ( $meta_description_presenter_was_fired ) {
			/**
			 * Set meta description to empty value for `wpseo_opengraph_desc` filter like for empty $meta_description in `wpseo_metadesc` filter.
			 */
			$meta_description = '';
		} else {
			if ( empty($meta_description) ) {
				$meta_description_presenter_was_fired = true;
			}
		}
		
		return self::get_meta( '_yoast_wpseo_metadesc', $meta_description );
	}

	/**
	 * Filter canonical URL and open graph URL put out by Yoast SEO.
	 *
	 * @see wordpress-seo\src\presenters\canonical-presenter.php
	 * @see wordpress-seo\src\presenters\open-graph\url-presenter.php
	 * @scope front
	 * @since 2.4
	 *
	 * @param string 				 $url The canonical URL or open graph URL.
	 * @param Indexable_Presentation $presentation The presentation of an indexable.
	 *
	 * @return string
	 */
	public static function filter_front__localize_url( $url, $presentation ) {
		/**
		 * URL is received from `permalink` field in `wp_yoast_indexable` table. 
		 */
		if ( WPGlobus::Config()->language == WPGlobus::Config()->default_language ) {
			return $url;
		}		

		if ( ! is_singular() ) {
			return $url;
		}

		return WPGlobus_Utils::localize_current_url( WPGlobus::Config()->language );
	}
	
	/**
	 * Filter the HTML output of the Yoast SEO breadcrumbs class.
	 *
	 * @see wordpress-seo\src\presenters\breadcrumbs-presenter.php
	 * @scope front
	 * @since 2.4.2
	 *
	 * @param $output 							   The HTML output
	 * @param Indexable_Presentation $presentation The presentation of an indexable.
	 *
	 * @api string $output The HTML output.	 
	 *
	 * @return string
	 */
	public static function filter__breadcrumb_output( $output, $presentation ) {
		
		/** @global wpdb $wpdb */
		global $wpdb;
		
		$object_type 	 = null;
		$object_sub_type = null;
		$object_order 	 = null;
		
		if ( $presentation->source instanceof WP_Post ) {
			
			$object_type = 'post';	
			$object_sub_type = $presentation->source->post_type;	
		
		} elseif ( $presentation->source instanceof WP_Term ) {
		
			$object_type = 'taxonomy';	
			$object_sub_type = $presentation->source->taxonomy;	

			if ( $presentation->source->parent == 0 ) {
				$object_order = array($presentation->source->term_id);
			} else {
				$object_order = get_ancestors($presentation->source->term_id, $object_sub_type);
				if ( count($object_order) > 1 ) {
					$object_order = array_reverse( $object_order );
				}
				$object_order[] = $presentation->source->term_id;
			}

		}
		
		$ids = array();
		$breadcrumbs = array();
		$i = 0;
		
		foreach( $presentation->breadcrumbs as $order=>$piece ) {	
			
			if ( $order == 0 ) {
				
				if ( empty( $piece['id'] ) ) {
					/**
					 * If homepage displays as latest posts, then we should force the setting of `Home` for all languages.
					 */
					$output = str_replace( $piece['url'], home_url('/'), $output );
				} else {
					if ( WPGlobus::Config()->language != WPGlobus::Config()->default_language ) {
						$output = str_replace( $piece['url'], home_url('/'), $output );
					}
				}
				
				if ( WPGlobus_Core::has_translations($piece['text']) ) {
					$_home_text = WPGlobus_Core::text_filter( $piece['text'], WPGlobus::Config()->language, WPGlobus::RETURN_IN_DEFAULT_LANGUAGE );
					$output = str_replace( $piece['text'], $_home_text, $output );
				}
				
			} else {
			
				switch ($object_type) :
					case 'post' :
						if ( ! empty($piece['id']) ) {
							$ids[] = $piece['id']; 
							$breadcrumbs[ $piece['id'] ] = $piece;
							$breadcrumbs[ $piece['id'] ]['object_type'] = $object_type;
							$breadcrumbs[ $piece['id'] ]['object_sub_type'] = $object_sub_type;
						}
						break;
					case 'taxonomy' :
						$_id = $order;
						if ( ! is_null( $object_order ) ) {
							$_id = $object_order[$i];
							$ids[] = $_id; 
						}
						$breadcrumbs[ $_id ] = $piece;
						$breadcrumbs[ $_id ]['object_type'] = $object_type;
						$breadcrumbs[ $_id ]['object_sub_type'] = $object_sub_type;
						$i++;
						break;
				endswitch;
			}				
		}

		$query = null;
		
		if ( ! empty($ids) ) {
			
			$_ids = implode( ',', $ids );
			switch ($object_type) :
				case 'post' :
					$select   = $wpdb->prepare( "SELECT ID, post_title AS ml_title, post_name, post_type FROM $wpdb->posts WHERE ID IN ( %s )", $_ids );
					$select   = str_replace( "'", '', $select );
					break;
				case 'taxonomy' :
					$select   = $wpdb->prepare( "SELECT term_id, name AS ml_title, slug FROM $wpdb->terms WHERE term_id IN ( %s )", $_ids );
					$select   = str_replace( "'", '', $select );
					break;
			endswitch;		

			$query = $wpdb->get_results( $select, OBJECT_K );
			
			foreach( $breadcrumbs as $id=>$piece ) {
			
				$output = str_replace( 
					array( 
						$piece['url'],
						$piece['text'] 
					),
					array( 
						WPGlobus_Utils::localize_url( $piece['url'], WPGlobus::Config()->language ), 
						WPGlobus_Core::text_filter( $query[$id]->ml_title, WPGlobus::Config()->language ) 
					), 
					$output 
				);
			}
		}

		/**
		 * @since 2.4.2 @W.I.P
		 */
		//$output = apply_filters( 'wpglobus_wpseo_breadcrumb_output', $output, $breadcrumbs, $query );
		
		return $output;
	}
	
	/**
	 * Filter wpseo meta description.
	 *
	 * @see wordpress-seo\admin\class-meta-columns.php
	 * @scope admin
	 * @since 2.2.16
	 *
	 * @param string $metadesc_val Value in default language.
	 *
	 * @return string
	 */
	public static function filter__wpseo_metadesc( $metadesc_val ) {
		
		if ( empty($metadesc_val) ) {
			return $metadesc_val;
		}
		
		if ( WPGlobus::Config()->language == WPGlobus::Config()->default_language ) {
			return $metadesc_val;
		}

		return self::get_meta( '_yoast_wpseo_metadesc', $metadesc_val );
	}
	
	/**
	 * To translate Yoast `column-wpseo-title`.
	 *
	 * @see wordpress-seo\admin\class-meta-columns.php
	 * @scope admin
	 * @since 2.2.16
	 *
	 * @param string $title
	 *
	 * @return string
	 */
	public static function filter__wpseo_title( $title ) {
		return WPGlobus_Core::extract_text( $title, WPGlobus::Config()->language );	
	}

	/**
	 * Get meta for extra language.
	 *
	 * @scope admin
	 * @since 2.2.16
	 */	
	protected static function get_meta( $meta_key, $meta_value = '' ) {

		if ( is_null(self::$wpseo_meta) ) {
			self::get_wpseo_meta();
		}

		if ( empty( self::$wpseo_meta[ $meta_key ] ) ) {
			return '';
		}
		
		/** @global WP_Post $post */
		global $post;
		
		if ( empty( $meta_value ) ) {

			/**
			 * Try get meta by post ID.
			 */
			if ( ! $post instanceof WP_Post ) {
				return '';
			}
			if ( empty( self::$wpseo_meta[$meta_key][$post->ID] ) ) {
				return '';
			}
			
			return WPGlobus_Core::text_filter( self::$wpseo_meta[$meta_key][$post->ID], WPGlobus::Config()->language, WPGlobus::RETURN_EMPTY );
		}
		
		$_return_value = '';
		foreach( self::$wpseo_meta[ $meta_key ] as $_meta_value ) {
			if ( false !== strpos( $_meta_value, $meta_value ) ) {
				$_return_value = WPGlobus_Core::text_filter( $_meta_value, WPGlobus::Config()->language, WPGlobus::RETURN_EMPTY );
				break;
			}
		}
		
		return $_return_value;
	}
	
	/**
	 * Get `_yoast_wpseo_metadesc`, `_yoast_wpseo_focuskw` meta.
	 *
	 * @scope both
	 * @since 2.4
	 * @since 2.4.6 Separate the defining of post type for frontend and admin.
	 */
	protected static function get_wpseo_meta() {
		
		/** @global wpdb $wpdb */
		global $wpdb;
		
		/** @global WP_Post $post */
		global $post;

		$post_type = 'post';
		
		if ( is_admin() && ! empty( $_GET['post_type'] ) ) {
			/**
			 * Admin.
			 */
			$post_type = sanitize_text_field( $_GET['post_type'] ); // phpcs:ignore WordPress.CSRF.NonceVerification
		} elseif ( ! empty( $post->post_type ) ) {
			/**
			 * Front-end.
			 */
			$post_type = $post->post_type;
		}

		$query = false;
		
		if ( is_admin() ) {
			$query = $wpdb->prepare( 
				"SELECT p.ID, p.post_type, pm.meta_key, pm.meta_value FROM {$wpdb->prefix}posts AS p JOIN {$wpdb->prefix}postmeta AS pm ON p.ID = pm.post_id WHERE p.post_type = %s AND (pm.meta_key = %s OR pm.meta_key = %s)",
				$post_type,
				'_yoast_wpseo_metadesc',
				'_yoast_wpseo_focuskw'
			);
		} else {
			
			if ( (int) $post->ID > 0 ) {
				$query = $wpdb->prepare( 
					"SELECT p.ID, p.post_type, pm.meta_key, pm.meta_value FROM {$wpdb->prefix}posts AS p JOIN {$wpdb->prefix}postmeta AS pm ON p.ID = pm.post_id WHERE p.ID = %s AND p.post_type = %s AND (pm.meta_key = %s OR pm.meta_key = %s)",
					$post->ID,
					$post_type,
					'_yoast_wpseo_metadesc',
					'_yoast_wpseo_focuskw'
				);
			}				
		}
		
		if ( $query ) {
			
			$metas = $wpdb->get_results( $query, ARRAY_A  );

			if ( ! empty( $metas ) ) {
				foreach( $metas as $_meta ) {
					if ( ! isset( self::$wpseo_meta[ $_meta['meta_key'] ] ) ) {
						self::$wpseo_meta[ $_meta['meta_key'] ] = array();
					}
					self::$wpseo_meta[ $_meta['meta_key'] ][ $_meta['ID'] ] = $_meta['meta_value'];
				}
			}
			
		}
	}
	
	/**
	 * @obsolete
	 *
	 * To translate Yoast columns
	 * @see   WPSEO_Meta_Columns::column_content
	 * @scope admin
	 *
	 * @param string $text
	 *
	 * @return string
	 * @todo  Yoast said things might change in the next version. See the pull request
	 * @link  https://github.com/Yoast/wordpress-seo/pull/1946
	 */
	public static function filter__wpseo_columns( $text ) {
		// @see wpglobus\includes\vendor\yoast-seo\class-wpglobus-yoastseo120.php	
	}

	/**
	 * Enqueue JS for YoastSEO support.
	 *
	 * @since 1.4.0
	 * @since 2.2.20
	 * @since 2.4.5  Add JS script on dashboard.
	 */
	public static function action__admin_print_scripts() {

		if ( WPGlobus_WP::is_pagenow( 'admin.php' ) ) {
			
			if ( 'wpseo_tools' == WPGlobus_Utils::safe_get('page') && 'bulk-editor' == WPGlobus_Utils::safe_get('tool') ) {

				$wrng1 = '<div>' . esc_html__( 'Bulk editing of the multilingual titles and descriptions is not supported by the current version.', 'wpglobus' ) . '</div>';
				$wrng2 = '<div>' . esc_html__( 'Therefore, to avoid any data loss, we do not recommend using this.', 'wpglobus' ) . '</div>';

				$i18n = array(
					'preWarning'        => esc_html__( 'WPGlobus warning: ', 'wpglobus' ),
					'bulkEditorWarning' => $wrng1 . $wrng2,
				);

				$src = WPGlobus::$PLUGIN_DIR_URL . 'includes/js/wpglobus-yoastseo-dashboard' . WPGlobus::SCRIPT_SUFFIX() . '.js';

				wp_register_script(
					self::$handle_script_dashboard,
					$src,
					array( 'jquery' ),
					WPGLOBUS_VERSION,
					true
				);
				
				wp_enqueue_script(self::$handle_script_dashboard);

				wp_localize_script(
					self::$handle_script_dashboard,
					'WPGlobusYoastSeoDashboard',
					array(
						'version' 		=> WPGLOBUS_VERSION,
						'wpseo_version' => WPSEO_VERSION,
						'pagenow' 		=> 'admin.php',
						'page' 			=> WPGlobus_Utils::safe_get('page'),
						'tool' 			=> WPGlobus_Utils::safe_get('tool'),
						'i18n'    		=> $i18n
					)				
				);
				
				return;
			}
		}

		if ( 'off' === WPGlobus::Config()->toggle ) {
			return;
		}

		if ( self::disabled_entity() ) {
			return;
		}

		/** @global string $pagenow */
		global $pagenow;

		$enabled_pages = array(
			'post.php',
			'post-new.php',
			'edit-tags.php',
			'term.php'
		);

		if ( WPGlobus_WP::is_pagenow( $enabled_pages ) ) {

			WPGlobus::O()->vendors_scripts['WPSEO'] = true;

			if ( defined( 'WPSEO_PREMIUM_PLUGIN_FILE' ) ) {
				/**
				 * @see wordpress-seo-premium\wp-seo-premium.php
				 */
				WPGlobus::O()->vendors_scripts['WPSEO_PREMIUM'] = true;
			}

			$yoastseo_plus_readability_access   = '';
			$yoastseo_plus_readability_inactive = '';
			
			$yoastseo_plus_page_analysis_access   = '';
			$yoastseo_plus_page_analysis_inactive = '';
			
			$yoastseo_plus_meta_keywords_access   = '';
			$yoastseo_plus_meta_keywords_inactive = '';
			
			if ( WPGlobus::Config()->builder->is_builder_page() ) {

				$_url = '#';
				if ( class_exists('WPGlobusPlus') ) {
					/**
					 * @see wpglobus-plus\includes\wpglobus-plus-main.php
					 */
					$_url = add_query_arg(
						array(
							'page' => 'wpglobus-plus-options'
						),
						admin_url('admin.php')
					);
				}

				$yoastseo_plus_readability_access = sprintf(
					__( 'Please see %1s to get access to Analysis results in %2s with YoastSEO.', '' ),
					'<a href="https://wpglobus.com/product/wpglobus-plus/#yoastseo" target="_blank">WPGlobus Plus</a>',
					WPGlobus::Config()->en_language_name[ WPGlobus::Config()->builder->get_language() ]
				);
				$yoastseo_plus_readability_inactive = sprintf(
					__( 'Please activate %1sYoast SEO Plus%2s module to get access to Analysis results in %3s with YoastSEO.', '' ),
					'<a href="'.$_url.'">',
					'</a>',
					WPGlobus::Config()->en_language_name[ WPGlobus::Config()->builder->get_language() ]
				);
				
				$yoastseo_plus_page_analysis_access = sprintf(
					__( 'Please see %1s to get access to Analysis results in %2s with YoastSEO.', '' ),
					'<a href="https://wpglobus.com/product/wpglobus-plus/#yoastseo" target="_blank">WPGlobus Plus</a>',
					WPGlobus::Config()->en_language_name[ WPGlobus::Config()->builder->get_language() ]
				);
				$yoastseo_plus_page_analysis_inactive = sprintf(
					__( 'Please activate %1sYoast SEO Plus%2s module to get access to Analysis results in %3s with YoastSEO.', '' ),
					'<a href="'.$_url.'">',
					'</a>',
					WPGlobus::Config()->en_language_name[ WPGlobus::Config()->builder->get_language() ]
				);

				$yoastseo_plus_meta_keywords_access = sprintf(
					__( 'Please see %1s to get access to Focus keyphrase in %2s with YoastSEO.', '' ),
					'<a href="https://wpglobus.com/product/wpglobus-plus/#yoastseo" target="_blank">WPGlobus Plus</a>',
					WPGlobus::Config()->en_language_name[ WPGlobus::Config()->builder->get_language() ]
				);
				$yoastseo_plus_meta_keywords_inactive = sprintf(
					__( 'Please activate %1sYoast SEO Plus%2s module to get access to Focus keyphrase in %1s with YoastSEO.', '' ),
					'<a href="'.$_url.'">',
					'</a>',
					WPGlobus::Config()->en_language_name[ WPGlobus::Config()->builder->get_language() ]
				);				
			}
			
			$i18n = array(
				'yoastseo_plus_readability_access' 	 	=> $yoastseo_plus_readability_access,
				'yoastseo_plus_readability_inactive' 	=> $yoastseo_plus_readability_inactive,
				'yoastseo_plus_page_analysis_access' 	=> $yoastseo_plus_page_analysis_access,
				'yoastseo_plus_page_analysis_inactive'  => $yoastseo_plus_page_analysis_inactive,
				'yoastseo_plus_meta_keywords_access' 	=> $yoastseo_plus_meta_keywords_access,
				'yoastseo_plus_meta_keywords_inactive' 	=> $yoastseo_plus_meta_keywords_inactive
			);

			$src_version 		 = false;
			$src_version_premium = false;

			if ( ! WPGlobus::O()->vendors_scripts['WPSEO_PREMIUM'] ) {
				
				/** @noinspection PhpInternalEntityUsedInspection */
				$src_version = version_compare( WPSEO_VERSION, '4.0', '>=' ) ? '40' : $src_version;
				/** @noinspection PhpInternalEntityUsedInspection */
				$src_version = version_compare( WPSEO_VERSION, '4.1', '>=' ) ? '41' : $src_version;
				/** @noinspection PhpInternalEntityUsedInspection */
				$src_version = version_compare( WPSEO_VERSION, '4.4', '>=' ) ? '44' : $src_version;
				if ( 
					/** @noinspection PhpInternalEntityUsedInspection */
					version_compare( WPSEO_VERSION, '4.8', '>=' ) 
				) {
					$src_version = self::$version;
				}
				
			} else {
				/**
				 * Start with Yoast SEO Premium.
				 */

				/**
				 * Version of file yoast seo must be latest.
				 */
				/** @noinspection PhpInternalEntityUsedInspection */
				$src_version 			= version_compare( WPSEO_VERSION, '3.9', '>=' ) ? self::$version : $src_version;
				/** @noinspection PhpInternalEntityUsedInspection */
				$src_version_premium	= version_compare( WPSEO_VERSION, '3.9', '>=' ) ? '39' : $src_version_premium;
				/**
				 * @since WPGlobus 2.2.17
				 */ 
				$src_version_premium	= version_compare( WPSEO_VERSION, '12.0', '>=' ) ? $src_version : $src_version_premium;
				
			}
			
			if ( $src_version ) :

				$handle = self::$handle_script;

				$src = WPGlobus::$PLUGIN_DIR_URL . 'includes/js/' .
					   $handle . '-' . $src_version .
					   WPGlobus::SCRIPT_SUFFIX() . '.js';

				wp_register_script(
					$handle,
					$src,
					array( 'jquery', 'underscore' ),
					WPGLOBUS_VERSION,
					true
				);
				
				wp_enqueue_script($handle);

				wp_localize_script(
					$handle,
					'WPGlobusYoastSeo',
					array(
						'version' 		=> WPGLOBUS_VERSION,
						'wpseo_version' => WPSEO_VERSION,
						'src_version'   => $src_version,
						'builder_id'    => WPGlobus::Config()->builder->get('id'),
						'builder_page'  => WPGlobus::Config()->builder->is_builder_page() ? 'true' : 'false',
						'language'   	=> WPGlobus::Config()->builder->get_language(),
						'is_default_language' => WPGlobus::Config()->builder->is_default_language() ? true : false,
						'src_version_premium' => $src_version_premium,
						'plus_module'   	  => self::$plus_module,
					)
				);

				wp_localize_script(
					$handle,
					'WPGlobusVendor',
					array(
						'version' => WPGLOBUS_VERSION,
						'vendor'  => WPGlobus::O()->vendors_scripts,
						'pagenow' => $pagenow,
						'i18n'    => $i18n
					)
				);

			endif;

		}

	}

	/**
	 * @obsolete
	 *
	 * Add language tabs to wpseo metabox ( .wpseo-metabox-tabs-div )
	 */
	public static function action__wpseo_tab_content() {
		// @see wpglobus\includes\vendor\yoast-seo\class-wpglobus-yoastseo120.php
	}

	/**
	 * Check disabled entity.
	 *
	 * @since 1.7.3
	 * @return boolean
	 */
	public static function disabled_entity() {

		if ( WPGlobus_WP::is_pagenow( array( 'edit-tags.php', 'term.php' ) ) ) :
			/**
			 * Don't check page when editing taxonomy.
			 */
			return false;
		endif;

		/** @global WP_Post $post */
		global $post;

		$result = false;
		if ( WPGlobus_WP::is_pagenow( array( 'post.php', 'post-new.php' ) ) ) :
			if ( empty( $post ) ) {
				$result = true;
			} else if ( WPGlobus::O()->disabled_entity( $post->post_type ) ) {
				$result = true;
			}
		endif;
		return $result;
	}

	/**
	 * Filter allows changing graph breadcrumb output.
	 *
	 * @see wordpress-seo\src\generators\schema-generator.php
	 * @see "application/ld+json" in html code on front.
	 *
	 * @since 2.4.7
	 *
	 * @scope front
	 * @param array $graph_piece		 Array of graph piece.
	 * @param Meta_Tags_Context $context A value object with context variables.
	 * @return string
	 */
	public static function filter__wpseo_schema_breadcrumb( $graph_piece, $context ) {

		if ( empty( $graph_piece['itemListElement'] ) ) {
			return $graph_piece;		
		}

		$itemListElement = $graph_piece['itemListElement'];
		
		foreach( $itemListElement as $_key=>$_item ) {
			if ( ! empty( $_item['item']['name'] ) && WPGlobus_Core::has_translations( $_item['item']['name'] ) ) {
				$graph_piece['itemListElement'][$_key]['item']['name'] = WPGlobus_Core::extract_text( $graph_piece['itemListElement'][$_key]['item']['name'], WPGlobus::Config()->language );
			}
		}
		
		return $graph_piece;		
	}
} // class

# --- EOF
