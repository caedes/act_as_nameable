require 'spec_helper'

class TestRecord < ActiveRecord::Base; end

describe TestRecord do
  subject { TestRecord }

  it { should_not respond_to :root }
  it { should respond_to :act_as_nameable }
end
