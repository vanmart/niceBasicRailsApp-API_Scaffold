require 'grape'

module APINAME
  class Root < Grape::API
    #prefix 'api'
    mount APINAME::V1::Root
    # mount API::V2::Root (next version)
  end
end
