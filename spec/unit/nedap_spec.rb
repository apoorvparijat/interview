require 'nedap'
require 'stringio'

describe Nedap do
  it 'should be loaded' do
    Nedap.should_not be_nil
  end

  context '.initialize' do
    it 'should raise error' do
      output = StringIO.new
      expect {
        Nedap.new(output) do
          hello_world!
          puts 'aap'
        end
      }.to raise_error
    end
  end

  context '.hello_world!' do
    it 'should print "Hello World!"' do
      output =  StringIO.new 
      Nedap.new(output).hello_world!
      output.seek(0)
      output.read.strip.should eq('Hello World!')
    end
  end
end
