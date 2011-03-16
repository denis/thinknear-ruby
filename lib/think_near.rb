require 'ostruct'

require 'think_near/connection'
require 'think_near/endpoint'
require 'think_near/client'
require 'think_near/category'
require 'think_near/draw'
require 'think_near/offer'

module ThinkNear
  API_VERSION = '1.0'.freeze
  REALM = 'http://api-sandbox.thinknear.com'

  class ThinkNearError < StandardError; end
  class Unauthorized < ThinkNearError; end
  class NotFound < ThinkNearError; end
  class ServerError < ThinkNearError; end
  class Unavailable < ThinkNearError; end
  class DecodeError < ThinkNearError; end
  class NoConnectionEstablished < ThinkNearError; end
end
