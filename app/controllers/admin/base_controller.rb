# -*- encoding : utf-8 -*-
class Admin::BaseController < ApplicationController
  before_filter :authenticate

  protected
    def authenticate
      redirect_to admin_signin_path if session[:administrator].blank?
    end
end
