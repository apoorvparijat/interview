class Proc
  undef_method :puts
end

class A < BasicObject
  def initialize &block
    hello_world
    #yield if ::Kernel.block_given? 
    ::Proc.new(&block).call
  end

  def hello_world
    stdout 'hello world'
  end

  private

  def stdout *args
    ::Kernel.puts args
  end
end


A.new do
  puts 'test'
  puts self.instance_method(:puts)
end
