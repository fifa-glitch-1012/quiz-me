# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, length: { maximum: 50 }  
  validates :last_name, length: { maximum: 50 }    
  #validates :last_name, presence: true  
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, presence: true
  validates :email, uniqueness: true

  has_many :quizzes,
    class_name: 'Quiz',
    foreign_key: 'user_id',
    inverse_of: :creator

end
