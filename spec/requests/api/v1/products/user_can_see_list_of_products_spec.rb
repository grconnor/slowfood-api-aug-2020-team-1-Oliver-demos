RSpec.describe Api::V1::ProductsController, type: :request do
  let!(:product1) { create(:product, name: 'Chicken Wings') }
  let!(:product2) { create(:product, name: 'Kebab') }

  describe 'GET /api/v1/products' do
    before do
      get '/api/v1/products'
    end

    it 'should respond with 200 status' do
      expect(response).to have_http_status 200
    end

    it 'returns a collection of products' do
      expect(response_json['products'].count).to eq 2
    end
  end
end
