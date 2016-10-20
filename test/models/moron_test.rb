require 'test_helper'

class MoronTest < ActiveSupport::TestCase
  test "Moron attributes must not be empty" do
    moron = Moron.new
    assert moron.invalid?
    assert moron.errors[:imgur].any?
    assert moron.errors[:description].any?
  end
end
