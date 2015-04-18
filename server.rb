require 'sinatra'
require 'rack-flash'
require 'data_mapper'
require 'sinatra/partial'

require_relative 'app/models/link'
require_relative 'app/models/tag'
require_relative 'app/models/user'

require_relative 'app/helpers/application'
require_relative 'app/data_mapper_setup'

require_relative 'app/controllers/application'
require_relative 'app/controllers/links'
require_relative 'app/controllers/sessions'
require_relative 'app/controllers/tags'
require_relative 'app/controllers/users'

enable :sessions

use Rack::Flash
use Rack::MethodOverride

set :session_secret, 'my weird ecryption string'
set :partial_template_engine, :erb
set :views, File.dirname(__FILE__) + '/app/views'
