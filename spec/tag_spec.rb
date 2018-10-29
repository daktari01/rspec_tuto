describe 'How to run specific Examples with tags' do
  it 'is a slow test', slow: true do
    sleep 2
    puts 'This test is slow'
  end

  it 'is a fast test', fast: true do
    puts 'This test is fast'
  end
end
