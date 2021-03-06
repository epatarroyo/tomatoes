require 'test_helper'

class OverallScoreTest < ActiveSupport::TestCase
  setup do
    @user = User.create!
  end

  teardown do
    User.destroy_all
    OverallScore.destroy_all
  end

  test 'creates a new overall score' do
    score = OverallScore.create(user: @user, score: 10)
    assert_equal score.s, 10
    assert_equal score.user, @user
    assert_equal @user.overall_score, score
  end
end
