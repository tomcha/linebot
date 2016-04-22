# coding:utf-8
require 'spec_helper.rb'

describe "Application" do
  include Rack::Test::Methods
  def app
    @app ||= Linebot::Application
  end

  describe "レスポンスの精査" do
    describe "/へのアクセス" do
      before { post'/'} 
      it "正常なレスポンスが返る事" do
        expect(last_response.status).to eq 200
      end
    end
  end
end
