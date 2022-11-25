module Api
  class TeachersController < ApplicationController

    def index
      @data = Teacher.all

      render json: @data
    end

    def create
      @teacher = Teacher.new(teacher_params)

      if @teacher.save
        render json: @teacher
      else
        render json: @teacher.errors, status: :unprocessable_entity
      end
    end

    def show
      @teacher = Teacher.find params[:id]

      if @teacher.present?
        render json: @teacher
      else
        render json: { message: 'Data Not Found' }
      end
    end

    def update
      @teacher = Teacher.find params[:id]

      if @teacher.update teacher_params
        render json: @teacher
      else
        render json: @teacher.errors, status: :unprocessable_entity
      end
    end

    def delete
      @teacher = Teacher.find params[:id]

      if @teacher.present?
        @teacher.destroy

        render json: @teacher
      else
        render json: { message: 'Data Not Found' }
      end
    end

    private

    def teacher_params
      params.require(:teacher).permit(:name, :address)
    end
  end
end
