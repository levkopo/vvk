module vvk

import json
import net.http
import net.urllib

fn main() {} 

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