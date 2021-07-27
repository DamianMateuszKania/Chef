# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe port(80) do
  it { should be_listening }
end

describe command('cur localhost') do
  its(:stdout) {should match (/Hello, world!/) } #im checking do I can see my apache website :) 
end
