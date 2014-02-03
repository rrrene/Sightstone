
module Sightstone
# Class to represent a realm
# @attr [String] cdn base cdn url
# @attr [String] css Latest changed version of Dragon Magic's css file.
# @attr [String] dd Latest changed version of Dragon Magic.
# @attr [String] l Default language for this realm.
# @attr [String] lg Legacy script mode for IE6 or older.
# @attr [Hash<String, String>] n Latest changed version for each data type listed.
# @attr [Integer] profileiconmax Special behavior number identifying the largest profileicon id that can be used under 500. Any profileicon that is requested between this number and 500 should be mapped to 0.
# @attr [String] v Current version of this file for this realm.
class Realm


	attr_accessor :cdn, :css, :dd, :l, :lg, :n, :profileiconmax, :store, :v

	def initialize(data)
		@cdn = data['cdn']
		@css = data['css']
		@dd = data['dd']
		@l = data['l']
		@lg = data['lg']
		@n = data['n']
		@profileiconmax = data['profileiconmax']
		@store = data['store']
		@v = data['v']
	end
end
end