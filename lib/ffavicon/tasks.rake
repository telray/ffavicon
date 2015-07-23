require 'favicon_maker'

namespace :ffavicon do
  task :generate do
    FaviconMaker.generate do
      setup do
        template_dir  Rails.root.join('app', 'assets', 'images')
        output_dir    Rails.root.join('public')
      end

      sizes = FFavicon::SIZES

      from 'favicon.png' do
        icon 'apple-touch-icon-precomposed.png', size: '180x180' #Обрезанные края 180x180

        sizes[:apple].each do |s|
          icon "apple-touch-icon-#{s}.png"
        end
        sizes[:favicon].each do |s|
          icon "favicon-#{s}.png"
        end
        sizes[:android].each do |s|
          icon "android-chrome-#{s}.png"
        end
        sizes[:mstile].each do |s|
          icon "mstile-#{s}.png"
        end
      end

      each_icon do |filepath|
        puts filepath # verbose example
      end
    end


    %w(browserconfig.xml manifest.json).each do |f|
      source = File.join(Gem.loaded_specs["ffavicon"].full_gem_path, "config", f)
      target = File.join(Rails.root, "public", f)
      FileUtils.cp_r source, target
      puts target
    end

  end
end

desc 'Generate favicons from single favicon.png source and generate config files'
task :ffavicon => 'ffavicon:generate'