require_relative 'spec_helper.rb'

describe 'basics::webapp' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs git' do
    expect(chef_run).to install_package('git')
  end

  it 'creates a directory with the default action' do
      expect(chef_run).to create_directory('/srv/mywebsite')
  end

  it 'Checkout repository to correct folder' do
    expect(chef_run).to checkout_git('/srv/mywebsite')
  end

end
