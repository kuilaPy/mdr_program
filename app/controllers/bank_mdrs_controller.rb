# frozen_string_literal: true

class BankMdrsController < ApplicationController
  
  before_action :set_bank
  def index
    @bank_mdr = @bank.bank_mdrs.new
    @bank_mdrs = @bank.bank_mdrs
  end

  def create
    @bank_mdr = @bank.bank_mdrs.new(bank_mdr_params)

    if @bank_mdr.save
      flash[:notice] = 'bank_mdr save successfully'
      redirect_to(bank_bank_mdrs_path)
    else

      render('new')
    end
  end

  def edit
    @bank_mdr = @bank.bank_mdrs.find(params[:id])
  end

  def update
    @bank_mdr = @bank.store_mdrs.find(params[:id])

    if banke_mdr.update_attributes(bank_mdr_params)
      flash[:notice] = 'bank_mdr updated successfully'
      redirect_to(store_path(@bank.id))
    else
      render('edit')
    end
  end

  def destroy; end

  private

  def set_bank
    @bank = Bank.find_by_id(params[:bank_id])
  end

  def bank_mdr_params
    params.require(:bank_mdr).permit(:payment_mode, :rate_amount, :rate_type, :upto_amount, :from_amount, :bank_id)
  end
end
