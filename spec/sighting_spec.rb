require 'spec_helper'

describe Sighting do
  it { should belong_to :specie }
  it { should belong_to :region }
  it { should validate_presence_of :date }
  it { should allow_value("2011-05-12").for(:date) }
end
