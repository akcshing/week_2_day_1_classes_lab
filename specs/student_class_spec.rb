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

  def test_set_name
    @student.set_name("Steve")
    assert_equal("Steve", @student.get_name())
  end

  def test_set_cohort
    @student.set_cohort("E29")
    assert_equal("E29", @student.get_cohort())
  end

end
