json.array!(@racers) do |racer|
  json.extract! racer, :id, :name, :height
  json.url racer_url(racer, format: :json)
end
