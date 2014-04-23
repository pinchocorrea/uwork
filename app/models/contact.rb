class Contact < MailForm::Base
	attribute :name,      :validate => true
	attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

	def headers
	{
	  :subject => "Formulario de contacto de UWork",
	  :to => "contacto@ryoassets.com",
	  :from => %("#{name}" <#{email}>)
	}
	end
end
