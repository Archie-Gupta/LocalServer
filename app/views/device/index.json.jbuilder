json.array!(@devices) do |device|
  json.extract! device, :id, :macaddress, :type, :hotspot_to_connect
  json.url device_url(device, format: :json)
end
