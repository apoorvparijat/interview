class Nedap < BasicObject
  def initialize &block
    instance_eval &block if ::Kernel.block_given?
  end

  def hello_world!
    # ::Kernel.puts 'Hello World!'
    ::IO.new(2).puts 'Hello World!'
  end
end

Nedap.new do
  hello_world!
  puts 'aap'
end
