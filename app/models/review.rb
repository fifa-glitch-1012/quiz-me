# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  full_text  :text
#  score      :integer
#  summary    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
    validates :score, presence: true
    validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 6}
    validates :summary, length: { maximum: 200 }    
    validates :summary, presence: true
    validates :full_text, length: { maximum: 10000 }    






end
