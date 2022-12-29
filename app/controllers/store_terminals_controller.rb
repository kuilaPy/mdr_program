# frozen_string_literal: true

class StoreTerminalsController < ApplicationController
  before_action :set_store
  def index
    @store_terminal = @store.store_terminals.new
    @store_terminals = @store.store_terminals
  end

  def create
    @store_terminal = @store.store_terminals.new(store_terminal_params)
    if @store_terminal.save
      redirect_to(store_store_terminals_path)

    else
      puts @store_terminal.errors.messages
      render('index')
    end
  end

  def show; end

  def edit
    @store_terminal = @store.store_terminals.find(params[:id])
  end

  def update
    @store_terminal = @store.store_terminals.find(params[:id])
    if @store_terminal.update_attributes(store_terminal_params)
      flash[:notice] = 'store_terminal updated successfully'
      redirect_to(store_path(@store.id))
    else
      render('edit')
    end
  end

  def destroy
    @store_terminal = @store.store_terminals.find(params[:id])
    @store_terminal.destroy
    flash[:notice] = "store_terminal'#{@store_terminal.tid}' deleted successfully"
    redirect_to(store_path(@store.id))
  end

  private

  def set_store
    @store = Store.find_by_id(params[:store_id])
  end

  def store_terminal_params
    params.require(:store_terminal).permit(:terminal_id, :device_id, :remarks, :status, :store_id)
  end
end
