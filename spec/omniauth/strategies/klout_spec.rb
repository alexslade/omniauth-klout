require 'spec_helper'

describe OmniAuth::Strategies::Klout do
  subject do
    OmniAuth::Strategies::Klout.new(double, 'api_key', 'api_secret')
  end

  describe "#request_phase" do
    it "redirects to a request URL" do
      subject.should_receive(:request_url)
      subject.request_phase
    end
  end

end
