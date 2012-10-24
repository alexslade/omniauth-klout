require 'spec_helper'

describe OmniAuth::Strategies::Klout do
  subject do
    OmniAuth::Strategies::Klout.new({})
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://api.klout.com")
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://api.klout.com/v2/oauth/')
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq('https://api.klout.com/v2/oauth/token')
    end
  end

end
