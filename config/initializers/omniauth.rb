Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '3r8kORVpAIoWJ8UeuuKEVQ', '7NPwxg2JVZh0XTvoTeDcoJV2HS15Juy5OUYWcJVIds'
  provider :identity
end