require 'spec_helper'

describe 'suspending a project' do
  it 'creates a new rails project' do
    expect(File.directory?(suspended_directory)).to be true
  end
end
