module Scrollreveal
  module Helper
    
    def scroll_reveal(opts={})
      content_tag(:div,opts[:content],'data-scrollReveal' => opts[:animation],:class => opts[:class])
    end
  end
end

