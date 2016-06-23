require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('tree') do
    it { should be_installed }
  end
end
