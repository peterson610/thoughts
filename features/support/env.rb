require 'rspec'
ENV['RAILS_ENV'] = 'test'

require './config/environment'

Spinach.hooks.before_scenario do
    ActiveRecord::Base.connection.execute("TRUNCATE #{ActiveRecord::Base.connection.tables.join(',')} RESTART IDENTITY")
end
