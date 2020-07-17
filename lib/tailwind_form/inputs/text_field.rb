# frozen_string_literal: true

module TailwindForm
  module Inputs
    module TextField
      extend ActiveSupport::Concern
      include Base

      included do
        tailwind_field(:text_field)
      end
    end
  end
end
