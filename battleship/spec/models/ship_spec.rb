require 'rails_helper'

describe Ship do

  subject { create(:ship, :valid)}

  context 'when not valid' do
    it 'validates numericality of coordinates' do 
      expect(build(:ship, start_row_index: 9)).to_not be_valid
      expect(build(:ship, start_col_index: 9)).to_not be_valid
      expect(build(:ship, end_row_index: 9)).to_not be_valid
      expect(build(:ship, end_col_index: 9)).to_not be_valid
    end
  end

  describe '#coordinates' do
    it 'returns ship location coordinates' do 
      expect(subject.coordinates[0][0]).to eq(subject.start_row_index)
      expect(subject.coordinates[0][1]).to eq(subject.start_col_index)
    end
  end
end