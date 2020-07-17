# frozen_string_literal: true

module TailwindForm
  module Inputs
    module Base
      extend ActiveSupport::Concern

      class_methods do
        def tailwind_field(field_name)
          define_method "#{field_name}_with_tailwind" do |name, options = {}|
            @template.content_tag :div, class: 'form__inputGroup' do
              send(field_name, name, options)
            end
          end
        end
      end
    end
  end
end
