class Bootcamp

    def initialize(name, slogan, student_capacity, teachers = [], students = [], grades = Hash.new {|value, key| value[key] = []})
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
        if @students.size+1 > @student_capacity
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
            @grades[s_name] << s_grades
            true
        else
            return false
        end
    end

    
end

p boot1 = Bootcamp.new('microverse', 10, 'free until u get a job', %w(her brown krark browns), %w(her brown bfrown krar k browns))
p boot1.student_to_teacher_ratio
p boot1.students
p boot1.teachers
p boot1.add_grade('adam', [11, 01, 54])
p boot1.add_grade('djazo', [11, 01, 54])
p boot1.grades