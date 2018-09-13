class Users::LocationsController < Devise::LocationsController

    def update 
        if @user.update(user_params) 
          render :show, status: :ok
        else 
          render json: @user.errors, status: :unprocessable_entity 
        end 
    end

    
    private

        def user_params
            params.require(:location).permit!
        end

        def set_user 
            @user = User.find(params[:id]) 
        end
       
end