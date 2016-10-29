#
# Copyright 2016, Noah Kantrowitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'spec_helper'

describe RuboCop::Cop::Chef::FileMode do
  subject(:cop) { described_class.new }

  it 'registers an offense when setting a mode using a decimal integer' do
    expect_violation(<<-RUBY)
      file '/foo' do
        owner 'root'
        mode 644
             ^^^ Use strings for file modes
      end
    RUBY
  end

  it 'registers an offense when setting a mode using a octal integer' do
    expect_violation(<<-RUBY)
      file '/foo' do
        owner 'root'
        mode 0644
             ^^^^ Use strings for file modes
      end
    RUBY
  end

  it 'does not register an offense when setting a mode using a single quoted string' do
    expect_no_violations(<<-RUBY)
      file '/foo' do
        owner 'root'
        mode '644'
      end
    RUBY
  end

  it 'does not register an offense when setting a mode using a double quoted string' do
    expect_no_violations(<<-RUBY)
      file '/foo' do
        owner 'root'
        mode "644"
      end
    RUBY
  end

  include_examples 'autocorrect',
                   'mode 644',
                   'mode "644"'

  include_examples 'autocorrect',
                   'mode 0644',
                   'mode "644"'

  include_examples 'autocorrect',
                   'mode 00644',
                   'mode "644"'

  include_examples 'autocorrect',
                   'mode 1644',
                   'mode "1644"'

  include_examples 'autocorrect',
                   'mode 01644',
                   'mode "1644"'
end
