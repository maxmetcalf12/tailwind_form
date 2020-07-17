# frozen_string_literal: true

module TailwindForm
  module Inputs
    module TextArea
      extend ActiveSupport::Concern
      include Base

      included do
        tailwind_field(:text_area)
      end
    end
  end
end
