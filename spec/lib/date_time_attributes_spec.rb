require 'spec_helper'
require 'date_time_attributes'
require 'active_support/core_ext/hash/except'

describe DateTimeAttributes do

  let (:params) {{
    'name' => 'Russell',
    'start(1i)' => '2013',
    'start(2i)' => '9',
    'start(3i)' => '16',
    'start(4i)' => '13',
    'start(5i)' => '31'
  }}

  let (:attrs) { DateTimeAttributes.new(params, :start) }

  it 'converts rails generated datetime attributes' do
    expect(attrs.converted).to eq ({"name"=>"Russell", :start=>Time.new(2013, 9, 16, 13, 31)})
  end

end
