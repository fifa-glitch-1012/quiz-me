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
    validates :webpage, format: { with: URI::regexp(%w(http https)) }
    validate :dob_before_today
    def dob_before_today
        if Date.today <= dob
            errors.add(:dob, "dob must be before today")
        end
    end
    validates :dob, presence: true
    validate :after_dob
    def after_dob
        if dod <= dob 
            errors.add(:dod, "dod must be after dob")
        end
        if Date.tomorrow <= dod 
            errors.add(:dod, "dod must be before tomorrow")
        end
    end
end
