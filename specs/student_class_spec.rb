require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class')


class TestStudent < MiniTest::Test


  def setup
    @student = Student.new("Alex", "E28")
  end

  def test_get_name
    assert_equal("Alex", @student.get_name())
  end

  def test_get_cohort
    assert_equal("E28", @student.get_cohort())
  end
  
end
