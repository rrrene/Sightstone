module Sightstone
class Spell

	attr_accessor :cooldown, :cooldownBurn, :cost, :costBurn, :costType, :description, :effect, :effectBurn, :id, :image, :key, :maxrank, :modes, :name, :range, :rangeBurn, :resource, :summonerLevel, :tooltip

	# TODO include spellvars

	def initialize(data)
		@cooldown = data['cooldown']
		@cooldownBurn = data['cooldownBurn']
		@cost = data['cost']
		@costBurn = data['costBurn']
		@costType = data['costType']
		@description = data['description']
		@effect = data['effect']
		@effectBurn = data['effectBurn']
		@id = data['id']
		@image = Image.new(data['id'])
		@key = data['key']
		@maxrank = data['maxrank']
		@modes = data['modes']
		@name = data['name']
		@range = data['range']
		@rangeBurn = data['rangeBurn']
		@resource = data['resource']
		@summonerLevel = data['summonerLevel']
		@tooltip = data['tooltip']
		@vars = SpellVars.new(data['vars'])
	end
end

class Image
	attr_accessor :full, :group, :h, :sprite, :w, :x, :y

	def initialze(data)
		@full = data['full']
		@group = data['group']
		@h = data['h']
		@sprite = data['sprite']
		@w = data['w']
		@x = data['x']
		@y = data['y']
	end
end
end
