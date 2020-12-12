$STATUSES = [ "passed", "failed", "pending" ]

class BoatingTest

    #BoatingTest class: * should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object) * BoatingTest.all returns an array of all boating tests

    @@all = []

    attr_accessor :student, :name, :status, :instructor

    def initialize( this_student, this_name, this_status, this_instructor )
        @student = this_student
        @name = this_name
        @status = this_status
        @instructor = this_instructor
        @@all << self
    end

    def self.all
        @@all
    end

end