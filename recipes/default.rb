node.set['build_essential']['compiletime'] = true
node.set['java']['jdk_version'] = '8'
node.set['java']['accept_license_agreement'] = true

include_recipe 'build-essential'
include_recipe 'java'
include_recipe 'rbenv'
include_recipe 'rbenv::ruby_build'

rubies = ['jruby-1.7.26', 'jruby-9.1.5.0']

rubies.each do |ruby|
  rbenv_ruby ruby do
    ruby_version ruby
    action :install
  end

  rbenv_gem 'mini_magick' do
    ruby_version ruby
  end
end

package 'imagemagick'
package 'graphicsmagick'

