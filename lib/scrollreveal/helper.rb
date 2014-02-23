module Scrollreveal
  module Helper
    
    def scroll_reveal(opts={},&block)
      content_tag(:div,opts[:content],'data-scrollReveal' => opts[:animation],:class => opts[:class],&block)
    end
  end
end

