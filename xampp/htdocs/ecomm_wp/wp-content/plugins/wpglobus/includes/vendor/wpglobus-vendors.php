<?php
/**
 * @package WPGlobus\Vendor
 * 
 * We start this file to support the plugins/add-ons in builder mode.
 * @since 1.9.17
 */

/**
 * All In One SEO Pack.
 */
if ( defined( 'AIOSEOP_VERSION' ) ) {
	require_once( dirname( __FILE__ ) . '/aioseopack/class-wpglobus-aioseopack.php' );
	WPGlobus_All_in_One_SEO_Pack::get_instance();	
}

/**
 * Pods.
 * @since 2.3.0
 */
if ( defined( 'PODS_VERSION' ) ) {
	require_once( dirname( __FILE__ ) . '/pods/class-wpglobus-vendor-pods.php' );
	WPGlobus_Vendor_Pods::get_instance();
}

/**
 * Rank Math SEO.
 * @since 2.4.3
 */
if ( defined( 'RANK_MATH_VERSION' ) ) {
	require_once( dirname( __FILE__ ) . '/rank-math-seo/class-wpglobus-vendor-rank_math_seo.php' );
	WPGlobus_Vendor_RankMathSEO::get_instance();
}

/**
 * ACF.
 * https://wordpress.org/plugins/advanced-custom-fields/
 * @todo W.I.P
 */
/* 
if ( $this->is_script_active('ACF') || $this->is_script_active('ACFPRO') ) {
	require_once( dirname( __FILE__ ) . '/acf/class-wpglobus-acf.php' );
	WPGlobus_Acf_1::get_instance();	
}
// */

# --- EOF