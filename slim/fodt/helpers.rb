require 'time'
Asciidoctor::DEFAULT_EXTENSIONS['fodt'] = '.fodt'

module Helpers
  def self.capture_output(*args, &block)
    Proc.new { block.call(*args) }
  end
end
