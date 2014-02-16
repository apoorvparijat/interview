class Proc
  def get_source
    line = self.source_location
    file = File.open(__FILE__, 'r')
    file.seek(line)
    code = file.readlines
    if code =~ /\A\s*(?:lambda|proc)(?:\s*\{|\s+do).*(?:\}|end)\s*\Z/
      @source = $_
    elsif @code =~ /\A\s*(?:\{|do).*(?:\}|end)\s*\Z/
      @proc = eval "lambda #{@code}"
    else
      @proc = eval "lambda { #{@code} }"
    end
  end
end

x = lambda { 
puts 'bing'
 }
puts x.get_source
