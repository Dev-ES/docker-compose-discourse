if ENV['RAILS_ENV'] == 'production'

  # First, you need to change these below to your situation.
  APP_ROOT = '/usr/src/app'
  num_workers = ENV["NUM_WEBS"].to_i > 0 ? ENV["NUM_WEBS"].to_i : 2

  min_threads = ENV["MIN_THREADS"].to_i >= 0 ? ENV["MIN_THREADS"].to_i : 4
  max_threads = ENV["MAX_THREADS"].to_i >= 0 ? ENV["MAX_THREADS"].to_i : 16

  # Second, you can choose how many threads that you are going to run at same time.
  workers = "#{num_workers}"
  threads = "#{min_threads}", "#{max_threads}"

  preload_app!

end
