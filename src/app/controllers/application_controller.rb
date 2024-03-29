 # Project name: Locatable
 # Description: Sending out alerts to the user's close contacts when they are in possible danger
 # Filename: application_controller.rb
 # Description: No login needed for the application
 # Last modified on: 4/20/22
 # Code written by Nithya Nalluri

# frozen_string_literal: true

# This is the main controller for the entire project
# Every other controller will inherit from this one
# If there is a behavior or method you want for all controllers,
# it goes here. If that method is a helper, don't add it here,
# but in the helpers folder. They will be avalable in their
# respected views.
class ApplicationController < ActionController::Base
  # If someone tried to pretend to be someone else, an error occurs for them
  protect_from_forgery with: :exception
  # See if the current user is logged in
  before_action :authenticate_user!
end