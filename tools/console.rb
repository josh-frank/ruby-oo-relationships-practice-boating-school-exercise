require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new( "SpongeBob" )
patrick = Student.new( "Patrick" )

mrs_puff = Instructor.new( "Mrs. Puff" )

spongebob_test1 = BoatingTest.new( spongebob, "SpongeBob's first test", "failed", mrs_puff )
spongebob_test2 = BoatingTest.new( spongebob, "SpongeBob's second test", "passed", mrs_puff )
patrick_test1 = BoatingTest.new( patrick, "Patrick's first test", "failed", mrs_puff )
patrick_test2 = BoatingTest.new( patrick, "Patrick's second test", "failed", mrs_puff )
patrick_test3 = BoatingTest.new( patrick, "Patrick's third test", "passed", mrs_puff )

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

