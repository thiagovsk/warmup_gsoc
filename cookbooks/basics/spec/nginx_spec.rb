require_relative 'spec_helper.rb'

describe 'basics::nginx' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs nginx' do
    expect(chef_run).to install_package('nginx')
  end

  it 'Execute nginx service' do
    expect(chef_run).to enable_service('nginx')
  end

  it 'creates a template webapp.conf' do
    expect(chef_run).to create_template('/etc/nginx/conf.d/webapp.conf').with(
      user:   'root',
      group:  'root',
    )
  end

  it 'creates a template webapp.conf and restart nginx' do
    resource = chef_run.template('/etc/nginx/conf.d/webapp.conf')
    expect(resource).to notify('service[nginx]').to(:restart)
  end
end
