# Direct sub class of [BasicObject]. It is devoid of any method added by [Kernel] module
#
# @example
#
#   Nedap.new do
#     hello_world!
#     puts 'aap'
#   end
class Nedap < BasicObject

  # Method used to initialize the [Nedap] class instance
  # 
  # @param [IO, StringIO] output Reference to the output stream to be used
  # @param [Proc] &block Block of code to be evaluated with reference to this instance
  def initialize(output = ::IO.new(2), &block)
    @output = output
    instance_eval &block if ::Kernel.block_given?
  end

  # Uses output stream to print 'Hello World!'
  def hello_world!
    @output.puts 'Hello World!'
  end
end

