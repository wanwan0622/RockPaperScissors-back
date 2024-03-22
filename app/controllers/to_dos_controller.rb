class ToDosController < ApplicationController
  before_action :set_to_do, only: [:update]

  # GET /to_dos?report_id=1
  def index
    to_do = ToDo.where(report_id: params[:report_id])

    if to_do
      render json: to_do
    else
      # 該当するレコードが見つからない場合は、404 Not Foundを返す
      render json: { error: "Not Found" }, status: :not_found
    end
  end

  # POST /to_dos
  def create
    @to_do = ToDo.new(to_do_params)

    if @to_do.save
      render json: @to_do, status: :created, location: @to_do
    else
      render json: @to_do.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /to_dos/1
  def update
    if @to_do.update(to_do_params)
      render json: @to_do
    else
      render json: @to_do.errors, status: :unprocessable_entity
    end
  end

  private
    def set_to_do
      @to_do = ToDo.find(params[:id])
    end

    def to_do_params
      params.permit(:todo, :is_completed, :report_id)
    end
end
