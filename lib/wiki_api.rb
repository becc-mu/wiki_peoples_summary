require 'askwiki'
# retrieves data from the API
class WikiAPI
  def ask(query)
    query_encoded = URI.encode(query)
    request_url = "http://#{@language}.wikipedia.org/w/api.php?action=parse&page=#{query_encoded}&format=json&prop=text&section=0&redirects"
    text = ''
    OpenURI.allow_redirect do
      open(request_url) do |file|
        text = JSON.parse(file.read)['parse']['text'].first[1]
                   .gsub(%r{</?[^>]+>}, '') # strip tags
                   .gsub(/[[:space:]]+/, ' ') # strip whitespace
                   .gsub(/&#[0-9]+;/, '') # strip encoded
                   .gsub(/\[[0-9]+\]/, '') # strip referencing
      end
    end
    text
  end
end

def self.ask(query, lang = 'en')
  ask_obj = Askwiki.new lang
  ask_obj.ask query
end
