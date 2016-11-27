require 'test_helper'

class UserTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
    def setup
        @user = User.new(name: "Alice", username: "alice",
                     password: "foobar12", password_confirmation: "foobar12")
    end

    test "should be valid" do
        assert @user.valid?
    end

    test "name should be present" do
        @user.name = "     "
        assert_not @user.valid?
    end

    test "username should be present" do
        @user.username = "     "
        assert_not @user.valid?
    end

    test "name should not be too long" do
        @user.name = "a" * 51
        assert_not @user.valid?
    end

    test "username should not be too long" do
        @user.username = "a" * 51
        assert_not @user.valid?
    end

    test "name is valid" do
        @user.name = "Sébastien"
        assert @user.valid?
    end

    test "name is invalid" do
        @user.name = "hey!é"
        assert_not @user.valid?
    end

    test "username is valid" do
        @user.username = "hey1-."
        assert @user.valid?
    end

    test "username is invalid" do
        @user.username = "hey!"
        assert_not @user.valid?
    end

    test "username should be unique" do
        duplicate_user = @user.dup
        @user.save
        assert_not duplicate_user.valid?
    end

    test "username should be saved as lower-case" do
        mixed_case_username = "hELlO"
        @user.username = mixed_case_username
        @user.save
        assert_equal mixed_case_username.downcase, @user.reload.username
    end

    test "password should be present (nonblank)" do
        @user.password = @user.password_confirmation = " " * 6
        assert_not @user.valid?
    end

    test "password should have a minimum length" do
        @user.password = @user.password_confirmation = "a" * 5
        assert_not @user.valid?
    end

    test "authenticated? should return false for a user with nil digest" do
        assert_not @user.authenticated?('')
    end
end
