# vVk
Library for using [vk.com](https://vk.com) api in V Language

# Example
```v
import levkopo.vvk

fn main() {
  vk := vk.VK {
    token: '<your token>'
  }

  // Get my profile 
  println(vk.me(map{}))

  // Get user by id
  println(vk.users_get(1, map{}))

  // Request to other method
  println(vk.request<Group>('groups.getById', map { "group_id": 1 }))
}

struct Group {
  id i64
  name string
}
```
