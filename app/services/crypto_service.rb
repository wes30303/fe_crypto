# frozen_string_literal: true


class CryptoService
  def self.get_crypto(name)
    response = conn.get('/api/v1/crypto') do |route|
      route.params['search'] = name
    end
    parse_json(response)
  end

  private

  def self.conn
    Faraday.new(url: 'https://stock-api-free.herokuapp.com')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
