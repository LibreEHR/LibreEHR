<?php
/**
 * This file contains all functions used within the setup procedure ranging from simple fuctions to functrions that accept a variety of
 * psramenters.
 *
 * LICENSE: This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0
 * See the Mozilla Public License for more details.
 * If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
 *
 * @package Librehealth EHR
 * @author Mua Laurent <muarachmann@gmail.com>
 * @link http://librehealth.io
 *
 * Please help the overall project by sending changes you make to the author and to the LibreEHR community.
 *
 */
?>
<?php

    // function to draw the setup step navigation
    function drawSetupStep($step = 1, $draw = true){

            $steps = array(1,2,3,4,5,6,7);

            $output  = "<div class='step-div'>\n";
                foreach($steps as $key){
                if($step > $key){
                $css_class = ' class="step completed-step"';
                $output .= "\t\t<div".$css_class."></div>\n";
            }
            else if($step == $key){
            $css_class = ' class="step active-step"';
            $step_num  = "<div class=\"pull-right step-count\"><span class=\"librehealth-color\">$key</span>&nbsp;/&nbsp;7</div>\n";
            $output .= "\t\t<div".$css_class."></div>\n";
            }
            else{
            $css_class = " class='step '";
            $output .= "\t\t<div".$css_class."></div>\n";
            }

            }
            $output .= $step_num;
            $output .= "\t</div><br>\n";
            if($draw) echo $output;
            else return $output;
    }

    // function to write sqlconfig file (should be written every time there is an install or initial state(start back process))
    // takes one parameter flag for the $config variable 1 => install 0 => uninstall



   function rewrite_configuration_file() {
       $LIBRE_SITES_BASE = dirname(__FILE__) .'/../../../sites';
       $LIBRE_SITE_DIR = $LIBRE_SITES_BASE. '/default';
       //configuration file
       $conffile  =  $LIBRE_SITE_DIR .'/sqlconf.php';
       $string_to_replace='$config = 0;';
       $replace_with='$config = 1;';
       replace_string_in_file($conffile, $string_to_replace, $replace_with);

          }

        function replace_string_in_file($filename, $string_to_replace, $replace_with){
            $content=file_get_contents($filename);
            $content_chunks=explode($string_to_replace, $content);
            $content=implode($replace_with, $content_chunks);
            file_put_contents($filename, $content);
        }


            function find_SQL_Version() {
                $output = shell_exec('mysql -V');
                preg_match('@[0-9]+\.[0-9]+\.[0-9]+@', $output, $version);
                return $version[0];
            }


            function write_bashScript($sys){
                    @touch('/var/www/html/LibreEHR/test.sh');
            }

?>
