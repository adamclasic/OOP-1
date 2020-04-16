class Bootcamp

    def initialize(name, slogan, teachers = [], students = [], grades = Hash.new {|value, key| value[key] = []})
        @name = name
        @slogan = slogan
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


    #arbitry methods

    def hire(str)
        @teachers << str
    end

    def enroll(str)
        @students << str
    end

    def enrolled?(str)
        @students.include(str)
    end

    def teacher_to_studnet_ratio()
        @teachers.length/@students.length
    end

    
end

boot1 = Bootcamp.new('microverse', 'free until u get a job')