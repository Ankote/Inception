<?php
define( 'DB_NAME', getenv('SQL_DATABASE'));
define( 'DB_USER', getenv('SQL_USER'));
define( 'DB_PASSWORD', getenv('SQL_PASSWORD'));

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8mb4' );

//Filesystem:	 Writeable (in redis pungin)
define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', '6379');

// define('FTP_USER', getenv('FTP_USER'));
// define('FTP_PASS', getenv('FTP_PASS'));
// define('FTP_HOST', getenv('DOMINE_NAME'));

define( 'AUTH_KEY',         'w<6 ZgXX&Mia8_OFdDJwi-!?=dwbf+]KzgK6SXbt2?2R5Mfw,.sYHZqW1gSOR+)T' );
define( 'SECURE_AUTH_KEY',  'CQ1[IXN$V-D:Xf/~xGK<d1S[XVH*Urc90,Utnc@mm5FWDc^z@ XFAfT(N]3^,k>}' );
define( 'LOGGED_IN_KEY',    '/T_bqjp|++i.Tc3Y.<.5zYo,_)R815PZS3:kxY,ABQd1Xjm%TR-l7ekB6Z*Y5E(f' );
define( 'NONCE_KEY',        'H{lP4*3fbnoz$</9[rzCpjDWeC*<3DBE)L*snyLci^Jmk<?dXu8<jGzb|&>?q,ir' );
define( 'AUTH_SALT',        'j=F{elQ^>%-~dfA}oS($x^b7ZQ}f]XSh}?zz3E94Serjo,!PEdZ}%||-*D]o-W}_' );
define( 'SECURE_AUTH_SALT', '{dWej^)7GRW;[6-;.Y=^YG|m$4{OS8|/9R`Ox>1)[:HlDqHeF]Y1Nvv8!]F%,]b[' );
define( 'LOGGED_IN_SALT',   '!RX7EU0=UE+G,Lqk}`wqUMrlvCx<0pPdM$H~vXwCFa;C*.;:L8r+GG:4Vt*&oK40' );
define( 'NONCE_SALT',       't]My!ss_|rA fPg_|hbC=;IievL `:Z&|y@B%v{n9ZwNnr;<RB,6L9M%o_zH37fj' );

$table_prefix = 'wp_';
define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
