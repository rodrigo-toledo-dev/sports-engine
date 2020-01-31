require 'test_helper'

class LoginTest < ActionDispatch::IntegrationTest
  test "should access the admin" do
    get '/admin'
    post user_session_path, params: {user: {email: 'rodrigo@rtoledo.inf.br', password: 'abcd1234'}}
    get rails_admin_url
    assert_response :success
  end

  test "should not access the admin" do
    get '/admin'
    post user_session_path, params: {user: {email: 'rodrigo@rtoledo.inf.br', password: 'bad password'}}
    get rails_admin_url
    assert_response 302
  end
end
