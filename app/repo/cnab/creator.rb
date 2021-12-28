class Cnab::Creator < Cnab::Base
  def self.call(info)
    new(info).call
  end

  def call
    TransactionCreatorWorker.perform_async(params)
  end

  private

  def params
    { 
      type_transaction: type_transaction.to_i,
      occurrence_date: normalize_occurrence_date,
      amount: normalize_amount,
      cpf: cpf,
      credit_card: credit_card,
      store_owner: normalize_store_owner,
      store_name: normalize_store_name
    }
  end

  def normalize_amount
    amount.to_f / 100 * (DECREMENT_AMOUNT_CODE.include?(type_transaction) ? -1 : 1)
  end

  def normalize_store_owner
    store_owner.strip
  end

  def normalize_store_name
    store_name.strip
  end

  def normalize_occurrence_date
    Time.parse("#{occurrence_date} #{occurrence_hour}")
  end
end
