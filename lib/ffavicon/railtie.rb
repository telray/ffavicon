module FFavicon
  class Railtie < Rails::Railtie
    rake_tasks do
      load "ffavicon/tasks.rake"
    end

    initializer "ffavicon.view_helpers" do
      ActionView::Base.send :include, FFavicon::ViewHelpers
    end
  end
end