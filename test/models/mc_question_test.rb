# == Schema Information
#
# Table name: mc_questions
#
#  id           :bigint           not null, primary key
#  answer       :string
#  distractor_1 :string
#  distractor_2 :string
#  question     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class McQuestionTest < ActiveSupport::TestCase

  test "fixtures are valid" do
    mc_questions.each do |q|
      assert q.valid?, q.errors.full_messages.inspect
    end
  end

  test "question presence not valid" do
    q = mc_questions(:one)
    q.question = nil
    assert_not q.valid?
    q.question = ""
    assert_not q.valid?
  end

  test "answer presence not valid" do
    a = mc_questions(:one)
    a.answer = nil
    assert_not a.valid?
    a.answer = ""
    assert_not a.valid?
  end

  test "distractor_1 presence not valid" do
    d_1 = mc_questions(:one)
    d_1.distractor_1 = nil
    assert_not d_1.valid?
    d_1.distractor_1 = ""
    assert_not d_1.valid?
  end

  test "question uniqueness not valid" do
    q = mc_questions(:one).dup
    assert_not q.valid?
  end

  test "choices cannot be duplicate not valid" do
    q = mc_questions(:one)
    q.distractor_1 = q.answer
    assert_not q.valid?, q.errors.full_messages.inspect
    q = mc_questions(:one)
    q.distractor_1 = q.distractor_2
    assert_not q.valid?, q.errors.full_messages.inspect
    q = mc_questions(:one)
    q.distractor_2 = q.answer
    assert_not q.valid?, q.errors.full_messages.inspect
  end

end
