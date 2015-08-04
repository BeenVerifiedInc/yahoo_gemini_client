module YahooGeminiClient
  class BaseRequest

    include Virtus.model
    attribute :url, String
    attribute :client_id, String
    attribute :client_secret, String
    attribute :refresh_key, String

    include ActiveModel::Validations
    validates :url, :client_id, :client_secret, :refresh_key, presence: true

    def self.execute(*args)
      self.new(*args).execute
    end

    private

    def default_opts(additional_opts)
      attributes.slice(:url).merge(action: action_name).
        merge(additional_opts)
    end

    def action_name
      self.class.name.demodulize.gsub("Request", "").underscore.to_sym
    end

  end
end
