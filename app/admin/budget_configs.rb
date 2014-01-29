ActiveAdmin.register BudgetConfig do
  index do
    column :id
    column :rsk_url
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :election_id
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
end
