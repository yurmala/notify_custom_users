module NotifyCustomUsers
  module UserNotifyAbout
    def self.included(base)
      base.send :define_method, :notify_custom_user? do |object|
        if %w(selected only_my_events only_assigned).include?(mail_notification)
          object.is_a?(Issue) &&
            (object.custom_users.include?(self) || object.custom_users_was.include?(self))
        end
      end
    end
  end
end

::User.send :include, NotifyCustomUsers::UserNotifyAbout
