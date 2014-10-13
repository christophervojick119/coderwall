class IndexProtipJob
  include Sidekiq::Worker

  sidekiq_options queue: :high

  def perform(protip_id)
    protip = Protip.find(protip_id)
    protip.tire.update_index unless protip.user.banned?
  end
end
