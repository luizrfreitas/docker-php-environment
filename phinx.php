<?php

require_once __DIR__ . "/config.php";

return
[
    'paths' => [
        'migrations' => '%%PHINX_CONFIG_DIR%%/db/migrations',
        'seeds' => '%%PHINX_CONFIG_DIR%%/db/seeds'
    ],
    'environments' => [
        'default_migration_table' => 'phinxlog',
        'default_environment' => $_ENV['ENVIRONMENT'],
        'production' => [
            'adapter' => 'mysql',
            'host' => '',
            'name' => '',
            'user' => '',
            'pass' => '',
            'port' => '',
            'charset' => 'utf8',
        ],
        'development' => [
            'adapter' => 'mysql',
            'host' => $_ENV['DB_HOST'],
            'name' => $_ENV['DB_DATABASE'],
            'user' => $_ENV['DB_USER'],
            'pass' => $_ENV['DB_PASSWORD'],
            'port' => $_ENV['DB_PORT'],
            'charset' => 'utf8',
        ],
        // 'testing' => [
        //     'adapter' => 'mysql',
        //     'host' => $_ENV['DB_HOST_TEST'],
        //     'name' => $_ENV['DB_DATABASE_TEST'],
        //     'user' => $_ENV['DB_USER_TEST'],
        //     'pass' => $_ENV['DB_PASSWORD_TEST'],
        //     'port' => $_ENV['DB_PORT_TEST'],
        //     'charset' => 'utf8',
        // ]
    ],
    'version_order' => 'creation'
];
