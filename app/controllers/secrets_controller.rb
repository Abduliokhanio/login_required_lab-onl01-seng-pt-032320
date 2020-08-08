class SecretsController < ApplicationController
    before_action :require_login
    def show
      if not logged in, redirect_to '/login'
    end

    private
    def require_login
        redirect_to :login unless current_user.present?
    end

end
