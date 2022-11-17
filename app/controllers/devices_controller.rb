class DevicesController < ApplicationController
    def index
        @devices =Device.all
        @device=Device.new
    end
    
    
    def create
        @device=Device.new(device_params)
        if @device.save
            flash[:notice] = 'Store created successfully'
            redirect_to(devices_path)
          else
            render('index')
        end
    end 

    def edit 
        @device=Device.find(paramas[:id])
    end 

    def update
    end

    def delete

    end
    private
    
    def device_params
        params.require(:device).permit(:serial_no, :remarks, :status, :upto_amount)
    end

end
