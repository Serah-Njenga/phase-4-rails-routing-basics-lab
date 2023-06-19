class StudentsController < ApplicationController
    def index
        student = Student.all
        render json: student
    end
    def grades
        students = Student.order(grade: :desc)
        render json: student
      end
    
      def highest_grade
        students = Student.order(grade: :desc).first
        render json: student
      end
end
