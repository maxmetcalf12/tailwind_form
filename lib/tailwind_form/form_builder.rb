# frozen_string_literal: true

module TailwindForm
  class FormBuilder < ActionView::Helpers::FormBuilder
    include TailwindForm::Inputs::Base
    include TailwindForm::Inputs::EmailField
    include TailwindForm::Inputs::TextArea
    include TailwindForm::Inputs::TextField

    delegate :concat, :tag, to: :@template

    def tailwind_label_field(name)
      field_options = { class: 'form__label' }
      label(name, field_options)
    end

    def form_group(name, field_type = :text_field, classes = 'form__group')
      function_name = "#{field_type}_with_tailwind"
      tag.div(class: classes) do
        tailwind_label_field(name) + send(function_name, name, { class: 'form__input' })
      end
    end
  end
end
