class AddressFetcher < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    zipcode = @params.strip.gsub(/-/, "")
    response = HTTParty.get("https://viacep.com.br/ws/#{zipcode}/json/").response
    return { error: "404" } if response.code.match?(/^4/)

    JSON.parse(response.body).symbolize_keys
  end
end
