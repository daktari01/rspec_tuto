require './person'
# Old style example
describe Person do
  it 'create a new Person with first and last name' do
    person = Person.new 'John', 'Smith'

    expect(person).to have_attributes(first_name: 'John')
    expect(person).to have_attributes(last_name: 'Smith')
  end
end

# Shorter precise example
describe Person.new 'John', 'Smith' do
  it { is_expected.to have_attributes(first_name: 'John') }
  it { is_expected.to have_attributes(last_name: 'Smith') }
end
