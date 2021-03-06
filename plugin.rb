# name: discourse-tooltips
# about: Show tooltips in Discourse, including topic previews
# version: 0.1
# authors: Robin Ward

enabled_site_setting :tooltips_enabled
register_asset "stylesheets/d-tooltip.scss"

load File.expand_path('../lib/discourse_tooltips/engine.rb', __FILE__)

after_initialize do
  Discourse::Application.routes.append do
    mount ::DiscourseTooltips::Engine, at: '/tooltip-previews'
  end
end
