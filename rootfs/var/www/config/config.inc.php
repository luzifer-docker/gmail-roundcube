<?php

$config = array();

$config['db_dsnw'] = 'sqlite:////var/www/db/sqlite.db';

$config['imap_conn_options'] =
$config['smtp_conn_options'] =
$config['managesieve_conn_options'] = [
    'ssl' => [
        'verify_peer' => false,
        'verify_peer_name' => false,
        'allow_self_signed' => true,
    ],
];

$config['default_host'] = 'ssl://imap.gmail.com';
$config['default_port'] = 993;

$config['smtp_server'] = 'ssl://smtp.gmail.com';
$config['smtp_port'] = 465;
$config['smtp_user'] = '%u';
$config['smtp_pass'] = '%p';

$config['enigma_pgp_homedir'] = '/var/www/db/enigma';

$config['plugins'] = array('carddav', 'enigma');
if(getenv('ROUNDCUBE_USER_FILE')) $config['plugins'][] = 'password';
