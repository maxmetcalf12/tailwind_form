# frozen_string_literal: true

module TailwindForm
  class FormBuilder < ActionView::Helpers::FormBuilder
    def tailwind_label_field(name)
      field_options = { class: 'form__label' }
      label(name, field_options)
    end

    def tailwind_text_field(name)
      field_options = { class: 'form__input' }
      @template.content_tag :div, class: 'form__inputGroup' do
        text_field(name, field_options)
      end
    end

    def tailwind_text_area(name)
      field_options = { class: 'form__input' }
      @template.content_tag :div, class: 'form__inputGroup' do
        text_area(name, field_options)
      end
    end

    def form_group(name, classes = 'form__group', field_type = :text_field)
      function_name = "tailwind_#{field_type}"
      @template.content_tag :div, class: classes do
        tailwind_label_field(name) + send(function_name, name)
      end
    end
  end
end
