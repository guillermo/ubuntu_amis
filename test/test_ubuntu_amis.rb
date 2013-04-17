require 'minitest/autorun'
require 'ubuntu_amis'


class UbuntuAmisTest < MiniTest::Unit::TestCase

  def test_array
    assert UbuntuAmis.table.is_a?(Array), "UbuntuAmis.table should return an array"
    assert UbuntuAmis.table.size > 0, "UbuntuAmis.table should not be empty"
    assert UbuntuAmis.table.transpose.first.uniq.include?("ap-northeast-1"), "UbuntuAmis.table should have information of the machines"
  end
end
