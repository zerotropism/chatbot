# For WordPress
* You need to install plugin: "Simple Custom CSS and JS" to upload custom CSS and JS needed for our interface<br/><br/>
* You need to install theme: Astra<br/><br/>
* You need to go into Theme edition page and update "header.php" like that:
```php
            <?php
            /**
            * The header for Astra Theme.
            *
            * This is the template that displays all of the <head> section and everything up until <div id="content">
            *
            * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
            *
            * @package Astra
            * @since 1.0.0
            */

            if ( ! defined( 'ABSPATH' ) ) {
                exit; // Exit if accessed directly.
            }

            ?><!DOCTYPE html>
            <?php astra_html_before(); ?>
            <html <?php language_attributes(); ?>>
            <head>
            <?php astra_head_top(); ?>
            <meta charset="<?php bloginfo( 'charset' ); ?>">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="profile" href="https://gmpg.org/xfn/11">

            <!--PRAS CHATBOT START-->
            <!--Import Google Icon Font-->
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <!--Import materialize.css-->
            <link rel= "stylesheet" type= "text/css" href= "http://127.0.0.1/wordpress/wp-content/uploads/custom-css-js/chatbot_style.css">
            <!--Main css-->
            <link rel= "stylesheet" type= "text/css" href= "http://127.0.0.1/wordpress/wp-content/uploads/custom-css-js/materialize.min.css">
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <!--Let browser know website is optimized for mobile-->
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <!--PRAS CHATBOT END-->

            <?php wp_head(); ?>
            <?php astra_head_bottom(); ?>
            </head>

            <body <?php astra_schema_body(); ?> <?php body_class(); ?>>

            <?php astra_body_top(); ?>
            <?php wp_body_open(); ?>
            <div 
                <?php
                echo astra_attr(
                    'site',
                    array(
                        'id'    => 'page',
                        'class' => 'hfeed site',
                    )
                );
                ?>
            >
                <a class="skip-link screen-reader-text" href="#content"><?php echo esc_html( astra_default_strings( 'string-header-skip-link', false ) ); ?></a>

                <?php astra_header_before(); ?>

                <?php astra_header(); ?>

                <?php astra_header_after(); ?>

                <?php astra_content_before(); ?>

                <div id="content" class="site-content">
                    
                    <div class="ast-container">

                    <?php astra_content_top(); ?>

```
<br/><br/>

* You need to go into Theme edition page and update "footer.php" like that:
```php
            <?php
            /**
            * The template for displaying the footer.
            *
            * Contains the closing of the #content div and all content after.
            *
            * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
            *
            * @package Astra
            * @since 1.0.0
            */

            if ( ! defined( 'ABSPATH' ) ) {
                exit; // Exit if accessed directly.
            }

            ?>
                        <?php astra_content_bottom(); ?>


                        <!--PRAS CHATBOT START-->
                        <div class="widget">
                        <div class="chat_header">
                        <!--Add the name of the bot here -->
                        <span style="color:white;margin-left: 5px;">ArtBot</span>
                        <span style="color:white;margin-right: 5px;float:right;margin-top: 5px;" id="close">
                        <i class="material-icons">close</i>
                        </span>
                        </div>
                        <!--Chatbot contents goes here -->
                        <div class="chats" id="chats">
                        <img class="botAvatar" src="http://127.0.0.1/wordpress/wp-content/uploads/2020/11/botAvatar.png">Bonjour, je suis ArtBot, comment puis-je vous aider?</p><div class="clearfix"></div>
                        <div class="clearfix"></div>
                        </div>
                        <!--user typing indicator -->
                        <div class="keypad" >
                        <input type="text" id="keypad" class="usrInput browser-default" placeholder="Type a message..." autocomplete="off">
                        </div>
                    </div>
                    <!--bot widget -->
                    <div class="profile_div" id="profile_div">
                        <img class="imgProfile" src="http://127.0.0.1/wordpress/wp-content/uploads/2020/11/botAvatar.png"/>
                    </div>
                    <!--PRAS CHATBOT END-->
                        
                        </div> <!-- ast-container -->

                    </div><!-- #content -->

                    <?php astra_content_after(); ?>

                    <?php astra_footer_before(); ?>

                    <?php astra_footer(); ?>

                    <?php astra_footer_after(); ?>

                </div><!-- #page -->

                <?php astra_body_bottom(); ?>

                <?php wp_footer(); ?>

                <!--PRAS CHATBOT START-->
                <!--JavaScript at end of body for optimized loading-->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script type="text/javascript" src="http://127.0.0.1/wordpress/wp-content/uploads/custom-css-js/chatbot_materialize.min.js"></script>
                <!--Main Script -->
                <script type="text/javascript" src="http://127.0.0.1/wordpress/wp-content/uploads/custom-css-js/chatbot_script.js"></script>
                <!--PRAS CHATBOT END-->

                </body>
            </html>

```