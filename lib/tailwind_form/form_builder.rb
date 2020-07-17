# frozen_string_literal: true

module TailwindForm
  class FormBuilder < ActionView::Helpers::FormBuilder
    include TailwindForm::FormGroup
    include TailwindForm::Components

    include TailwindForm::Inputs::Base
    include TailwindForm::Inputs::EmailField
    include TailwindForm::Inputs::TextArea
    include TailwindForm::Inputs::TextField

    delegate :concat, :tag, to: :@template
  end
end
