module conf_env

import os

pub struct EnvConfig {
pub:
	db_sqlite_path string
	db_database    string
	db_host        string
	db_port        string
	db_user        string
	db_pass        string
	url_env        string
	new_relic_key  string
	current_port   string
}

pub fn load_env() EnvConfig {
	return EnvConfig{
		db_sqlite_path: os.getenv('DB_SQLITE_PATH').trim_space()
		db_database:    os.getenv('DB_DATABASE').trim_space()
		db_host:        os.getenv('DB_HOST').trim_space()
		db_port:        os.getenv('DB_PORT').trim_space()
		db_user:        os.getenv('DB_USER').trim_space()
		db_pass:        os.getenv('DB_PASS').trim_space()
		new_relic_key:  os.getenv('NEW_RELIC_KEY').trim_space()
		url_env:        os.getenv('URL_ENV').trim_space()
	}
}
