# frozen_string_literal: true

# DO NOT SET SENSITIVE DATA HERE!
# USE ENVIRONMENT VARIABLES OR 'local.rb' INSTEAD

# OVERRIDE THESE DEFAULTS IN A PROPER ENVIRONMENT CONFIGURATION FILE
# SET SENSITIVE DATA ONLY IN 'local.rb'

SimpleConfig.for :application do
  set :app_name, 'icare'
  set :repository_url, 'http://github.com/diowa/icare'

  set :advertising, false
  set :demo_mode, false
  set :base_url, 'localhost:3000'
  set :single_process_mode, true

  set :currency, '.00 MUR'
  set :fuel_consumption, 3.83
  set :fuel_currency, 'MUR'

  set :costs_calculation_service_link, ''

  set :google_analytics_id, nil
  set :google_maps_api_key, nil

  set :user_image_placeholder, 'https://fbstatic-a.akamaihd.net/rsrc.php/v2/yo/r/UlIqmHJn-SK.gif'

  group :facebook do
    set :namespace, 'FACEBOOK_NAMESPACE'
    set :app_id, 'FACEBOOK_APP_ID'
    set :secret, 'FACEBOOK_SECRET'
    set :scope, 'public_profile, publish_actions, user_birthday, user_about_me, user_education_history, user_likes, user_religion_politics, user_work_history'
    set :cache_expiry_time, 7.days
  end

  group :airbrake do
    set :project_id, nil
    set :project_key, nil
    set :host, nil
  end

  group :map do
    # defaults to MRU
    set :center, [-20.34840400, 57.55215200]
    set :zoom, 8
  end

  group :itineraries do
    # Enable this option if you want to restrict itineraries inside a geographic area
    set :geo_restricted, true
    group :bounds do
      # MRU
      set :sw, [-20.52551210, 56.51271810]
      set :ne, [-10.31925480, 63.50359450]
    end
  end

  group :mailer do
    set :from, '"Icare" <no-reply@i.care>'
    set :host, 'localhost'

    group :smtp_settings do
      set :address, 'localhost'
      set :port, 587
      set :authentication, :plain
      set :domain, 'localhost'

      set :user_name, 'test'
      set :password, 'test'
    end
  end

  group :redis do
    set :url, 'redis://127.0.0.1:6379'
  end
end
