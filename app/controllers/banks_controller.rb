# frozen_string_literal: true

class BanksController < ApplicationController

  def index
    @bank = Bank.new
    @banks = Bank.all
  end

  def new
    @bank = Bank.new
  end

  def show
    @bank = Bank.find(params[:id])
    @bank_mdrs = @bank.bank_mdrs
  end

  def create
    @bank = Bank.new(bank_params)
    if @bank.save
      flash[:notice] = "#{@bank.bank_name} bank add successfully"
      redirect_to(bank_bank_mdrs_path(@bank.id))

    else
      render('new')
    end
  end

  def edit
    @bank = Bank.find(params[:id])
  end

  def update
    @bank = Bank.find(params[:id])

    if @bank.update_attributes(bank_params)
      flash[:notice] = 'bank updated successfully'
      redirect_to(banks_path)
    else
      render('edit')
    end
  end

  def destroy
    @bank = Bank.find(params[:id])
    @bank.destroy
    flash[:notice] = "Bank'#{@bank.bank_name}' deleted successfully"
    redirect_to(banks_path)
  end

  private

  def bank_params
    params.require(:bank).permit(:bank_name, :branch_address)
  end
end
