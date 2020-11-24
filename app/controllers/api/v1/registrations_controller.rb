class Api::V1::RegistrationsController < ApplicationController
   
  def create
    begin
      user = User.create!(user_params)
      if user 
        session[:user_id] = user.id
        render json: {
          status: :created,
          user: user
        }
      end
    rescue => exception
      render json: {
        status: 500
      }
    end  
  end


  private  
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :dob, :email, :email_confirmation, :password, :password_confirmation)
    end

end