class DemosController < ApplicationController
  def index
  end

  def show
    p params
    @demo = Demo.find(params[:id])
  end

  def new
    @demo = Demo.new
  end

  def create
    data = {
      title: params[:demo][:title],
      content: params[:demo][:content]
    }
    params = ActionController::Parameters.new(data)
    params.permit!
    @demo = Demo.new(params)

    @demo.save!
    # p @demo
    # render plain: ''
    redirect_to demos_url(@demo), :status => :found
  end
end
