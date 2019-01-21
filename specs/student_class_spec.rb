require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class')


class TestStudent < MiniTest::Test


def setup

  @student = Student.new("Alex", "E28")


end
