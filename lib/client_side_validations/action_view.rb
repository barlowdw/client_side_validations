# frozen_string_literal: true

module ClientSideValidations
  module ActionView
    module Helpers
    end
  end
end

require 'client_side_validations/core_ext'
require 'client_side_validations/action_view/form_helper'
require 'client_side_validations/action_view/form_builder'

ActiveSupport.on_load :action_view do
  ActionView::Base.send(:include, ClientSideValidations::ActionView::Helpers::FormHelper)
  # ActionView::Base.send(:include, ClientSideValidations::ActionView::Helpers::FormTagHelper)
  ActionView::Helpers::FormBuilder.send(:prepend, ClientSideValidations::ActionView::Helpers::FormBuilder)
end
