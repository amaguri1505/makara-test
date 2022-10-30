class QueryTracer < Arproxy::Base
  def execute(sql, name=nil)
    database_config = self.proxy_chain.connection.instance_variable_get(:@config)
    Rails.logger.debug sql
    Rails.logger.debug "host: #{database_config[:host]}"
    super(sql, name)
  end
end

Arproxy.configure do |config|
  config.adapter = "mysql2" # A DB Apdapter name which is used in your database.yml
  config.use QueryTracer
end
Arproxy.enable!