require 'test_helper'

class MoronTest < ActiveSupport::TestCase
  test "Moron attributes must not be empty" do
    moron = Moron.new
    assert moron.invalid?
    assert moron.errors[:imgur].any?
    assert moron.errors[:description].any?
  end

  test "URL must be a link to a PNG or JPG" do
    moron = Moron.new(imgur:  "www.google.com",
                      description: "My cool link to the googs")

    assert moron.invalid?
    assert_equal ["The URL must end in .jpg or .png"],
      moron.errors[:imgur]

    moron.imgur = "www.google.com/pics/logo.jpg"
    assert moron.valid?
  end

  test "Description must be unique" do
    moron = Moron.new(imgur: "test.jpg",
                      description: morons(:goog).description)
    assert moron.invalid?
    assert_equal ["has already been taken"], moron.errors[:title]
  end
end
