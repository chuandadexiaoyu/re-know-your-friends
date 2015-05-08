require 'test_helper'

class FriendRelationsControllerTest < ActionController::TestCase
  setup do
    @friend_relation = friend_relations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friend_relations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friend_relation" do
    assert_difference('FriendRelation.count') do
      post :create, friend_relation: { big_id: @friend_relation.big_id, small_id: @friend_relation.small_id, status: @friend_relation.status }
    end

    assert_redirected_to friend_relation_path(assigns(:friend_relation))
  end

  test "should show friend_relation" do
    get :show, id: @friend_relation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @friend_relation
    assert_response :success
  end

  test "should update friend_relation" do
    patch :update, id: @friend_relation, friend_relation: { big_id: @friend_relation.big_id, small_id: @friend_relation.small_id, status: @friend_relation.status }
    assert_redirected_to friend_relation_path(assigns(:friend_relation))
  end

  test "should destroy friend_relation" do
    assert_difference('FriendRelation.count', -1) do
      delete :destroy, id: @friend_relation
    end

    assert_redirected_to friend_relations_path
  end
end
