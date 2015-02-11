require 'test_helper'

class PictureVotesControllerTest < ActionController::TestCase
  setup do
    @picture_vote = picture_votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:picture_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picture_vote" do
    assert_difference('PictureVote.count') do
      post :create, picture_vote: { direction: @picture_vote.direction, picture_id: @picture_vote.picture_id, user: @picture_vote.user }
    end

    assert_redirected_to picture_vote_path(assigns(:picture_vote))
  end

  test "should show picture_vote" do
    get :show, id: @picture_vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @picture_vote
    assert_response :success
  end

  test "should update picture_vote" do
    patch :update, id: @picture_vote, picture_vote: { direction: @picture_vote.direction, picture_id: @picture_vote.picture_id, user: @picture_vote.user }
    assert_redirected_to picture_vote_path(assigns(:picture_vote))
  end

  test "should destroy picture_vote" do
    assert_difference('PictureVote.count', -1) do
      delete :destroy, id: @picture_vote
    end

    assert_redirected_to picture_votes_path
  end
end
