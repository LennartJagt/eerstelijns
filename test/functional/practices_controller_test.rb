require 'test_helper'

class PracticesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Practice.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Practice.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Practice.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to practice_url(assigns(:practice))
  end

  def test_edit
    get :edit, :id => Practice.first
    assert_template 'edit'
  end

  def test_update_invalid
    Practice.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Practice.first
    assert_template 'edit'
  end

  def test_update_valid
    Practice.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Practice.first
    assert_redirected_to practice_url(assigns(:practice))
  end

  def test_destroy
    practice = Practice.first
    delete :destroy, :id => practice
    assert_redirected_to practices_url
    assert !Practice.exists?(practice.id)
  end
end
