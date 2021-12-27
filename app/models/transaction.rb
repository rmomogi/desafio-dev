class Transaction < ApplicationRecord
  validates_presence_of :type, :occurrence_date, :amount, :cpf, 
    :credit_card, :store_owner, :store_name
end
