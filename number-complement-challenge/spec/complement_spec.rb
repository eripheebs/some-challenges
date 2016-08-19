require 'complement'

describe '#get_complement' do

  it 'returns the bitwise inversion of the number' do
    expect(get_complement(50)).to eq 13
  end

end
