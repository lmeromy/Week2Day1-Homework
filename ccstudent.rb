# Homework week 2 day 1 part A
class Student

  def initialize(student_name, cohort)
    # instance variables - available only while object exists
    # defined with an @ sign
    @student_name = student_name
    @cohort = cohort
  end

  # getter methods to return student name and cohort
  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  # setter methods to update student name and cohort

  def set_student_name(newname)
    @student_name = newname
  end

  def set_cohort(newcohort)
    @cohort = newcohort
  end

  def talk
    return 'I can talk!'
  end

  def say_favorite_language(language)
    return "I love #{language}"
  end


end
