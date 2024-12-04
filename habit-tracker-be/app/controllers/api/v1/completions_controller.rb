class Api::V1::CompletionsController < ApplicationController
  before_action :authorize
  before_action :set_habit
  before_action :set_completion, only: [ :destroy ]

  def create
    @completion = @habit.completions.build(completion_params)
    if @completion.save
      @habit.update_streak(true)
      render json: @completion, status: :created
    else
      render json: { errors: @completion.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @completion.destroy
    @habit.update_streak(false)
    head :no_content
  end

  private

  def set_habit
    @habit = current_user.habits.find(params[:habit_id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Habit not found" }, status: :not_found
  end

  def set_completion
    @completion = @habit.completions.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Completion not found" }, status: :not_found
  end

  def completion_params
    params.permit(:completed_at)
  end
end
