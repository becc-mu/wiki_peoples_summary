require 'wiki_api'
describe WikiAPI do
  it 'should return a page given url' do
    page = Wikipedia.find('John Lennon')
    page2 = "https://en.wikipedia.org/wiki/John_Lennon"
    expect(page.title).to eq page2
  end
end
