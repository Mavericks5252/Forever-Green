class User < ApplicationRecord
    has_subscriptions
    validates_presence_of :name, :email
    validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
end
