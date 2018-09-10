# Homework week 2 day 1 part A

require('minitest/autorun')
require('minitest/rg')

require_relative('../ccstudent')

class TestCCStudent < Minitest::Test


  def setup #to set up  global variables for testing
    @student = Student.new("Leah", "G8")
  end


  def test_student_name
    assert_equal('Leah', @student.student_name)
  end

  def test_cohort
    assert_equal('G8', @student.cohort)
  end

  def test_set_student_name
    result = @student.set_student_name('Asma')
    assert_equal('Asma', result)
  end

  def test_set_cohort
    result = @student.set_cohort('G6')
    assert_equal('G6', result)
  end

  def test_talk
    result = @student.talk()
    assert_equal('I can talk!', result)
  end

  def test_say_favourite_language
    result = @student.say_favorite_language('Ruby')
    assert_equal('I love Ruby', result)
  end


end
