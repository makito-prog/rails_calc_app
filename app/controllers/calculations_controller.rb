class CalculationsController < ApplicationController
  def new
  end

  def create
    @number1 = params[:number1].to_f
    @number2 = params[:number2].to_f
    @operation = params[:operation]

    @result = case @operation
              when "addition"
                @number1 + @number2
              when "subtraction"
                @number1 - @number2
              when "multiplication"
                @number1 * @number2
              when "division"
                if @number2 != 0
                  @number1 / @number2
                else
                  "Error: Division by zero"
                end
              else
                "Invalid operation"
              end
    render :new
  end
end
