# frozen_string_literal: true

module TailwindForm
  module Components
    extend ActiveSupport::Autoload

    autoload :Labels

    include Labels
  end
end
