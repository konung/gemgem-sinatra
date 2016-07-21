require "formular"
#require 'formular/builders/bootstrap3'
module Post::Cell
  class New < Trailblazer::Cell
    include Formular::Helper

  private
    def vertical_form(model, url, **options, &block)
      options[:builder] = :bootstrap3
      form(model, url, options, &block)
      #Formular::Builders::Bootstrap3.new(model: model, prefix_path: :comment).form(options, &block)
    end

    def inline_form(model, url, **options, &block)
      options[:builder] = :bootstrap3_inline
      form(model, url, options, &block)

      #Formular::Builders::Bootstrap3Inline.new(model: model, prefix_path: :comment).form(options, &block)
    end

    def horizontal_form(model, url, **options, &block)
      options[:builder] = :bootstrap3_horizontal
      form(model, url, options, &block)
      #Formular::Builders::Bootstrap3Horizontal.new(model: model, prefix_path: :comment).form(options, &block)
    end

    def options_array
      [[1, "Option 1"], [2, "Option 2"], [3, "Option 3"]]
    end

    def roles_array
      [[nil, 'Choose a role'], [1, "Admin"], [2, "Owner"], [3, "Maintainer"]]
    end

    def url
      options[:url] || raise("no action URL!")
    end
  end
end
