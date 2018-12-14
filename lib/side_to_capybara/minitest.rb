module SideToCapybara

  class Minitest < Base
    def open
      "visit('#{target}')"
    end

    def double_click
      case selector_type
      when 'css'
        "find('#{selector}').double_click"
      when 'id'
        "find('##{selector}').double_click"
      when 'xpath'
        "find('#{selector}').double_click"
      when 'name'
        "find('[name=\"#{selector}\"]').double_click"
      end
    end

    def click
      case selector_type
      when 'css'
        "find('#{selector}').click"
      when 'id'
        "find('##{selector}').click"
      when 'xpath'
        "find('#{selector}').click"
      when 'name'
        "find('[name=\"#{selector}\"]').click"
      when 'linkText'
        "click_link_or_button('#{selector}')"
      end
    end

    def assert_text
      "assert_selector('#{selector}', text: '#{value}')"
    end
  end

end
