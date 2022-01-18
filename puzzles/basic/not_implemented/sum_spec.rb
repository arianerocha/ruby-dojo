require './sum'

RSpec.describe 'sum' do
  describe 'when using the default "sum" method' do
    it '1 and 1 should return 2' do
      expect(sum(1, 1)).to eq(2)
    end

    it '0 and 0 should return 0' do
      expect(sum(0, 0)).to eq(0)
    end
  end

  describe 'when using the "sum_with_defaults" method' do
    it '1 and 1 should return 2' do
      expect(sum_with_defaults(1, 1)).to eq(2)
    end

    it '1 and nothing should return 1' do
      expect(sum_with_defaults(1)).to eq(1)
    end

    it 'nothing and nothing should return 0' do
      expect(sum_with_defaults).to eq(0)
    end
  end
end

