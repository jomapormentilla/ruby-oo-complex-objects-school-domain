# code here!

class School
    attr_accessor :name, :roster

    def initialize( name, roster={} )
        @name = name
        @roster = roster
    end

    def add_student( student_name, grade )
        
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << student_name
        @roster
    end

    def grade( grade )
        @roster[grade]
    end

    def sort
        hash = @roster
        hash.each do |grade, students|
            hash[grade] = students.sort
        end
        hash
    end
end