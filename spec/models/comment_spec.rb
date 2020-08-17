require "spec_helper"
require "rails_helper"

describe Comment do
  it { should belong_to :article }
  describe "validations" do
    it { should validate_presence_of  :body }
    it { should validate_length_of(:body).is_at_most(4000) }
  end
end