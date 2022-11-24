# frozen_string_literal: true

class DevicesController < ApplicationController
  layout 'store'
  def index
    @devices = Device.all
    @device = Device.new
  end

  def create
    @device = Device.new(device_params)
    if @device.save
      flash[:notice] = 'Store created successfully'
      redirect_to(devices_path)
    else
      render('index')
    end
  end

  def edit
    @device = Device.find(params[:id])
  end

  def update
    @device = Device.find(params[:id])

    if @device.update_attributes(device_params)
      flash[:notice] = 'device updated successfully'
      redirect_to(devices_path)
    else
      render('edit')
    end
  end

  def destroy
    @device = Device.find(params[:id])
    @device.destroy
    flash[:notice] = "Device'#{@device.serial_no}' deleted successfully"
    redirect_to(devices_path)
  end

  private

  def device_params
    params.require(:device).permit(:serial_no, :remarks, :status)
  end
end
