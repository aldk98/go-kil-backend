# frozen_string_literal: true

class Drivers::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super { @token = current_token }
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end


  private

  def current_token
    request.env['warden-jwt_auth.token']
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end