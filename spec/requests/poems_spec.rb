require 'rails_helper'

RSpec.describe "Poems", type: :request do
  describe "GET /poems" do
    it "works! (now write some real specs)" do
      get poems_path
      expect(response).to have_http_status(200)
    end
  end
end
