module SessionsHelper
    def self.find_user_by(value)
        where(["name = :value OR email = :value", {value: value}]).first
      end
end
