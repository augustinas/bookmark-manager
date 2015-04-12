require 'sinatra'
require 'rack-flash'
require 'data_mapper'
require_relative '../lib/link'
require_relative '../lib/tag'
require_relative '../lib/user'
require_relative 'helpers/application'
require_relative 'data_mapper_setup'

require_relative 'controllers/application'
require_relative 'controllers/links'
require_relative 'controllers/sessions'
require_relative 'controllers/tags'
require_relative 'controllers/users'

enable :sessions
use Rack::Flash
use Rack::MethodOverride
set :session_secret, 'my weird ecryption string'
set :partial_template_engine, :erb
