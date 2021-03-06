module ActiveCampaign
  class Client
    module Campaigns
      GET_METHODS = %w(
        create delete_list delete list paginator report_bounce_list
        report_bounce_totals report_forward_list report_forward_totals
        report_link_list report_link_totals report_open_list report_open_totals
        report_totals report_unopen_list report_unsubscription_list
        report_unsubscription_totals send status
      ).freeze unless defined?(GET_METHODS)
      POST_METHODS = %w(create).freeze unless defined?(POST_METHODS)

      extend ActiveSupport::Concern

      # TODO: Create proper methods with parameter validation and possible
      #       naming fixes since this is one the worst APIs I have ever worked with.
      included do
        define_api_calls(:campaign, GET_METHODS, POST_METHODS)
      end
    end
  end
end
