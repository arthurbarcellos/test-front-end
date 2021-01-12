<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'test-front-end_db' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', 'root' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'g?l17Lj]a{$`M4staaTWkv*K5^Z5UM!Y.Ncb2|kLoc!L:Yrz)QwR&.in;}<1`Vp*' );
define( 'SECURE_AUTH_KEY',  'ZD+!L[:2azANie!#FS>:?&~+E9D4._RHBXX{5+^gTT-puALLohYsCp3i__?yho]q' );
define( 'LOGGED_IN_KEY',    '=>6{a%r_7aFD,wywwTs90HGYlOf[cL7e;v#A[89-<:F/#6I~)+,^VNbZZq*uNwl6' );
define( 'NONCE_KEY',        'ld]}*z~7[qX[vF+}6#cPw-38da@h327QD0Hr[>}e``;y]TlW#FT!!rXG6ydbb}d,' );
define( 'AUTH_SALT',        'M>^i?nav>+/C3c2%ibgSahuOf&cQ[?)O(;I5:t!PZ28ONQ9^?+E$B14on-@h_r(&' );
define( 'SECURE_AUTH_SALT', 'Cp^!/hboXzFPrIB5tOR1j$DUr*pb}^{46=o]0wTOk-AK,wH9R3VPPaLWhH=MFN5v' );
define( 'LOGGED_IN_SALT',   '$v;ftr-KPMOy>z+v,fZQUtr.K48fI]yyKX/Fc+c0+FXA$lI%K`:M(@||ea{.C+l ' );
define( 'NONCE_SALT',       '?6@2bs7PI>Hn~0(&}4Xzf/|SVoyv6gf)`NBTWqcL.8*V5KHa/MamTV;]{lwMp-h`' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
