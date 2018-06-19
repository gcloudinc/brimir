class PingsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  skip_authorization_check only: [:show]
  def show
    render plain: 'ok'
  end
end
