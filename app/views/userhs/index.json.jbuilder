json.array!(@userhs) do |userh|
  json.extract! userh, :id, :email, :fname, :lname, :url1
  json.url userh_url(userh, format: :json)
end
