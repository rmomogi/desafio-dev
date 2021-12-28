class Transaction < ApplicationRecord
  as_enum :type_transaction, 
    debit: 1, 
    bill: 2, 
    financing: 3, 
    credit: 4, 
    receiving_loan: 5, 
    sales: 6, 
    ted: 7, 
    doc: 8, 
    rent: 9

  validates_presence_of :type_transaction, :occurrence_date, :amount, :cpf, 
    :credit_card, :store_owner, :store_name
end
