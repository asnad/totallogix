class Service < ApplicationRecord
  validates :heading, :description, :sort_order, presence: true
  after_initialize :set_order, if: lambda{|s| s.new_record? && s.sort_order.blank?}
  private
  def set_order
    self.sort_order = Service.pluck(:sort_order).max + 1
  end
end
