#!/bin/bash

api="https://secwhapi.net/ru/vpn/api"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0"

function login_by_code() {
	# 1 - code: (string): <code>
	code=$1
	get_account_info
}

function register() {
	# 1 - email: (string): <email>
	curl --request POST \
		--url "$api/register/proxy?email=$1" \
		--user-agent "$user_agent"
}

function get_account_info() {
	curl --request POST \
		--url "$api/info?code=$code" \
		--user-agent "$user_agent"
}

function get_proxies() {
	curl --request POST \
		--url "$api/proxies?code=$code" \
		--user-agent "$user_agent"
}

function get_proxy_countries() {
	curl --request POST \
		--url "$api/countries/proxy" \
		--user-agent "$user_agent"
}
