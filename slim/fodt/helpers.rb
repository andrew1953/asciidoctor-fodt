require 'time'
Asciidoctor::DEFAULT_EXTENSIONS['fodt'] = '.fodt'

module Slim::Helpers

  def include_styles
    if attr? 'odt-styles'
      style = attr 'odt-styles'
    else
      style = 'asciidoctor'
    end

    Slim::Template.new("slim/fodt/_styles-#{style}.fodt.slim").render
  end

end