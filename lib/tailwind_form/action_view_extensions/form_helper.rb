# frozen_string_literal: true

module TailwindForm
  module ActionViewExtensions
    # This module creates TailwindForm wrappers around the default form_with
    # and form_for methods
    #
    # Example:
    #
    #   tailwind_form_for @user do |f|
    #     f.text_field :name
    #   end
    #
    # Example:
    #
    #   tailwind_form_with model: @user do |f|
    #     f.text_field :name
    #   end
    module FormHelper
      def tailwind_form_with(options = {}, &block)
        options.reverse_merge!(builder: TailwindForm::FormBuilder)

        form_with(**options, &block)
      end
    end
  end
end

ActiveSupport.on_load(:action_view) do
  include TailwindForm::ActionViewExtensions::FormHelper
end
