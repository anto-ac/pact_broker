require 'pact_broker/domain'
require 'pact_broker/pacts/repository'
require 'pact_broker/repositories/webhook_repository'


module PactBroker
  module Repositories
    def pacticipant_repository
      require 'pact_broker/pacticipants/repository'
      Pacticipants::Repository.new
    end

    def version_repository
      require 'pact_broker/versions/repository'
      Versions::Repository.new
    end

    def pact_repository
      PactBroker::Pacts::Repository.new
    end

    def tag_repository
      require 'pact_broker/tags/repository'
      Tags::Repository.new
    end

    def webhook_repository
      WebhookRepository.new
    end

    extend self
  end
end
