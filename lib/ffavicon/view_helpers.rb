module FFavicon
  module ViewHelpers
    def ffavicon_tags(ms_color: "#00aba9", theme_color: "#ffffff")
      sizes = FFavicon::SIZES
      tags = []

      tags << sizes[:apple].collect do |s|
        favicon_link_tag("/apple-touch-icon-#{s}.png", size: s, rel: "apple-touch-icon")
      end

      tags << sizes[:favicon].collect do |s|
        favicon_link_tag("/favicon-#{s}.png", size: s, rel: "icon", type: "image/png")
      end

      tags << favicon_link_tag("/android-chrome-192x192.png", size: "192x192", rel: "icon", type: "image/png")
      tags << favicon_link_tag("/manifest.json", rel: "manifest")
      tags << tag(:meta, name: "msapplication-TileColor", content: ms_color)
      tags << tag(:meta, name: "msapplication-TileImage", content: "/mstile-144x144.png")
      tags << tag(:meta, name: "theme-color", content: theme_color)

      tags.join.html_safe
    end
  end
end