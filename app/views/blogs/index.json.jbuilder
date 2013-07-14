json.array!(@blogs) do |blog|
  json.extract! blog, :post, :content, :yourname
  json.url blog_url(blog, format: :json)
end
