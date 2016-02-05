json.array!(@blocks) do |block|
  json.extract! block, :id, :name, :short_name, :code, :attention_level, :active
  json.url block_url(block, format: :json)
end
