# frozen_string_literal: true

class StoreMdrsController < ApplicationController
  before_action :set_store
  def index
    @store_mdr = @store.store_mdrs.new
    @store_mdrs = @store.store_mdrs
  end

  def new
    @store_mdr = @store.store_mdrs.new
    @store_mdrs = @store.store_mdrs
  end

  def create
    @store_mdr = @store.store_mdrs.new(store_mdr_params)

    if @store_mdr.save
      flash[:notice] = 'Store_mdr save successfully'
      redirect_to(store_store_mdrs_path)
    else

      render('new')
    end
  end

  def edit
    @store_mdr = @store.store_mdrs.find(params[:id])
  end

  def update
    @store_mdr = @store.store_mdrs.find(params[:id])

    if @store_mdr.update_attributes(store_mdr_params)
      flash[:notice] = 'Store_mdr updated successfully'
      redirect_to(store_path(@store.id))
    else
      render('edit')
    end
  end

  def destroy; end

  private

  def set_store
    @store = Store.find_by_id(params[:store_id])
  end

  def store_mdr_params
    params.require(:store_mdr).permit(:payment_mode, :rate_amount, :rate_type, :upto_amount, :from_amount, :store_id)
  end
end
