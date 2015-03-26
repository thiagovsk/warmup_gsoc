require_relative 'spec_helper.rb'

describe 'basics::nginx' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs nginx' do
    expect(chef_run).to install_package('nginx')
  end
  it 'Execute nginx service' do
    expect(chef_run).to enable_service('nginx')
  end
end
