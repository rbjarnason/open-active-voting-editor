ActiveAdmin.register BudgetConfig do
  index do
    column :id
    column :rsk_url
    column :soap_url
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :test_mode
      f.input :election_id
      f.input :public_key
      f.input :known_x509_cert
      f.input :soap_url
      f.input :rsk_svf_nr
      f.input :rsk_url
      f.input :rsk_soap_username
      f.input :rsk_soap_password
      f.input :timeout_in_seconds
      f.input :saml_assertion_consumer_service_url
      f.input :saml_idp_sso_target_url
      f.input :saml_idp_cert_fingerprint
      f.input :saml_name_identifier_format
    end
    f.actions
  end

  controller do

    def update
      if params[:budget_config][:rsk_soap_password].blank?
        params[:budget_config].delete("rsk_soap_password")
      end
      super
    end

  end
end
