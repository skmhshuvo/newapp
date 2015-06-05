json.array!(@shuvos) do |shuvo|
  json.extract! shuvo, :id, :title, :description, :no_followers
  json.url shuvo_url(shuvo, format: :json)
end
