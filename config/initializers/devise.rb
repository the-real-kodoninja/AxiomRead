Devise.setup do |config|
    # ==> Controller configuration
    # Configure the parent class to the devise controllers.
    config.parent_controller = 'DeviseController'
  
    # ==> Mailer Configuration
    # Configure the e-mail address which will be shown in Devise::Mailer,
    # note that it will be overwritten if you use your own mailer class with default "from" parameter.
    config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  
    # Configure the class responsible to send e-mails.
    config.mailer = 'Devise::Mailer'
  
    # ==> ORM configuration
    # Load and configure the ORM. Supports :active_record (default) and
    # :mongoid (bson_ext recommended) by default. Other ORMs may be
    # available as additional gems.
    require 'devise/orm/active_record'
  
    # ==> Configuration for any authentication mechanism
    # Configure which keys are used when authenticating a user. The default is
    # just :email. You can configure it to use [:username, :subdomain], so for
    # authenticating a user, both parameters are required. Remember that those
    # parameters are used only when authenticating and not when retrieving from
    # session. If you need permissions, you should implement that in a before filter.
    # You can also supply a hash where the value is a boolean determining whether
    # or not authentication should be aborted when the value is not present.
    # config.authentication_keys = [:email]
  
    # ==> Configuration for :database_authenticatable
    # For bcrypt, this is the cost for hashing the password and defaults to 11. If
    # using other encryptors, it sets how many times you want the password to be hashed.
    #
    # Limiting the stretches to just one in testing will increase the performance of
    # your test suite dramatically. However, it is STRONGLY RECOMMENDED to not use
    # a value less than 10 in other environments. Note that, for bcrypt (the default
    # encryptor), the cost changes with time. It means that it will generate a
    # different hash for the same password in the future, so your tests might fail.
    config.stretches = Rails.env.test? ? 1 : 11
  
    # Configure how long you want the user to be remembered without asking for credentials again.
    # config.remember_for = 2.weeks
  
    # Validity period for the confirmation token (default: 3 days).
    # config.confirm_within = 3.days
  
    # ==> Configuration for :confirmable
    # A period that the user is allowed to access the website even without
    # confirming his account. For instance, if set to 2.days, the user will be
    # able to access the website for two days without confirming his account,
    # access will be blocked just in the third day. Default is 0.days, meaning
    # the user won't be able to access the website without confirming his account.
    # config.allow_unconfirmed_access_for = 2.days
  
    # ==> Configuration for :reconfirmable
    # A period that the user is allowed to access the website even without
    # confirming his account. For instance, if set to 2.days, the user will be
    # able to access the website for two days without confirming his account,
    # access will be blocked just in the third day. Default is 0.days, meaning
    # the user won't be able to access the website without confirming his account.
    config.reconfirmable = true
  
    # ==> Configuration for :lockable
    # Defines which strategy will be used to lock an account.
    # :failed_attempts = Locks an account after a number of failed attempts to sign in.
    # :none            = Locking is disabled.
    # config.lock_strategy = :failed_attempts
  
    # ==> Configuration for :rememberable
    # The time the user will be remembered without asking for credentials again.
    config.remember_for = 2.weeks
  
    # ==> Configuration for :validatable
    # Range for password length.
    config.password_length = 6..128
  
    # Email regex used to validate email formats. It is given by default,
    # but you may want to configure it to match more complex email formats.
    config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  
    # ==> Configuration for :timeoutable
    # The time the user will be remembered without asking for credentials again.
    # config.timeout_in = 30.minutes
  
    # ==> Configuration for :lockable
    # Defines which strategy will be used to lock an account.
    # config.lock_strategy = :failed_attempts
  
    # ==> Configuration for :recoverable
    # Defines which strategy will be used to lock an account.
    # config.reset_password_keys = [ :email ]
  
    # ==> Configuration for :trackable
    # Defines which strategy will be used to lock an account.
    # config.sign_in_after_reset_password = true
  
    # ==> Configuration for :omniauthable
    # Add or remove omniauth providers.
    # config.omniauth :github, 'APP_ID', 'APP_SECRET', scope: 'user,public_repo'
  
    # ==> Configuration for :registerable
    # Whether the user is allowed to register.
    # config.sign_out_via = :delete
  
    # ==> Configuration for :timeoutable
    # The time the user will be remembered without asking for credentials again.
    # config.timeout_in = 30.minutes
  
    # ==> Configuration for :lockable
    # Defines which strategy will be used to lock an account.
    # config.unlock_keys = [ :email ]
    # config.unlock_strategy = :email
  
    # ==> Configuration for :recoverable
    # Defines which strategy will be used to lock an account.
    # config.reset_password_keys = [ :email ]
  
    # ==> Configuration for :trackable
    # Defines which strategy will be used to lock