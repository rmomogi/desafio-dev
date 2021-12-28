class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :type_transaction_cd, null: false
      t.datetime :occurrence_date, null: false
      t.decimal :amount, null: false
      t.string :cpf, null: false
      t.string :credit_card, null: false
      t.string :store_owner, null: false
      t.string :store_name, null: false
      t.timestamps
    end
  end
end
