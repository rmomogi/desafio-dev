class TransactionCreatorWorker
  include Sidekiq::Worker
  sidekiq_options retry: 2, queue: 'high'
  
  def perform(args)
    Transaction.create!(args)
  end
end
