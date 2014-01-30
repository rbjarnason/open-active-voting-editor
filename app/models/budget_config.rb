# Copyright (C) 2010-2014 Íbúar ses / Citizens Foundation
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

class BudgetConfig < ActiveRecord::Base
  attr_accessible  :election_id,:rsk_svf_nr,:rsk_url,:rsk_soap_username,:rsk_soap_password,:timeout_in_seconds, :test_mode,
                   :saml_assertion_consumer_service_url,:saml_idp_sso_target_url, :saml_idp_cert_fingerprint, :saml_name_identifier_format

  set_table_name "config"
end
