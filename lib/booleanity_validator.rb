require 'active_model'
require "booleanity_validator/version"

module ActiveModel
  module Validations
    class BooleanityValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        unless [true, false].include? value
          record.errors.add attribute, :blank
        end
      end
    end
  end
end
