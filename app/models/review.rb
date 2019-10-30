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
    validates :score, length: { in: 0..5 }
    validates :score, presence: true
    validates :summary, length: { maximum: 200 }    
    validates :summary, presence: true
    validates :summary, length: { maximum: 10000 }    






end
