require 'spec_helper'

describe Specie do
  it { should validate_presence_of :name }
  it { should ensure_length_of(:name).is_at_least(2) }

  it { should_not allow_value("342342gjdsfh.").for(:name) }

end
