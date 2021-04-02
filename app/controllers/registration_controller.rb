class RegistrationsController < Devise::RegistrationsController
    private

    def sing_up_params
        params.require(:user).permit(:name, :username, :email, :password, :apssword_confirmation)
    end

    def sing_update_params
        params.require(:user).permit(:name, :username, :email, :password, :apssword_confirmation, :current_password)
    end

end