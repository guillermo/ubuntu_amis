require 'minitest/autorun'
require 'ubuntu_amis'


class UbuntuAmisTest < MiniTest::Unit::TestCase

  def test_array
    table = UbuntuAmis.table
    assert table.is_a?(Array), "UbuntuAmis.table should return an array"
    assert table.size > 0, "UbuntuAmis.table should not be empty"
    assert table.transpose.first.uniq.include?("ap-northeast-1"), "UbuntuAmis.table should have information of the machines"
    assert (table[0][6] =~ /^ami\-[\dabcdef]{8}$/) , "UbuntuAmis.table should return the proper ami instead of a link\n#{table[0][6]}"
  end
end
