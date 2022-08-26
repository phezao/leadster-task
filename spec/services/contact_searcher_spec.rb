require 'rails_helper'

RSpec.describe ContactSearcher do
  context "when inputing a part of the fullname" do
    it 'returns a contact that matches that fullname' do
      create_list(:contact, 10)
      create(:contact, fullname: 'Philip Yuuki Kimura Oka')
      searcher = described_class.call('Philip')

      expect(searcher.length).to eq(1)
    end
  end
end
