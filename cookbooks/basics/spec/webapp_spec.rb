require_relative 'spec_helper.rb'

describe 'basics::webapp' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'creates a directory with the default action' do
      expect(chef_run).to create_directory('/srv/mywebsite')
  end

  it 'Execute clone' do
    expect(chef_run).to run_execute('cd /srv/mywebsite && git clone https://github.com/thiagovsk/static_site.git .')
  end

end
