module Kernel
  remove_method :puts
  class << self
    remove_method :puts
  end
end

class Object
  include Kernel
end

class A < BasicObject
  def initialize
    hello_world
    yield if ::Kernel.block_given? 
    #stdout &block.source
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
end
