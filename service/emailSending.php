<?php
        /*include '../wp-includes/cache.php';
        include '../wp-includes/option.php';
        
        include '../wp-includes/plugin.php';*/
        
        require('../wp-blog-header.php' );

        /*include '../wp-content/plugins/wp-sendgrid/includes/wp-mail.php';
        include '../wp-content/plugins/wp-sendgrid/includes/sendgrid-settings.php';*/
        
        
        //if (isset($_POST['sendName'])) {
            $arr=$_REQUEST;
            $mailContent = 'Name:'$arr['sendName'].'  From:'.$arr['sendMail'].'  Content:'.$arr['sendMessage']; 
            $resualt = wp_mail("zhang360896270@sina.com", "zyxhomeTalking", $mailContent);
            if (resualt == true){
                echo '消息发送成功，我将尽快回复您';
            }
            else {
                echo '消息发送失败，请拨打(+86)18701321565获取帮助';
            }
        //}
?>
  