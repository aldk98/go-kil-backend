class Order < ApplicationRecord
    belongs_to :customer, class_name: "User"
    belongs_to :driver,class_name: "User", optional: true
    enum status: { pending: "pending", on_pickup: "on_pickup", on_review: "on_review",
                 ongoing: "ongoing", finished: "finished", cancelled: "cancelled"}
    validates :status, :fare, :customer_id, :start_location,
              :end_location, presence: true
    validates :fare, numericality: { greater_than: 0 }
    validates_associated :customer, :driver
    acts_as_mappable
end
