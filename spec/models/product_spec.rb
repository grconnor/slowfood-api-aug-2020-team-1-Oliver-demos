require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :price }
  end

  describe 'Validation' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :price }
  end

  describe 'Factory' do
    it "should have a valid factory" do
      expect(create(:product)).to be_valid
    end
  end
  it 'should have a valid Factory' do
    expect(create(:product)).to be_valid
  end

  describe 'Database table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :price }
    it { is_expected.to have_db_column :description }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :price }
  end
end
