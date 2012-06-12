module RailsBootstrapHelpers
  module LayoutHelper

    def striped_table(id=nil, &block)
      content = capture(&block)
      content_tag(:table, content, id: id, class: "bordered-table zebra-striped")
    end

    def bordered_table(id=nil, &block)
      content = capture(&block)
      content_tag(:table, content, id: id, class: "bordered-table")
    end

    def condensed_table(id=nil, &block)
      content = capture(&block)
      content_tag(:table, content, id: id, class: "condensed-table")
    end

    def bootstrap_link_to(title, link, color, options = {})
      btn_class = bootstrap_button_class(color).concat(options[:class] || "")
      raw(link_to title, link, { class: btn_class }.merge(options))
    end

    def bootstrap_button_class(color = nil)
      case color
        when :red then "btn danger"
        when :blue then "btn primary"
        when :light_blue then "btn info"
        when :green then "btn success"
        else "btn"
      end
    end

    def bootstrap_label(text, type)
      content_tag(:span, text, class: "label #{type.to_s}")
    end

    def conditional_bootstrap_label(condition, text, success = :success, failure = :important)
      condition ? bootstrap_label(text, success) : bootstrap_label(text, failure)
    end
  end
end
