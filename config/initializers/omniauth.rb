require 'openid/store/filesystem'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'SzyvFWUbzyS6fCNm207Fw', '825bCsvSZ4WrcYulvkj0xSbv6qyMrkOl9AMzPlWA'
  provider :open_id, OpenID::Store::Filesystem.new('/tmp')
  provider :facebook, '9c0bdfe4b072623be3402faa6f936b8am', '18bd76510815c3e8bf497b8be666253d',
        {:client_options => {:ssl => {:ca_path => '/etc/ssl/certs'}}}
end