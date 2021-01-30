require 'json'
require 'open-uri'
require 'net/http'


# Write your code here
class GetRequester
  def initialize(url)
    @uri = URI.parse(url)
  end

  def get_response_body
    response = Net::HTTP.get_response(@uri)
    response.body
  end

  def parse_json
    JSON.parse(self.get_response_body)
  end
end
