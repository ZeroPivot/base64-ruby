require "minitest/autorun"
require_relative "../my_base64"
require "base64"

class MyBase64Test < Minitest::Test
  def test_encode
    target_string = "ABCDEFG"
    assert_equal MyBase64.encode(target_string), Base64.strict_encode64(target_string)
  end
end