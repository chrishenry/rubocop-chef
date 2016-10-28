require 'pathname'
require 'yaml'

require 'rubocop'

require 'rubocop/chef'
require 'rubocop/chef/version'
require 'rubocop/chef/inject'
# require 'rubocop/chef/top_level_describe'
# require 'rubocop/chef/wording'
# require 'rubocop/chef/util'
# require 'rubocop/chef/language'
# require 'rubocop/chef/language/node_pattern'
# require 'rubocop/chef/spec_only'

RuboCop::Chef::Inject.defaults!

# cops
# require 'rubocop/cop/rspec/any_instance'
# require 'rubocop/cop/rspec/be_eql'
# require 'rubocop/cop/rspec/describe_class'
# require 'rubocop/cop/rspec/describe_method'
# require 'rubocop/cop/rspec/described_class'
# require 'rubocop/cop/rspec/empty_example_group'
# require 'rubocop/cop/rspec/example_length'
# require 'rubocop/cop/rspec/example_wording'
# require 'rubocop/cop/rspec/expect_actual'
# require 'rubocop/cop/rspec/file_path'
# require 'rubocop/cop/rspec/focus'
# require 'rubocop/cop/rspec/hook_argument'
# require 'rubocop/cop/rspec/implicit_expect'
# require 'rubocop/cop/rspec/instance_variable'
# require 'rubocop/cop/rspec/leading_subject'
# require 'rubocop/cop/rspec/let_setup'
# require 'rubocop/cop/rspec/message_chain'
# require 'rubocop/cop/rspec/message_expectation'
# require 'rubocop/cop/rspec/multiple_describes'
# require 'rubocop/cop/rspec/multiple_expectations'
# require 'rubocop/cop/rspec/named_subject'
# require 'rubocop/cop/rspec/nested_groups'
# require 'rubocop/cop/rspec/not_to_not'
# require 'rubocop/cop/rspec/subject_stub'
# require 'rubocop/cop/rspec/verified_doubles'
require 'rubocop/cop/chef/attribute_keys'
