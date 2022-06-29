# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # devise after signup
  def after_sign_up_path_for(:user) { root_path }
end
