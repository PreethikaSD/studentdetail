require 'rails_helper'

RSpec.describe StudentsController, type: :controller do

	let(:student) {FactoryBot.create(:student)}
	let(:valid_params) {FactoryBot.attributes_for(:student)}

	before(:all) do
		@student = create(:student)
	end

  describe "GET index" do
    it "assigns @students" do
      get :index
      expect(assigns(:students)).to eq([@student])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end


  describe "GET #show" do
    it "returns http success" do
    	get :show, params: { id: student.id }
      expect(response).to have_http_status(:success)
    end

    it "has the correct assignment" do
    	get :show, params: { id: student.id }
      expect(assigns(:student)).not_to be_nil
      expect(assigns(:student).name).to eq student.name
    end
  end

end
