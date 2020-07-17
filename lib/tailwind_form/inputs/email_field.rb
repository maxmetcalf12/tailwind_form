# frozen_string_literal: true

module TailwindForm
  module Inputs
    module EmailField
      extend ActiveSupport::Concern
      include Base

      included do
        tailwind_field(:email_field)
      end
    end
  end
end
