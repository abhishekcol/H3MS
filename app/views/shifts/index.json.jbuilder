json.array!(@shifts) do |shift|
  json.extract! shift, :id, :shiftname, :shortcode, :colorcode, :shiftstarttime, :shiftendtime, :mealstarttime, :mealendtime
  json.url shift_url(shift, format: :json)
end
