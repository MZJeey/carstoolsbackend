<?php
return [
    'LOG_PATH' => __DIR__ . '/Log',
    'DB_USERNAME' => getenv('MYSQLUSER') ?: 'root',
    'DB_PASSWORD' => getenv('MYSQLPASSWORD') ?: 'admin',
    'DB_HOST' => getenv('MYSQLHOST') ?: 'localhost',
    'DB_PORT' => getenv('MYSQLPORT') ?: '3306',
    'DB_DBNAME' => getenv('MYSQLDATABASE') ?: 'carstoolscr',
    'SECRET_KEY' => 'e0d17975bc9bd57eee132eecb6da6f11048e8a88506cc3bffc7249078cf2a77a'
];
