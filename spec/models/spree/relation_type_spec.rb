RSpec.describe Spree::RelationType, type: :model do
  context 'relations' do
    it { is_expected.to have_many(:relations).dependent(:destroy) }
  end

  context 'validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:applies_to) }
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }

    it 'does not create duplicate names' do
      create(:product_relation_type, name: 'Gears')
      expect {
        create(:product_relation_type, name: 'gears')
      }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end