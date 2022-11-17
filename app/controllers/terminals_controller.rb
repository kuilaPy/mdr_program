class TerminalsController < ApplicationController
  before_action :set_store
  def index
    @terminals=@store.terminals
    
    @terminal=@store.terminals.new
  end

  def create
    @terminal=@store.terminals.new(terminal_params)
    if @terminal.save
      redirect_to(store_terminals_path)

    else
      puts @terminal.errors.messages
      render('index')
    end
  end

  def show
  end

  def edit
  end

  def delete
  end

  private  

  def set_store
    @store = Store.find_by_id(params[:store_id])
  end
  
  def terminal_params
    params.require(:terminal).permit(:tid, :device_id, :remarks, :status,  :store_id)
  end
  
end
