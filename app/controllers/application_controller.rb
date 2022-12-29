# frozen_string_literal: true

class ApplicationController < ActionController::Base
  layout 'store'
  before_action :authenticate_user!
  def after_sign_in_path_for(_resource)
    stores_path # your path
  end
end
