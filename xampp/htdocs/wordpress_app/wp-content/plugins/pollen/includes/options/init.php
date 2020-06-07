<?php

    // Load the embedded Redux Framework
    if ( file_exists( dirname( __FILE__ ).'/core/framework.php' ) ) {
        require_once dirname(__FILE__).'/core/framework.php';
    }

    // Load the theme/plugin options
    if ( file_exists( dirname( __FILE__ ) . '/config.php' ) ) {
        require_once dirname( __FILE__ ) . '/config.php';
    }