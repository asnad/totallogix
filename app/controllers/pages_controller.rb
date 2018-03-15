class PagesController < ApplicationController
  include HighVoltage::StaticPage
  before_action :set_contents
  private
  def set_contents
    @contents = LandingContent.last if params[:id] == "home"
  end
end
