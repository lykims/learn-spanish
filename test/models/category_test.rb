require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
    def setup
        @category1 = categories(:calendar_category)
    end

    test "should be valid" do
        assert @category1.valid?
    end

    test "name should be present" do
        @category1.name = "     "
        assert_not @category1.valid?
    end

    test "should not insert same category name" do
        duplicate_category = @category1.dup
        @category1.save
        assert_not duplicate_category.valid?
    end

    test "should not insert same category name not case-sensitive" do
        duplicate_category = @category1.dup
        @category1.name = "cAlEnDar"
        @category1.save
        assert_not duplicate_category.valid?
    end
end
