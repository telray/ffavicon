# FFavicon Maker for Rails
Gem adds a rake task for generating favicons for all major browsers and platforms and add helper for adding all favicons to layout.
Use of the [FaviconMaker](https://github.com/follmann/favicon_maker) library.

## Install

Add the following line to your Gemfile:

	  gem 'ffavicon'

## Usage

	1. Create your PNG favicon* in app/assets/images/favicon.png.
	2. Type `rake ffavicon` in your terminal.
	3. Your generated favicons will be output into your public directory.
	4. Change 'name' in public/manifest.json in your app name
	5. Add helper from your layout
``` ruby
<%= ffavicon_tags %>
```
	6. You can add params
``` ruby
<%= ffavicon_tags ms_color: '#00aba9', theme_color: '#ffffff' %>
```
	ms_color - color background for [Windows 8 - Tile](http://realfavicongenerator.net/faq#windows_8_tile_colors),
	theme_color - color  of the task bar in the switcher Android Chrome.

  *`I recommend to use the size of 260x260 for optimal results`

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

