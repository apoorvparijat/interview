require 'nedap'
require 'stringio'

describe Nedap do
  it 'should be loaded' do
    Nedap.should_not be_nil
  end

  describe '.hello_world!' do
    it 'should write "Hello World!"' do
      output =  StringIO.new 
      Nedap.new(output).hello_world!
      output.seek(0)
      output.read.strip.should eq('Hello World!')
    end
  end
end
