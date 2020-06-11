<?php
/**
 * File: class-wpglobus-rank_math_seo-functions.php
 *
 * @since 2.4.3
 *
 * @package WPGlobus\Builders\RankMathSEO.
 * @author  Alex Gor(alexgff)
 */

if ( ! class_exists( 'WPGlobus_RankMathSEO_Functions' ) ) :	

	/**
	 * Class WPGlobus_RankMathSEO_Functions.
	 */
	class WPGlobus_RankMathSEO_Functions {

		/**
		 * Current taxonomy.
		 */
		protected static $taxonomy = false;
		
		/**
		 * WP_Term object.
		 */
		protected static $tag = false;

		/**
		 * Current language.
		 */
		protected static $current_language = false;
		
		/**
		 * Constructor.
		 */
		public static function controller() {

			if ( empty( $_POST['nonce_CMB2phprank_math_metabox'] ) || empty( $_POST['action'] ) ) {
				/**
				 * Not `Rank Math SEO`.
				 */
				return;
			}

			global $pagenow;

			if ( ! empty( $_POST[  WPGlobus::get_language_meta_key() ] ) ) {
				self::$current_language = sanitize_text_field( $_POST[  WPGlobus::get_language_meta_key() ] );
			}
			
			if ( 'edit-tags.php' === $pagenow && 'editedtag' === $_POST['action'] ) { // phpcs:ignore WordPress.CSRF.NonceVerification
				/**
				 * Update button was clicked.
				 */
				self::build_ml_description();
			}

			add_filter( 'wp_update_term_data', array( __CLASS__, 'filter__update_term_data' ), 5, 4 );
		}

		/**
		 * Build multilingual description.
		 * We don't have filter for description like filter for name @see 'wp_update_term_data' in wp-includes\taxonomy.php
		 */		
		protected static function build_ml_description() {

			if ( ! self::$current_language ) {
				return;
			}
			
			global $wpdb;

			$tag_ID   = (int) $_POST['tag_ID'];
			$taxonomy = $_POST['taxonomy']; // phpcs:ignore WordPress.CSRF.NonceVerification

			self::$tag = get_term( $tag_ID, $taxonomy );

			if ( is_wp_error( self::$tag ) ) {

				$terms = $wpdb->get_results( $wpdb->prepare( "SELECT t.*, tt.* FROM $wpdb->terms AS t INNER JOIN $wpdb->term_taxonomy AS tt ON t.term_id = tt.term_id WHERE t.term_id = %d", $tag_ID ) );
				if ( ! empty( $terms[0] ) && is_object( $terms[0] ) ) {
					self::$tag = $terms[0];
				}
			}

			if ( is_wp_error( self::$tag ) ) {
				/**
				 * @todo Investigate.
				 */
				return;
			}

			$new_desc = array();

			foreach ( WPGlobus::Config()->enabled_languages as $lang ) :

				if ( $lang === self::$current_language ) {

					$text = trim( $_POST['description'] ); // phpcs:ignore WordPress.CSRF.NonceVerification
					if ( ! empty( $text ) ) {
						$new_desc[ $lang ] = $text;
					}
				} else {

					$text = WPGlobus_Core::text_filter( self::$tag->description, $lang, WPGlobus::RETURN_EMPTY );
					if ( ! empty( $text ) ) {
						$new_desc[ $lang ] = $text;
					}
				}

			endforeach;

			$_POST['description'] = WPGlobus_Utils::build_multilingual_string( $new_desc );
		}
	
		/**
		 * Filters term data before it is updated in the database.
		 *
		 * @param array  $data     Term data to be updated.
		 * @param int    $term_id  Term ID.
		 * @param string $taxonomy Taxonomy slug.
		 * @param array  $args     Arguments passed to wp_update_term().
		 *
		 * @return array
		 */	
		public static function filter__update_term_data( $data, $term_id, $taxonomy, $args ) {

			if ( is_wp_error( self::$tag ) ) {
				/**
				 * @todo Investigate.
				 * may be to use $args.
				 */
				return $data;
			}

			if ( ! self::$current_language ) {
				return $data;
			}

			$new_term_name = array();
			foreach ( WPGlobus::Config()->enabled_languages as $language ) :

				if ( $language === self::$current_language ) {

					$text = trim( $data['name'] );
					if ( ! empty( $text ) ) {
						$new_term_name[ $language ] = $text;
					}
				} else {

					$text = WPGlobus_Core::text_filter( self::$tag->name, $language, WPGlobus::RETURN_EMPTY );
					if ( ! empty( $text ) ) {
						$new_term_name[ $language ] = $text;
					}
				}

			endforeach;

			$data['name'] = WPGlobus_Utils::build_multilingual_string( $new_term_name );

			return $data;	
		}		
			
	} // class WPGlobus_RankMathSEO_Functions.

endif;

# --- EOF