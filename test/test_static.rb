require 'test/unit'
require 'sightstone'

class StaticModuleTest < BaseTest

	def test_league
    realm = @@sightstone.static.realm

    assert_instance_of Sightstone::Realm, realm
    assert_instance_of String, realm.cdn
    assert_instance_of String, realm.css
    assert_instance_of String, realm.dd
    assert_instance_of String, realm.l
    assert_instance_of String, realm.lg
	# store can be nil
    assert_instance_of String, realm.v
  end

end
