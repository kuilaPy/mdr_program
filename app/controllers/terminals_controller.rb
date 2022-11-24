class TerminalsController < ApplicationController
  layout 'store'
  def index
    @terminal = Terminal.new
    @terminals =Terminal.all
    
  end

  def create
    @terminal = Terminal.new(terminal_params)
    if @terminal.save
      flash[:notice] = 'Terminal created successfully'
      redirect_to(terminals_path)
    else
      render('index')
    end
  end

  def edit
    @terminal = Terminal.find(params[:id])
  end

  def update
    @terminal = Terminal.find(params[:id])

    if @terminal.update_attributes(terminal_params)
      flash[:notice] = "terminal '#{@terminal.tid}' updated successfully"
      redirect_to(terminals_path)
    else
      render('edit')
    end
  end

  def destroy
    @terminal = Terminal.find(params[:id])
    @terminal.destroy
    flash[:notice] = "terminal'#{@terminal.tid}' deleted successfully"
    redirect_to(terminals_path)
  end

  private

  def terminal_params
    params.require(:terminal).permit(:tid, :remarks, :status)
  end
end
