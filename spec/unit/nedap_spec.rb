require 'nedap'

describe Nedap do
  it 'should be loaded' do
    Nedap.should_not be_nil
  end

  describe '.initialize' do
    Nedap.new
  end
end
