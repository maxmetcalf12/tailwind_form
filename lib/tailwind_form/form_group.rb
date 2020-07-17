# frozen_string_literal: true

module TailwindForm
  module FormGroup
    extend ActiveSupport::Concern

    def form_group(name, field_type = :text_field, classes = 'form__group')
      function_name = "#{field_type}_with_tailwind"
      tag.div(class: classes) do
        tailwind_label_field(name) + send(function_name, name, { class: 'form__input' })
      end
    end
  end
end
