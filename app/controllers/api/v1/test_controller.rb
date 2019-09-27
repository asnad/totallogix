class Api::V1::TestController < ApplicationController
  skip_before_action :verify_authenticity_token
  def simple_test
    render json: [params[:string], [1, "1", "yes", "true"].include?(params[:boolean])]
  end
end
