class Order < ApplicationRecord
  belongs_to :company

  enum status: {
    in_transit: 0,
    incoming_evaluation: 1,
    preparing_quote: 2,
    pending_customer_approval: 3,
    repair_in_process: 4,
    final_quality_review: 5,
    preparing_shipment: 6,
    repair_on_its_way: 7,
  }

  after_initialize :set_defaults


  private

  def set_defaults
    self.status ||= :in_transit
  end
end
