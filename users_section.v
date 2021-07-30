module vvk

pub fn (this VK) me(params map[string]string) ?VKResponse<[]VKUser> {
	return this.users_get(0, params)
}

pub fn (this VK) users_get(id i64, params map[string]string) ?VKResponse<[]VKUser> {
	mut all_params := params.clone()
	all_params["user_ids"] = id.str()
	return this.request<[]VKUser>("users.get", all_params)
}