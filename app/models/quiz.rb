# == Schema Information
#
# Table name: quizzes
#
#  id          :bigint           not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Quiz < ApplicationRecord
    validates :title, :description, presence: true
    has_many :mc_questions, dependent: :destroy

    belongs_to :creator,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :quizzes
end
