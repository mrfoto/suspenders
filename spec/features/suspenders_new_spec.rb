require 'spec_helper'

describe 'suspending a project' do
  it 'creates a new rails project' do
    directory = FileUtils.pwd
    begin
      FileUtils.mkdir directory + '/tmp'
    rescue Errno::EEXIST => e
    end


    FileUtils.rm_rf directory + '/tmp/dummy'


    ARGV.replace [directory + '/tmp/dummy']
    Suspenders::AppGenerator.start


    expect(File.directory?(directory + '/tmp/dummy')).to be true
  end
end
