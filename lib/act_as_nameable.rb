require 'act_as_nameable/version'
require 'active_support'
require 'active_record'

module ActAsNameable
  extend ActiveSupport::Concern

  def self.root
    require 'pathname'
    Pathname.new(File.expand_path '../..', __FILE__)
  end

  module ClassMethods
    def act_as_nameable
      attr_accessible :first_name, :surname
    end
  end
end

ActiveRecord::Base.send :include, ActAsNameable
