require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe '#validations' do
    it { is_expected.to validate_presence_of(:type_transaction) }
    it { is_expected.to validate_presence_of(:occurrence_date) }
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_presence_of(:cpf) }
    it { is_expected.to validate_presence_of(:credit_card) }
    it { is_expected.to validate_presence_of(:store_owner) }
    it { is_expected.to validate_presence_of(:store_name) }
  end
end
