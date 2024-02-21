=begin
#Lob

#The Lob API is organized around REST. Our API is designed to have predictable, resource-oriented URLs and uses HTTP response codes to indicate any API errors. <p> Looking for our [previous documentation](https://lob.github.io/legacy-docs/)?

The version of the OpenAPI document: 1.3.0
Contact: lob-openapi@lob.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/address'
require 'openapi_client/models/address_deletion'
require 'openapi_client/models/address_domestic'
require 'openapi_client/models/address_domestic_expanded'
require 'openapi_client/models/address_editable'
require 'openapi_client/models/address_list'
require 'openapi_client/models/bank_account'
require 'openapi_client/models/bank_account_deletion'
require 'openapi_client/models/bank_account_list'
require 'openapi_client/models/bank_account_verify'
require 'openapi_client/models/bank_account_writable'
require 'openapi_client/models/bank_type_enum'
require 'openapi_client/models/billing_group'
require 'openapi_client/models/billing_group_editable'
require 'openapi_client/models/billing_group_list'
require 'openapi_client/models/buckslip'
require 'openapi_client/models/buckslip_deletion'
require 'openapi_client/models/buckslip_editable'
require 'openapi_client/models/buckslip_order'
require 'openapi_client/models/buckslip_order_editable'
require 'openapi_client/models/buckslip_orders_list'
require 'openapi_client/models/buckslip_updatable'
require 'openapi_client/models/buckslips_list'
require 'openapi_client/models/bulk_error'
require 'openapi_client/models/bulk_error_properties'
require 'openapi_client/models/campaign'
require 'openapi_client/models/campaign_creative'
require 'openapi_client/models/campaign_deletion'
require 'openapi_client/models/campaign_updatable'
require 'openapi_client/models/campaign_writable'
require 'openapi_client/models/campaigns_list'
require 'openapi_client/models/card'
require 'openapi_client/models/card_deletion'
require 'openapi_client/models/card_editable'
require 'openapi_client/models/card_list'
require 'openapi_client/models/card_order'
require 'openapi_client/models/card_order_editable'
require 'openapi_client/models/card_order_list'
require 'openapi_client/models/card_updatable'
require 'openapi_client/models/check'
require 'openapi_client/models/check_deletion'
require 'openapi_client/models/check_editable'
require 'openapi_client/models/check_list'
require 'openapi_client/models/chk_use_type'
require 'openapi_client/models/cmp_schedule_type'
require 'openapi_client/models/cmp_use_type'
require 'openapi_client/models/country_extended'
require 'openapi_client/models/country_extended_expanded'
require 'openapi_client/models/creative_patch'
require 'openapi_client/models/creative_response'
require 'openapi_client/models/creative_writable'
require 'openapi_client/models/custom_envelope_returned'
require 'openapi_client/models/deliverability_analysis'
require 'openapi_client/models/dpv_footnote'
require 'openapi_client/models/engine_html'
require 'openapi_client/models/event_type'
require 'openapi_client/models/events'
require 'openapi_client/models/export'
require 'openapi_client/models/export_model'
require 'openapi_client/models/geocode_addresses'
require 'openapi_client/models/geocode_components'
require 'openapi_client/models/http_validation_error'
require 'openapi_client/models/identity_validation'
require 'openapi_client/models/inline_object'
require 'openapi_client/models/intl_autocompletions'
require 'openapi_client/models/intl_autocompletions_writable'
require 'openapi_client/models/intl_components'
require 'openapi_client/models/intl_suggestions'
require 'openapi_client/models/intl_verification'
require 'openapi_client/models/intl_verification_or_error'
require 'openapi_client/models/intl_verification_writable'
require 'openapi_client/models/intl_verifications'
require 'openapi_client/models/intl_verifications_payload'
require 'openapi_client/models/letter'
require 'openapi_client/models/letter_custom_envelope'
require 'openapi_client/models/letter_deletion'
require 'openapi_client/models/letter_details_returned'
require 'openapi_client/models/letter_details_writable'
require 'openapi_client/models/letter_editable'
require 'openapi_client/models/letter_list'
require 'openapi_client/models/lob_confidence_score'
require 'openapi_client/models/lob_error'
require 'openapi_client/models/location'
require 'openapi_client/models/location_analysis'
require 'openapi_client/models/ltr_use_type'
require 'openapi_client/models/mail_type'
require 'openapi_client/models/multi_line_address'
require 'openapi_client/models/multiple_components'
require 'openapi_client/models/multiple_components_intl'
require 'openapi_client/models/multiple_components_list'
require 'openapi_client/models/optional_address_column_mapping'
require 'openapi_client/models/placeholder_model'
require 'openapi_client/models/postcard'
require 'openapi_client/models/postcard_deletion'
require 'openapi_client/models/postcard_details_returned'
require 'openapi_client/models/postcard_details_writable'
require 'openapi_client/models/postcard_editable'
require 'openapi_client/models/postcard_list'
require 'openapi_client/models/postcard_size'
require 'openapi_client/models/psc_use_type'
require 'openapi_client/models/qr_code'
require 'openapi_client/models/required_address_column_mapping'
require 'openapi_client/models/return_envelope'
require 'openapi_client/models/reverse_geocode'
require 'openapi_client/models/self_mailer'
require 'openapi_client/models/self_mailer_deletion'
require 'openapi_client/models/self_mailer_editable'
require 'openapi_client/models/self_mailer_list'
require 'openapi_client/models/self_mailer_size'
require 'openapi_client/models/sfm_use_type'
require 'openapi_client/models/sort_by'
require 'openapi_client/models/sort_by1'
require 'openapi_client/models/sort_by2'
require 'openapi_client/models/sort_by3'
require 'openapi_client/models/sort_by_date_modified'
require 'openapi_client/models/suggestions'
require 'openapi_client/models/template'
require 'openapi_client/models/template_deletion'
require 'openapi_client/models/template_list'
require 'openapi_client/models/template_update'
require 'openapi_client/models/template_version'
require 'openapi_client/models/template_version_deletion'
require 'openapi_client/models/template_version_list'
require 'openapi_client/models/template_version_updatable'
require 'openapi_client/models/template_version_writable'
require 'openapi_client/models/template_writable'
require 'openapi_client/models/thumbnail'
require 'openapi_client/models/tracking_event_certified'
require 'openapi_client/models/tracking_event_details'
require 'openapi_client/models/tracking_event_normal'
require 'openapi_client/models/upload'
require 'openapi_client/models/upload_create_export'
require 'openapi_client/models/upload_file'
require 'openapi_client/models/upload_state'
require 'openapi_client/models/upload_updatable'
require 'openapi_client/models/upload_writable'
require 'openapi_client/models/uploads_metadata'
require 'openapi_client/models/us_autocompletions'
require 'openapi_client/models/us_autocompletions_writable'
require 'openapi_client/models/us_components'
require 'openapi_client/models/us_verification'
require 'openapi_client/models/us_verification_or_error'
require 'openapi_client/models/us_verifications'
require 'openapi_client/models/us_verifications_writable'
require 'openapi_client/models/validation_error'
require 'openapi_client/models/zip'
require 'openapi_client/models/zip_code_type'
require 'openapi_client/models/zip_editable'
require 'openapi_client/models/zip_lookup_city'

# APIs
require 'openapi_client/api/addresses_api'
require 'openapi_client/api/bank_accounts_api'
require 'openapi_client/api/billing_groups_api'
require 'openapi_client/api/buckslip_orders_api'
require 'openapi_client/api/buckslips_api'
require 'openapi_client/api/campaigns_api'
require 'openapi_client/api/card_orders_api'
require 'openapi_client/api/cards_api'
require 'openapi_client/api/checks_api'
require 'openapi_client/api/creatives_api'
require 'openapi_client/api/default_api'
require 'openapi_client/api/identity_validation_api'
require 'openapi_client/api/intl_autocompletions_api'
require 'openapi_client/api/intl_verifications_api'
require 'openapi_client/api/letters_api'
require 'openapi_client/api/postcards_api'
require 'openapi_client/api/reverse_geocode_lookups_api'
require 'openapi_client/api/self_mailers_api'
require 'openapi_client/api/template_versions_api'
require 'openapi_client/api/templates_api'
require 'openapi_client/api/uploads_api'
require 'openapi_client/api/us_autocompletions_api'
require 'openapi_client/api/us_verifications_api'
require 'openapi_client/api/zip_lookups_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
