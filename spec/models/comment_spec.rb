
require "rails_helper"

describe  Comment do
  describe "association" do
    it { should belong_to :article }
  end

  describe "validate_length_of_comment" do
    it { should validate_length_of(:body).is_at_most(4000)}
  end

end