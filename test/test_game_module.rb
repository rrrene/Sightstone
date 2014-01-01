require 'test/unit'
require 'sightstone'



class GameModuleTest < BaseTest
  
  @@req_id = 30447079
  
  def test_recent_games
    matchHistory = @@sightstone.game.recent(@@req_id)
    assert_instance_of(MatchHistory, matchHistory)
    assert_instance_of(Fixnum, matchHistory.summonerId)
    assert_instance_of(Array, matchHistory.games)
    matchHistory.games.each do |game|
      _check_game game
    end
  end
  
  def _check_game(game)
    assert_instance_of(HistoryGame, game)
    assert_instance_of(Fixnum, game.createDate)
    assert_instance_of(Fixnum, game.championId)
    assert_instance_of(Fixnum, game.gameId)
    assert_instance_of(String, game.gameType)
    assert(game.invalid || !game.invalid)
    assert_instance_of(Fixnum, game.level)
    assert_instance_of(Fixnum, game.mapId)
    assert_instance_of(Fixnum, game.spell1)
    assert_instance_of(Fixnum, game.spell2)
    assert_instance_of(String, game.subType)
    assert_instance_of(Fixnum, game.teamId)
    assert_instance_of(Array, game.fellowPlayers)
    assert_instance_of(Array, game.statistics)
    _check_statistics(game.statistics)
    _check_fellows(game.fellowPlayers)
  end
  
  def _check_statistics(stats)
   stats.each do |stat|
     assert_instance_of(Stat, stat)
     assert_instance_of(Fixnum, stat.value)
     assert_instance_of(Fixnum, stat.id)
     assert_instance_of(String, stat.name)
   end
  end
  
  def _check_fellows(fellows)
    fellows.each do |fellow|
      assert_instance_of(Player, fellow)
      assert_instance_of(Fixnum, fellow.championId)
      assert_instance_of(Fixnum, fellow.summonerId)
      assert_instance_of(Fixnum, fellow.teamId)
    end
  end
  
  
end