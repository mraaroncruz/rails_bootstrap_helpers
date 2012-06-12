module RailsBootstrapHelpers
  module LayoutHelper

    def striped_table(id=nil, &block)
      content = capture(&block)
      content_tag(:table, content, id: id, class: "table table-bordered table-striped")
    end

    def pills(&block)
      list_builder "nav-pills", &block
    end

    def tabs(&block)
      list_builder "nav-tabs", &block
    end

    def stacked_tabs(&block)
      list_builder "nav-tabs", "nav-stacked", &block
    end

    def stacked_pills(&block)
      list_builder "nav-pills","nav-stacked", &block
    end

    def bootstrap_link_to(title, link, color, options = {})
      btn_class = bootstrap_button_class(color).concat(options[:class] || "")
      raw(link_to title, link, { class: btn_class }.merge(options))
    end

    def bootstrap_button_class(color = nil)
      case color
        when :red then "btn btn-danger"
        when :blue then "btn btn-primary"
        when :light_blue then "btn btn-info"
        when :green then "btn btn-success"
        when :yellow then "btn btn-warning"
        else "btn"
      end
    end

    def bootstrap_label(text, type)
      content_tag(:span, text, class: "label #{type.to_s}")
    end

    def conditional_bootstrap_label(condition, text, success = :success, failure = :important)
      condition ? bootstrap_label(text, success) : bootstrap_label(text, failure)
    end

    private

    def list_builder(*classes, &block)
      content = capture(&block)
      content_tag(:ul, content, class: "nav #{classes.join(' ')}")
    end

  end
end
