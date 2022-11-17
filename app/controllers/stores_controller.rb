# frozen_string_literal: true

class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      flash[:notice] = 'Store created successfully'
      redirect_to(new_store_store_mdr_path(@store.id))
    else
      render('new')
    end
  end

  def show
    @store = Store.find(params[:id])
    @store_mdrs=@store.store_mdrs
    @terminals=@store.terminals
  

  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])

    if @store.update_attributes(store_params)
      flash[:notice] = 'Store updated successfully'
      redirect_to(stores_path)
    else
      render('edit')
    end
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    flash[:notice] = "Store'#{@store.store_name}' deleted successfully"
    redirect_to(stores_path)
  end

  private

  def store_params
    params.require(:store).permit(:store_name, :store_address, :store_phone_number, :owner_name, :store_owner_phone_number,
                                  :email, :gst_no, :gst_certificate, :pan_no, :pan_card, :trade_licence, :trade_licence_certificate, :Bank_details, :uploading_of_cancelled_cheque, :dealer_name, :store_acquisition_form)
  end
end
