require 'test_helper'

class LocalDatabase::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, LocalDatabase
  end

  test "new" do
    puts ActiveRecord::Base.configurations
    puts Rails.env
  end
end
