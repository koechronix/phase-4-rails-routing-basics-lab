class StudentsController < ApplicationController
    def index
        # model
        students = Student.all
        # view 
        render json: students

    end
    
    def grades
        sorted_list = Student.all.order('grade DESC')
        render json: sorted_list
    end

    
    def highest_grade
        sorted_list = Student.all.order('grade DESC')
        render json: sorted_list[0]
    end
end
