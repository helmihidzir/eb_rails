require 'aws-sdk-cloudwatchlogs'

Aws::CloudWatchLogs::Client.new(region: 'ap-southeast-1')

logfile = File.open("#{Rails.root}/log/#{Rails.env}.log", 'a')
logfile.sync = true

Rails.logger = ActiveSupport::TaggedLogging.new(Logger.new(logfile))