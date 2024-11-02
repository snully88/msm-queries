Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
end

  get("/directors", { :controller => "directors", :action => "index"})
end
  get("/directors/:the_id", { :controller => "directors", :action => "show"})
