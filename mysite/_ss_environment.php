<?php 


if(isset($_SERVER['REMOTE_ADDR']) && ($_SERVER['REMOTE_ADDR'] == '127.0.0.1' ||
($_SERVER['REMOTE_ADDR'] == '<MyIP>' && strpos($_SERVER['HTTP_USER_AGENT'], '+')
!== false))) define('SS_ENVIRONMENT_TYPE', 'dev');
else define('SS_ENVIRONMENT_TYPE', 'live');


?>