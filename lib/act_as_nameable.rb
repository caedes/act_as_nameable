require 'act_as_nameable/version'
require 'active_support'
require 'active_record'

module ActAsNameable
  extend ActiveSupport::Concern

  module ClassMethods
    def act_as_nameable
      attr_accessible :first_name, :surname
    end
  end
end

ActiveRecord::Base.send :include, ActAsNameable
