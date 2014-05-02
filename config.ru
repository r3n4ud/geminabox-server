require 'rubygems'
require 'geminabox'

Geminabox.data = './data'

# Enable rubygems proxying
Geminabox.rubygems_proxy = true

# Enable gems provisioning even if rubygems.org is unavailable
Geminabox.allow_remote_failure = true

# The default HttpAdapter poorly handles timeouts, so we switch to Faraday.
require 'geminabox/http_adapter/template_faraday_adapter'
Geminabox.http_adapter = Geminabox::TemplateFaradayAdapter.new

run Geminabox::Server
