json.array!(@post) do |post|
  json.extract! post, :id, :name, :email
  json.url post_url(post, format: :json)
end
