# frozen_string_literal: true

# Copyright (c) 2008-2013 Michael Dvorkin and contributors.
#
# Fat Free CRM is freely distributable under the terms of MIT license.
# See MIT-LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
module CommentsHelper
  def notification_emails_configured?
    config = Setting.email_comment_replies || {}
    config[:server].present? && config[:user].present? && config[:password].present?
  end

  def send_sms_message(msg, phone_number)
  	gateway = TextMagic::API.new('my_username', 'my_api_password')
  	gateway.send msg, phone_number
  end

end
