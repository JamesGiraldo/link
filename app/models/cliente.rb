class Cliente < ApplicationRecord
   validates :nombre, :telefono, :ciudad, presence: true
   validates :email, uniqueness: true, presence: true
end
