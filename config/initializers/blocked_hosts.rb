Rails.application.configure do
  config.hosts << "example.com"
  config.hosts << "baukis2.example.com"
  # 下記、productionモードで接続するとき必要？
  config.hosts << "localhost"
end
