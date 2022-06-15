class RecordsController < ApplicationController

  def dashboard
  end

  def show
    if(!Record.exists?(params[:id].to_i))
      redirect_to index_path
    else
      @record = Record.find(params[:id].to_i)
    end
  end


  def index
    @records = Record.all
  end

end
