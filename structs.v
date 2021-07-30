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

struct User {
	id i64
	first_name string
	last_name string
}