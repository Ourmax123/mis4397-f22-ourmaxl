class ApplicationController < ActionController::Base
  before_action :set_query, only: %i[ show edit update destroy ]
  
  def set_query
      @query = User.ransack(params[:q])
      @users = @q.result(distinct: true)
  end
  



end
