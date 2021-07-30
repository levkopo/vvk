module vvk

struct VK {
	api_url string = "https://api.vk.com/method/"
	token string
	v string = "5.103"
}

struct VKResponse<T> {
	pub:
	response T
	error VKError
}

struct VKError {
	pub:
	code i64
	message string
}

struct VKUser {
	pub:
	id i64
	first_name string
	last_name string
	deactivated string
	is_closed bool
	can_access_closed bool
	about string
	activities string
	bdate string
	blacklisted i64
	blacklisted_by_me i64
	books string
	can_post i64
	can_see_all_posts i64
	can_see_audio i64
	can_send_friend_request i64
	can_write_private_message i64
	career VKUserCareer
	city VKCity
	common_count i64
	
}

struct VKUserCareer {
	group_id i64
	company string
	country_id i64
	city_id i64
	city_name string
	from i64
	until i64
	position string
}

struct VKCity {
	id i64
	title string
}

struct VKGroup {
	pub:
	id i64
	first_name string
	last_name string
}