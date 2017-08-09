require("minitest/autorun")
require("minitest/rg")
require_relative("../tiles")

class TilesTest < MiniTest::Test


  def setup
    @tiles = Tiles.new()
