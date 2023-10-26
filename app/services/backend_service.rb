class BackendService
  def conn
    Faraday.new(url: 'http://localhost:3000/')
  end

  def all_merchants
    request = conn.get('api/v1/merchants')
    JSON.parse(request.body, symbolize_names: true)[:data]
  end

  def merchant_items(merchant_id)
    request = conn.get("api/v1/merchants/#{merchant_id.to_i}/items")
    JSON.parse(request.body, symbolize_names: true)[:data]
  end
end