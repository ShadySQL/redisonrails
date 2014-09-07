class WelcomeController < ApplicationController
  def index
      views = $redis.get('views').to_i()
      views += 1
      $redis.set('views', views)
      @page_views = views
  end
end
