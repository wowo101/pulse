class FeedsController < ApplicationController
  
  require 'rss'
  
  def index
  end

  def show
    @feed_url = 'http://pipes.yahoo.com/pipes/pipe.run?_id=73ab124fcbf18ce20d04b50d00977546&_render=rss'
    @feed = RSS::Parser.parse(open(@feed_url).read, false).items
    @feed.each do |item|
      if item.link.match('twitter')
        item.source = 'twitter'
      elsif item.link.match('facebook')
        item.source = 'facebook'
      elsif item.link.match('calendar')
        item.source = 'google'
      elsif item.link.match('betahaus.de')
        item.source = 'wordpress'
      end
    end
  end

end
