<?php
// HTTP
define('HTTP_SERVER', 'http://tofej.info/');
define('HTTP_IMAGE', 'http://tofej.info/image/');
define('HTTP_ADMIN', 'http://tofej.info/admin/');

// HTTPS
define('HTTPS_SERVER', 'http://tofej.info/');
define('HTTPS_IMAGE', 'http://tofej.info/image/');

// DIR
define('DIR_APPLICATION', '/home/casualde/www/tofej.info/catalog/');
define('DIR_SYSTEM', '/home/casualde/www/tofej.info/system/');
define('DIR_DATABASE', '/home/casualde/www/tofej.info/system/database/');
define('DIR_LANGUAGE', '/home/casualde/www/tofej.info/catalog/language/');
define('DIR_TEMPLATE', '/home/casualde/www/tofej.info/catalog/view/theme/');
define('DIR_CONFIG', '/home/casualde/www/tofej.info/system/config/');
define('DIR_IMAGE', '/home/casualde/www/tofej.info/image/');
define('DIR_CACHE', '/home/casualde/www/tofej.info/system/cache/');
define('DIR_DOWNLOAD', '/home/casualde/www/tofej.info/download/');
define('DIR_LOGS', '/home/casualde/www/tofej.info/system/logs/');
$_SERVER['HTTP_HOST'] = (isset($_SERVER['HTTP_HOST']) && !(empty($_SERVER['HTTP_HOST'])) )?$_SERVER['HTTP_HOST']:HTTPS_SERVER;
// DB
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'casualde.mysql.db.internal');
define('DB_USERNAME', 'casualde_tofej');
define('DB_PASSWORD', 'admin');
define('DB_DATABASE', 'casualde_trofej');
define('DB_PREFIX', 'ugd_');
?>
