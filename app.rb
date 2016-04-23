# encoding: utf-8

require 'sinatra'
require 'slim'

# Tagset details: http://isocat.org/rest/dcs/376

class GermanTaggerApp < Sinatra::Base

  set :server, :thin

  jpath = '../'
  jmem = '-mx300m'
  jcl = "-classpath #{jpath}/stanford-postagger.jar:#{jpath}/lib/*"
  jtag = 'edu.stanford.nlp.tagger.maxent.MaxentTagger'
  jmod = "-model #{jpath}/models/german-fast.tagger"
  jenc = '-encoding UTF-8'
  jformat = '-outputFormat tsv'

  get '/' do
    slim :index, layout: :main
  end

  post '/' do
    input = "inputs/#{Time.now.to_i}.txt"
    File.write input, params[:text]

    jresult = %x( java #{jmem} #{jcl} #{jtag} #{jmod} #{jenc} -textFile #{input} #{jformat} )

    input_array = jresult.scan /(.+)\t(.+)/
    tags_hash = File.open('german_tagset.txt').read.scan(/(.+)\t(.+)/).to_h
    
    @output_array = input_array.map { |dic| [ dic.first, tags_hash[dic.last] ] }
    
    slim :result, layout: :main
  end
end
