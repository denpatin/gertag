Tagger for German language
==========================

Based on Stanford PoS Tagger.

## How to Run

1. `git clone https://github.com/denpatin/gertag.git && cd gertag`
* `bundle install`
* `wget http://nlp.stanford.edu/software/stanford-postagger-full-2015-12-09.zip`
* `unzip stanford-postagger-full-2015-12-09.zip`
* `mv stanford-postagger-full-2015-12-09 stanford-postagger`
* `rm stanford-postagger-full-2015-12-09.zip`
* `rerun 'rackup'`
* Go to `http://localhost:9292`

## To Be Done

- [x] Test tagger on a simple view
- [ ] Automatize installation process
- [ ] Restrict the text to input
- [ ] Translate german_tagset.txt into several languages
- [ ] Enable users to switch languages without reloading the page
- [ ] Make input and result on one page
- [ ] Enable users to download the results
- [ ] Add some statistics on the input text
- [ ] Beautify the output
- [ ] Run on the default 80 port
- [ ] Run application as a project for [dpat.in](http://dpat.in)
