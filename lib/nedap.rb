class Nedap < BasicObject
  def initialize output = ::IO.new(2), &block
    @output = output
    instance_eval &block if ::Kernel.block_given?
  end

  def hello_world!
    # ::Kernel.puts 'Hello World!'
    @output.puts 'Hello World!'
  end
end


__END__
Nedap.new do
  hello_world!
  puts 'aap'
end
