require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    before { subject.valid? }

    it 'has a presence validation for user' do
      expect(subject.errors[:user]).to include('must exist')
    end
  end
end
