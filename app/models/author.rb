# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  dob        :date
#  dod        :date
#  first_name :string
#  last_name  :string
#  webpage    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ApplicationRecord
    validates :first_name, length: { maximum: 50 }    
    validates :last_name, length: { maximum: 50 }    
    validates :last_name, presence: true
    #webpage	Must match be a valid URL as per the standard
    #dob	Must be before today; must be present. fix dob in seeds
    validates :dob, presence: true
    #dod	Must be after the dob; must be before tomorrow. fix dod in seeds



end
