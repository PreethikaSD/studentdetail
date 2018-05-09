require 'rails_helper'

RSpec.describe Student, type: :model do

	before(:all) do
		@student1 = create(:student)
	end

	it "is valid with valid attributes" do
    	expect(@student1).to be_valid
  	end

	it { should validate_presence_of(:name) }
	it { should validate_presence_of(:student_number) }
	it { should validate_presence_of(:faculty) }

end
