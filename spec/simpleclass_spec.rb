require './simple_class'

describe SimpleClass do
  before(:each) do
    @simple_class = SimpleClass.new
  end

  before(:all) do
    puts 'I must run first'
  end

  after(:each) do
    puts 'Done running this example'
  end

  after(:all) do
    puts 'I always run last'
  end

  it 'should have an initial method' do
    expect(@simple_class).to_not be_nil
    @simple_class.message = 'Something else ...'
  end

  it 'should be able to change its message' do
    @simple_class.update_message('a new message')
    expect(@simple_class.message).to_not be 'howdy'
  end
end
