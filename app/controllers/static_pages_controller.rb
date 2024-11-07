class StaticPagesController < ApplicationController
  def home
    @title = "Home"
    @nina = "nina"
  end

  def help
  end

  def hello
    # if we are not rendering anything then controller will look for a template named "hello" in static pages
    # is both render and template is present than render from the function will be displayed
    # render html: "hello from static"
  end

  # def about
  # end
end
