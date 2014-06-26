class Component

  include Mongoid::Document

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