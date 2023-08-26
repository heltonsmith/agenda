class Call < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :reason

  scope :por_cliente_o_razon, -> (cadena) { joins(:client, :reason).where("clients.name = ? OR reasons.name = ?", cadena, cadena) }
end
