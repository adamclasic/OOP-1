class Bootcamp

    def initialize(name, slogan, student_capacity, teachers = [], students = [], grades = {})
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = teachers
        @students = students
        @grades = grades
    end

    #getter methods

    def name; @name end
    def slogan; @slogan end
    def teachers; @teachers end
    def students; @students end
    def grades; @grades end

    #setter methods

    def name=(name); @name = name end
    def slogan=(slogan); @slogan = slogan end
    def students=(students); @students = students end



    #arbitry methods

    def hire(str)
        @teachers << str
    end

    def enroll(str)
        if @students.length+1 > @student_capacity
            return false
        else
            @students << str
            return true 
        end
    end

    def enrolled?(str)
        @students.include?(str)
    end

    def student_to_teacher_ratio()
        a = @teachers.length+1
        b = @students.length+1.to_f
        return ( a /  b).to_i
    end

    def add_grade(s_name, s_grades)
        if enrolled?(s_name)
            @grades[s_name] = s_grades
            true
        else
            return false
        end
    end

    def num_grades(s_name)
        @grades[s_name].length
    end

    def average_grade(ss_name)
        p a = @grades[ss_name]
        if a.length == 0
            return nil
        else

            r = (@grades[ss_name].sum(0.0) / @grades[ss_name].length)
            return r
        end
    end
    
end

# p boot1 = Bootcamp.new('microverse', 'free until u get a job', 30, %w(her brown krark browns), %w(her brown bfrown krar k browns))
# p boot1.student_to_teacher_ratio
# p boot1.enroll 'adam'
# p boot1.enroll 'djazo'
# p boot1.students
# p boot1.teachers
# p boot1.add_grade('adam', [11, 31, 13])
# p boot1.add_grade('djazo', [11, 12, 21])
# p boot1.average_grade('djazo')
# p boot1.average_grade('adam')
# p boot1.grades
# p [11, 01, 54].sum(0.0)