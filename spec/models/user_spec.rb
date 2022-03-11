require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'after validations' do
    before { subject.valid? }

    it 'has a password error' do
      expect(subject.errors[:password]).to include("can't be blank")
    end

    it 'has an email error' do
      expect(subject.errors[:email]).to include("can't be blank")
    end
  end
end
