require 'minitest/autorun'
require 'minitest/pride'
require './repo'
require 'active_support'
require 'active_support/core_ext'

class RepoTest < Minitest::Test

    def test_class_exists
      assert Repo
    end

    def test_get_can_repos_for_a_user
      repo_list = Repo.new("rposborne").repos
      assert_match(/device_presence/, repo_list.to_json)
    end

end
