require_relative 'spec_helper.rb'

describe 'basics::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'Execute apt-get update' do
    expect(chef_run).to run_execute('apt-get update')
  end

  it 'installs vim' do
    expect(chef_run).to install_package('vim')
  end

  it 'installs bash-completion' do
    expect(chef_run).to install_package('bash-completion')
  end

end
