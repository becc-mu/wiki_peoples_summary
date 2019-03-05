require 'wiki_api'

describe WikiAPI do
  subject(:wikAPI) { described_class.new }

  it 'should return a page given url' do
    page = subject.ask('john lennon')
    expect(page.title).to eq 'John_Lennon'
  end
end
