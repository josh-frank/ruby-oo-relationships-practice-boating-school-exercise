class Student

    @@all = []

    attr_accessor :first_name

    def initialize( this_name )
        @first_name = this_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test( boating_test_name, test_status, instructor )
        #should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object).
        BoatingTest.new( self, boating_test_name, "pending", instructor )
    end

    def all_instructors
        #should return an array of instructors with whom this specific student took a boating test.
        BoatingTest.all.map{ | test | test.instructor if test.student == self }
    end

    def self.find_student( student_name )
        #will take in a first name and output the student (Object) with that name
        Student.all.find{ | student | student.first_name == student_name }
    end

    def grade_percentage
        #Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
        passed = BoatingTest.all.select{ | test | test.student == self && test.status == "passed" }.size.to_f
        failed = BoatingTest.all.select{ | test | test.student == self && test.status == "failed" }.size.to_f
        ( passed / ( passed + failed ) * 100 ).round( 2 )
    end

end