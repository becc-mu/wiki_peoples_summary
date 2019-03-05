# Wikipedia People's Summary

Wikipedia People's Summary takes search from user and fetches article from Wikipeda page using api. The app is built with Ruby and used askwiki gem.
 
## How to use

1. Clone repo to your local machine git clone https://github.com/becc-mu/wiki_peoples_summary.git
2.  Initialise Ruby with Bundler, `bundle init` (if you don't have bundle)

3. Run `gem install bundle` to install dependencies

4. When installing completed `run bundle`

## How to use
* You should be able to use any of your preferred REPL program `irb` or `pry`

run `ruby bin/askwiki ` on a commandline/terminal

## User Story

```As a pop culture enthusiast,
I would like to get brief summaries of famous people
so that I can learn about significant details of their lives.
```
## ACCEPTANCE CRITERIA

The app is a command line application
The app uses the MediaWikipedia API (https://en.wikipedia.org/w/api.php) to retrieve information
The app takes the name of a famous person as input
The app outputs the values from the following fields:
- Born
- Died (if this field exists)
- Spouses (if this field exists)
- The main summary of the article
- Example Queries

# My approach
I started this project with JavaScript as I though it is suitable for frontend web development as well as best suited for http request, soon found parsing Wikipedia api json not was easy. Therefore, I switched using Ruby and was not able to finish to acceptable format.

## Known Issues

If I had more time, I would have added formatted fields output of the values. The output of the page is not formatted.
