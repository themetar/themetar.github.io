# Outputs Kramdown IALs (Inline Attribute Lists) for link elements that
# set target="_blank" and rel="noopener" on the outputed html <a> element 
# 
# Usage: Put `{% default_link_attributes %}` after a markdown link
# or link definition
# 
module Jekyll
  class DefaultLinkAttributesTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      "{: target=\"_blank\" rel=\"noopener\" }"
    end
  end
end

Liquid::Template.register_tag('default_link_attributes', Jekyll::DefaultLinkAttributesTag)

