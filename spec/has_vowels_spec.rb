require './has_vowels'

describe StringAnalyzer do
  context 'With valid input' do
    it 'should detect when a string contains vowels' do
      sa = StringAnalyzer.new
      test_string = 'uuuu'
      expect(sa.has_vowels?(test_string)).to be true
    end
    it 'should detect when a string does not contain vowels' do
      sa = StringAnalyzer.new
      test_string = 'bcdfg'
      expect(sa.has_vowels?(test_string)).to be false
    end
  end
end

# Equality matchers
describe 'An example of the equality Matchers' do
  it 'should show how equality matches work' do
    a = 1
    b = 2
    c = 3
    d = 'test string'
    expect(b).to be > a
    expect(a).to be >= a
    expect(a).to be < b
    expect(b).to be <= b
    expect(c).to be_between(1, 3).inclusive
    expect(b).to be_between(1, 3).exclusive
    expect(d).to match(/TEST/i)
  end
end

# Class/Type matchers
describe 'An example of class/type matchers' do
  it 'should show how class/type matchers work' do
    x = 1
    y = 3.14
    z = 'test string'
    expect(x).to be_instance_of Fixnum
    expect(y).to be_kind_of Numeric
    expect(z).to respond_to(:length)
  end
end

# true/false matchers
describe 'An example of the true/false matchers' do
  it 'should show h how true/false matchers work' do
    x = true
    y = false
    z = nil
    a = 'test string'
    expect(x).to be true
    expect(y).to be false
    expect(a).to be_truthy
    expect(z).to be_falsey
    expect(z).to be_nil
  end
end

# Error matchers
describe 'An example of the error matchers' do
  it 'should show how the error matchers work' do
    expect { 1 / 0 }.to raise_error(ZeroDivisionError)
    expect { 1 / 0 }.to raise_error('divided by 0')
    expect { 1 / 0 }.to raise_error('divided by 0', ZeroDivisionError)
  end
end
