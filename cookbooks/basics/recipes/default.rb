execute "apt-get-update" do
  command "apt-get update"
end

package 'vim'
package 'bash-completion'
#package git for clone
package 'git'
