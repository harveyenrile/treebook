require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "a status should require content" do
    status = Status.new
    assert !status.save
    assert !status.errors[:content].empty?
  end
  test "a status content should have more than 2 characters" do
    status = Status.new
    status.content = "H"
    assert !status.save
    assert !status.errors[:content].empty?
  end
  test "a status should be assigned to a user" do
    status = Status.new
    status.content = "Hello"
    assert !status.save
    assert !status.errors[:user_id].empty?
  end

end
