# code here!

class School
	attr_accessor :roster

	def initialize (name)
		@name = name
		@roster = {}
	end

	def add_student (student, grade)
		if !@roster[grade] then @roster[grade] = [] end
			@roster[grade].push(student)
	end

	def grade (grade)
		return @roster[grade]
	end

	def sort
		@roster = @roster.sort { |x, y|
			x <=> y
		}.to_h

		@roster.each { |grade, student_array|
			student_array.sort! { |st1, st2|
				st1 <=> st2
			}
		}
	end

end
