source "https://rubygems.org"

git_source(:github) do |repo_name|
end
gem "rack-cors", require: "rack/cors"

gem "rails", "~> 5.1.0"
gem "pg"
gem "puma", "~> 4.3"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "ci_reporter"
  gem "ci_reporter_rspec"
  gem "brakeman", require: false
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "pronto"
  gem "pronto-rubocop", require: false
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
