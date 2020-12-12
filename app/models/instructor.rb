class Instructor

    @@all = []

    attr_accessor :name

    def initialize( this_name )
        @name = this_name
        @@all << self
    end

    def self.all
        @@all
    end

    def passed_students
        #should return an array of students who passed a boating test with this specific instructor.
        BoatingTest.all.collect{ | test | test.status == "passed" && test.instructor == self }
    end

    def pass_student( student, test_name )
        #should take in a student instance and test name. If there is a BoatingTest whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
        BoatingTest.new( student, test_name, "passed", self ) if !BoatingTest.all.detect{ | test | test.instructor == self }
        BoatingTest.all.detect{ | test | test.instructor == self }.status = "passed"
    end

    def fail_student
        #should take in a student instance and test name. Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.
        BoatingTest.new( student, test_name, "failed", self ) if !BoatingTest.all.detect{ | test | test.instructor == self }
        BoatingTest.all.detect{ | test | test.instructor == self }.status = "failed"
    end

    def all_students
        #should return an array of students who took a boating test with this specific instructor.
        BoatingTest.all.map{ | test | test.student if test.instructor == self }
    end

end