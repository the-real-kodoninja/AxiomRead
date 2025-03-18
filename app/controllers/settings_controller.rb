# app/controllers/settings_controller.rb

class SettingsController < ApplicationController
    before_action :authenticate_user!
  
    def index
    end
  
    def update
      # Update settings logic here
    end
  end