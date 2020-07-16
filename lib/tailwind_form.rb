# frozen_string_literal: true

require 'tailwind_form/version'
require 'action_view'
require 'action_pack'
require 'tailwind_form/action_view_extensions/form_helper'

module TailwindForm
  extend ActiveSupport::Autoload

  eager_autoload do
    autoload :FormBuilder
  end
end

require 'tailwind_form/engine' if defined?(Rails)
