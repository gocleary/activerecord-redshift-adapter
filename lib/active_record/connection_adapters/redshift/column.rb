# frozen_string_literal: true

module ActiveRecord
  module ConnectionAdapters
    class RedshiftColumn < Column # :nodoc:
      delegate :oid, :fmod, to: :sql_type_metadata

      # Required for Rails 6.1, see https://github.com/rails/rails/pull/41756
      mattr_reader :array, default: false
      alias array? array

      # Rails 8.1.2 changed Column#initialize to expect cast_type as the 2nd argument.
      # Previously the signature was (name, default, sql_type_metadata, null, ...).
      def initialize(name, cast_type, default, sql_type_metadata = nil, null = true, default_function = nil, **)
        super(name, cast_type, default, sql_type_metadata, null, default_function)
      end
    end
  end
end
