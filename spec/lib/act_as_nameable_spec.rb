require 'spec_helper'

class TestRecord < ActiveRecord::Base; end

describe TestRecord do
  it { should respond_to :act_as_nameable }
end
