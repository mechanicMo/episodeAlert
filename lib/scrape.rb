require 'nokogiri'
require 'open-uri'
require 'csv'
require 'debugger'

module Scrape
  
  # def to_csv(name, data)
  #   CSV.open("lib/data/#{name}.csv", 'w') do |csv|
  #     data.each { |name| csv << [name] }
  #   end
  # end

  # def read_csv(name)
  #   CSV.open("lib/data/#{name}.csv") do |csv|

  #   end
  # end

  def open_link(url)
    doc = Nokogiri::HTML(open(url))
  end

  def get_imdb_link(doc)
    linkify(doc.search('.result_text').first.children[1].attributes.to_s)
  end

  def get_next_episode(doc)
    linkify(doc.search('.next-episode').children[1].children[1].attributes.to_s)
  end

  def extract_episode(url)
    doc = open_link(get_next_episode(open_link(get_imdb_link(open_link(url)))))
    season_episode = doc.search('.tv_header').children[3].children.text.split.join(" ")
    date = doc.search('.header').children[3].children.text
    episode_name = doc.search('.header').children[1].children.text
    {season_episode: season_episode, date: date, episode_name: episode_name}
  end

  def linkify(link)
    y = /\/title.*"/.match(link)
    z = y[0].split("")
    z.pop
    a = z.join("")
    "http://www.imdb.com#{a}"
  end

end

