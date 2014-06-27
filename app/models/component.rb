class Component

  include Mongoid::Document
  validates_presence_of :name
  validates_presence_of :desc
  validates_presence_of :price
  validates_presence_of :category
  validates_presence_of :model
  validates_presence_of :icon
  validates_numericality_of :price, :greater_than_or_equal_to => 0

  field :name, type: String

  field :desc, type: String

  field :price, type: Float

  field :category, type: String

  field :model, type: String

  field :icon, type: String

  field :viewInt, type: String

  field :viewFront, type: String

  field :viewRear, type: String

  field :viewStripeFront, type: String

  field :viewStripeRear, type: String

  field :borderColor, type: String

end