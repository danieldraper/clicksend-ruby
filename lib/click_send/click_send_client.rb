# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class ClickSendClient
    # Singleton access to fax controller
    # @return [FaxController] Returns the controller instance
    def fax
      FaxController.instance
    end

    # Singleton access to countries controller
    # @return [CountriesController] Returns the controller instance
    def countries
      CountriesController.instance
    end

    # Singleton access to sms controller
    # @return [SMSController] Returns the controller instance
    def sms
      SMSController.instance
    end

    # Singleton access to voice controller
    # @return [VoiceController] Returns the controller instance
    def voice
      VoiceController.instance
    end

    # Singleton access to account controller
    # @return [AccountController] Returns the controller instance
    def account
      AccountController.instance
    end

    # Singleton access to subaccount controller
    # @return [SubaccountController] Returns the controller instance
    def subaccount
      SubaccountController.instance
    end

    # Singleton access to contact controller
    # @return [ContactController] Returns the controller instance
    def contact
      ContactController.instance
    end

    # Singleton access to contact_list controller
    # @return [ContactListController] Returns the controller instance
    def contact_list
      ContactListController.instance
    end

    # Singleton access to reseller_account controller
    # @return [ResellerAccountController] Returns the controller instance
    def reseller_account
      ResellerAccountController.instance
    end

    # Singleton access to number controller
    # @return [NumberController] Returns the controller instance
    def number
      NumberController.instance
    end

    # Singleton access to statistics controller
    # @return [StatisticsController] Returns the controller instance
    def statistics
      StatisticsController.instance
    end

    # Singleton access to email_to_sms controller
    # @return [EmailToSmsController] Returns the controller instance
    def email_to_sms
      EmailToSmsController.instance
    end

    # Singleton access to search controller
    # @return [SearchController] Returns the controller instance
    def search
      SearchController.instance
    end

    # Singleton access to referral_account controller
    # @return [ReferralAccountController] Returns the controller instance
    def referral_account
      ReferralAccountController.instance
    end

    # Singleton access to transfer_credit controller
    # @return [TransferCreditController] Returns the controller instance
    def transfer_credit
      TransferCreditController.instance
    end

    # Singleton access to post_return_address controller
    # @return [PostReturnAddressController] Returns the controller instance
    def post_return_address
      PostReturnAddressController.instance
    end

    # Singleton access to account_recharge controller
    # @return [AccountRechargeController] Returns the controller instance
    def account_recharge
      AccountRechargeController.instance
    end

    # Singleton access to sms_campaign controller
    # @return [SmsCampaignController] Returns the controller instance
    def sms_campaign
      SmsCampaignController.instance
    end

    # Singleton access to post_letter controller
    # @return [PostLetterController] Returns the controller instance
    def post_letter
      PostLetterController.instance
    end

    # Singleton access to mms controller
    # @return [MMSController] Returns the controller instance
    def mms
      MMSController.instance
    end

    # Singleton access to upload controller
    # @return [UploadController] Returns the controller instance
    def upload
      UploadController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(username: nil, key: nil)
      Configuration.username = username if username
      Configuration.key = key if key
    end
  end
end
