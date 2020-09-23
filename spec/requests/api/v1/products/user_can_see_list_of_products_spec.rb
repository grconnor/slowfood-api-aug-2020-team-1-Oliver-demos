RSpec.describe Api::V1::ProductsController, type: :request do
let(:product) {create(:product)}
	describe 'GET /api/v1/products' do
		before do
			get '/api/vi/products'
		end

		it "should respond with 200 status" do
			expect(response).to have_http_status 200
		end

		it "should response with success message" do
			expect(response_json["product"].count).to eq 2
		end
	end
end


  
