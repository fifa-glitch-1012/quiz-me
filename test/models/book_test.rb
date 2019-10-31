# == Schema Information
#
# Table name: books
#
#  id               :bigint           not null, primary key
#  genre            :string
#  isbn             :string
#  publication_date :date
#  publisher        :string
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  
  test "fixtures are valid" do
    books.each do |b|
      assert b.valid?, b.errors.full_messages.inspect
    end
  end

  test "title with more than 100 characters should be invalid" do
    b = books(:one)
    b.title = "a" * 104
    assert_not b.valid?
    b.title = "a" * 105
    assert_not b.valid?
  end
  
  test "title that is missing or empty should be invalid" do
    b = books(:one)
    b.title = nil
    assert_not b.valid?
    b.title = ""
    assert_not b.valid?
  end

  test "publisher with more than 50 characters should be invalid" do
    b = books(:one)
    b.publisher = "a" * 52
    assert_not b.valid?
    b.publisher = "a" * 55
    assert_not b.valid?
  end

  test "isbn that does not match the ISBN-10 standard should be invalid" do
    b = books(:one)
    b.isbn = "X-575-04X00-X"
    assert_not b.valid?
    b.isbn = "X-575-040-"
    assert_not b.valid?
  end

  test "genre that is not one of the specified genres should be invalid" do
    b = books(:one)
    b.genre = "videogame"
    assert_not b.valid?
    b.genre = "sci-fi"
    assert_not b.valid?
  end

end
