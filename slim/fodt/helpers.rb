require 'time'
Asciidoctor::DEFAULT_EXTENSIONS['fodt'] = '.fodt'

module Slim::Helpers

  def include_styles
    if attr? 'odt-styles'
      style = attr 'odt-styles'
    else
      style = 'asciidoctor'
    end

    (document::options[:template_dirs] || []).each do |folder|
      filename = "#{folder}/#{document::backend}/_styles-#{style}.fodt.slim"
      if File.exists?(filename)
      	return Slim::Template.new(filename).render(attributes)
      end
    end
  end

  def xref_text
    str = text || document.references[:ids][attr :refid || target]
    str.tr_s("\n", ' ') if str
  end

end
