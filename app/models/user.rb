# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
    validates :first_name, length: { maximum: 50 }  
    validates :last_name, length: { maximum: 50 }    
    validates :last_name, presence: true  
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :email, presence: true
    validates :email, uniqueness: true

end
