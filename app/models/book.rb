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

class Book < ApplicationRecord
    validates :title, length: { maximum: 100 }    
    validates :title, presence: true
    validates :publisher, length: { maximum: 50 }
    validates :isbn, format: { with: /\A0-((\d{3}-\d{5})|(\d{5}-\d{3}))-\w\z/ }
    validates :genre, inclusion: { in: %w(Comedy Dystopia Fantasy Mystery Romance Science_Fiction Thriller Western) }


end
