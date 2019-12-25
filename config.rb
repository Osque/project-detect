activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets

# ------ Uncomment and adapt if you want to use i18n ------
# activate :i18n, mount_at_root: :fr, langs: [:fr, :en]

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  activate :minify_css
  # ------ We commented this command as it prevented us to deploy our Middleman project on GitHub Pages ------
  # activate :minify_javascript
  activate :asset_hash
  activate :sitemap, hostname: data.settings.site.url
  activate :relative_assets
  activate :minify_css
  activate :minify_javascript
  activate :minify_html, remove_input_attributes: false
  set :relative_links, true
end

activate :gzip
activate :protect_emails

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end
