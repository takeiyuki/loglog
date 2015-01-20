class User < ActiveRecord::Base
    def hello
        return "hello";
    end

    def create(email,password)
        encryptor = self.encryptor
        obj = User.create(:email => encryptor.encrypt_and_sign(email), :password => encryptor.encrypt_and_sign(password))
    end

    def login(email, password)
        encryptor = self.encryptor
        enc_email = encryptor.encrypt_and_sign(email)
        enc_password = encryptor.encrypt_and_sign(password)
        exit
        return User.find_by(email: enc_email, password: enc_password)
    end

    def get_by_id(id)
        User.find(id)
    end

    def encryptor
        secret = 'dmaldskjafksdfjaskjgkasjdgncklukejn'
        return ::ActiveSupport::MessageEncryptor.new(secret, cipher: 'aes-256-cbc')
    end

end
