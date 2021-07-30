module vvk

import json
import net.http
import net.urllib

pub fn (this VK) me(params map[string]string) ?VKResponse<[]User> {
	return this.users_get(0, params)
}

pub fn (this VK) users_get(id i64, params map[string]string) ?VKResponse<[]User> {
	mut all_params := params.clone()
	all_params["user_ids"] = id.str()
	return this.request<[]User>("users.get", all_params)
}

pub fn (this VK) request<T>(method string, params map[string]string) ?VKResponse<T> {
	mut values := urllib.new_values()
	values.add('access_token', this.token)
	values.add('v', this.v)
	for key, value in params {
		values.add(key, value)
	}
		
	data := http.get(this.api_url + method + '?' + values.encode())?
	return json.decode(VKResponse<T>, data.text)
} 