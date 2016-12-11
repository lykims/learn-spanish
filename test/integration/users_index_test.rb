require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest
    def setup
        @user = users(:kim)
        @admin = users(:kim)
        @non_admin = users(:bob)
    end

    test "index including pagination" do
        log_in_as(@user)
        get users_path
        assert_template 'users/index'
        assert_select 'div.pagination'
        User.paginate(page: 1, per_page: 15).order('name ASC').each do |user|
            assert_select 'a[href=?]', user_path(user), text: user.name
        end
    end

    test "index as admin including pagination and delete links" do
        log_in_as(@admin)
        get users_path
        assert_template 'users/index'
        assert_select 'div.pagination'
        first_page_of_users = User.paginate(page: 1, per_page: 15).order('name ASC')
        first_page_of_users.each do |user|
            assert_select 'a[href=?]', user_path(user), text: user.name
            unless user == @admin
                assert_select 'form input[value=Delete]'
            end
        end
        assert_difference 'User.count', -1 do
            delete user_path(@non_admin)
        end
    end

    test "index as non-admin" do
        log_in_as(@non_admin)
        get users_path
        assert_select 'form input[value=Delete]', count: 0
    end
end
