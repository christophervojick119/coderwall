RSpec.describe MergeTagJob do

  describe 'queueing' do
    it 'pushes jobs to the correct queue' do
      expect(MergeTagJob.get_sidekiq_options["queue"]).to eql :data_cleanup
    end
  end

end
