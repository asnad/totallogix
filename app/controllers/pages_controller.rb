class PagesController < ApplicationController
  include HighVoltage::StaticPage
  before_action :set_contents
  private
  def set_contents
    if params[:id] == "home"
      @contents = LandingContent.last
      @services = Service.order(sort_order: :asc)
      @members = TeamMember.where(status: TeamMember.statuses[:active]).order(sort_order: :asc)
    end
  end
end
