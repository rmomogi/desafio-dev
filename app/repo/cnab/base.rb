module Cnab
  class Base

    INFO = {
      type_transaction: 0..0,
      occurrence_date: 1..8,
      amount: 9..18,
      cpf: 19..29,
      credit_card: 30..41,
      occurrence_hour: 42..47,
      store_owner: 48..61,
      store_name: 62..80
    }

    DECREMENT_AMOUNT_CODE = %w[2 3 9]
    # 2	Boleto	Saída	-
    # 3	Financiamento	Saída	-
    # 9	Aluguel	Saída	-

    def initialize(info)
      @info = info
      build_methods
    end

    private

    def build_methods
      INFO.each do |key, value|
        define_singleton_method "#{key}" do
          return @info[value]
        end
      end
    end

    def params
      raise 'No method defined'
    end

    def type_transaction
      @info[INFO[:type_transaction]]
    end
  end
end

