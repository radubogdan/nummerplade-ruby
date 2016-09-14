require "nummerplade/version"
require "open-uri"
require "json"

module Nummerplade
  class ApiClient
    attr_accessor :api_token

    def initialize api_token
      @api_token = api_token
      @url = 'http://api.nrpla.de/'
    end

    def vehicle_by_registration registration
      request(registration)
    end

    def vehicle_by_vin vin
      request("vin/" + vin)
    end

    def dmr vehicle_id
      request("dmr/" + vehicle_id)
    end

    def debt vehicle_id
      request("debt/" + vehicle_id)
    end

    def inspections vehicle_id
      request("inspections/" + vehicle_id)
    end

    private

    def request endpoint
      res = open(@url + endpoint + "?api_token=#{@api_token}&advanced=true")
      JSON.parse(res.read)
    end
  end
end
