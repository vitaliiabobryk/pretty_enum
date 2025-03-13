# frozen_string_literal: true

require_relative 'pretty_enum/version'

module PrettyEnum
  def self.extended(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def pretty_enum(attribute)
      raise NoMethodError, "Enum `#{attribute}` is not defined for #{self}" unless respond_to?(attribute)

      define_singleton_method("pretty_#{attribute}") do
        send(attribute).each_with_object({}) do |(key, _value), hash|
          hash[key] = key.to_s.split('_').map(&:capitalize).join(' ')
        end
      end
    end
  end
end
