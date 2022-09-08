class QuoteMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.quote_mailer.invitation_create.subject
  #
  def invitation_create(params_vendors,quote)
    vendor_email = params_vendors.user.email
    @quote = quote
    # @Event = Event.find(id: quote.event_id)
    @greeting = "Hi"

    mail to: vendor_email
  end
end
