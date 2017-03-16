# code here!
class School
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def name
		@school_name
	end

  def roster
    @roster
  end

  def add_student(student, grade)
    # @student = student
  	# @grade = grade
    if @roster[grade]
			@roster[grade] << student
		else
			@roster[grade] = [student]
		end
	end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
			@roster[grade] = names.sort
		end

		Hash[@roster.sort]
  end
end
