require "formular"
require 'formular/builders/bootstrap3'
module Post::Cell
  class New < Trailblazer::Cell
    def vertical_form(model:nil, **options, &block)
      Formular::Builders::Bootstrap3.new(model: model, path: :comment).form(options, &block)
    end

    def inline_form(model:nil, **options, &block)
      Formular::Builders::Bootstrap3Inline.new(model: model, path: :comment).form(options, &block)
    end

    def horizontal_form(model:nil, **options, &block)
      Formular::Builders::Bootstrap3Horizontal.new(model: model, path: :comment).form(options, &block)
    end

  private
    def url
      options[:url] || raise("no action URL!")
    end
  end
end
