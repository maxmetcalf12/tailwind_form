# frozen_string_literal: true

require 'tailwind_form/version'
require 'action_view'
require 'action_pack'
require 'tailwind_form/action_view_extensions/form_helper'

module TailwindForm
  extend ActiveSupport::Autoload

  eager_autoload do
    autoload :FormBuilder
    autoload :FormGroup
    autoload :Components
    autoload :Inputs
  end

  class << self
    def eager_load!
      super
      TailwindForm::Components.eager_load!
      TailwindForm::Inputs.eager_load!
    end
  end
end

require 'tailwind_form/engine' if defined?(Rails)
