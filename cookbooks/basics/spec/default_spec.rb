require 'chefspec'
ChefSpec::Coverage.start!
describe 'basics::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs vim' do
    expect(chef_run).to install_package('vim')
  end
  it 'installs bash-completion' do
    expect(chef_run).to install_package('bash-completion')
  end
end
