require 'minitest/autorun'
require 'minitest/pride'
require './user'
require 'active_support'
require 'active_support/core_ext'

class RepoTest < Minitest::Test

    def test_class_exists
      assert User
    end

    def test_can_get_user_info
      info = User.new("rposborne").user_info
      assert_match(/Burningpony Corp/, info.to_json)
    end

end
