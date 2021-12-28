require 'rails_helper'

RSpec.describe Repo::Cnab::Base do

  describe '#create' do
    let(:info) { '3201903010000014200096206760174753****3153153453JOÃO MACEDO   BAR DO JOÃO  ' }

    it 'create transaction' do
      described_class.create(info)
    end
  end
end
