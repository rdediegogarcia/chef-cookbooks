require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package ('httpd') do
     it { should be_installed }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe command('curl localhost') do
     its(:exit_status) { should eq 0 }
  end

end
