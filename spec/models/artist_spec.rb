require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validation" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:bio).is_at_most(600) }
  end
end
