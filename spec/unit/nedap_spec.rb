require 'nedap'

describe Nedap do
  it 'should be loaded' do
    Nedap.should_not be_nil
  end

  describe '.new' do
    STDOUT.should_receive(:print).with('apoorv')
  end
end
