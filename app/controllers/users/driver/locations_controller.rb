class Users::Driver::LocationsController < Devise::LocationsController
    before_action :authenticate_user!

    def set 
        if @user.update(user_params()) 
          render :show, status: :ok
        else 
          render json: @user.errors, status: :unprocessable_entity 
        end 
    end

    
    private

        def user_params
            params.require(:user).permit!
        end

        def set_user 
            @user = User.find(params[:id]) 
        end
       
end