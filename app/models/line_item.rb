class LineItem < ApplicationRecord
  belongs_to :therapy
  belongs_to :cart
end
