require 'sightstone/modules/sightstone_base_module'
require 'sightstone/static/realm'

module Sightstone
# module to provide calls to the league api
class StaticModule < SightstoneBaseModule
  def initialize(sightstone)
    @sightstone = sightstone
  end
  
  # Current realm informations
  # @param optional [Hash] optional arguments: :region => replaces default region
  # @return [Realm] realm information
  def realm(optional={})
    region = optional[:region] || @sightstone.region

    uri = "https://prod.api.pvp.net/api/lol/static-data/#{region}/v1/realm"
    response = _get_api_response(uri)
    _parse_response(response) { |resp|
      data = JSON.parse(resp)
      return Realm.new(data)
    }
  end
  
end
end