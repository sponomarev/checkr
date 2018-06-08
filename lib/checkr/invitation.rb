# -*- encoding: utf-8 -*-
module Checkr
  class Invitation < Checkr::Base

    def self.create(params={}, api_key=nil)
      uri = "/invitations"
      response = self.post(uri, :body => params, :basic_auth => Checkr.auth(api_key) )
      handle_response(response)
    end

    def self.find(id, api_key=nil)
      response = self.get("/invitations/#{id}", :basic_auth => Checkr.auth(api_key) )
      handle_response(response)
    end

    def self.construct(params)
      self.new(params)
    end
  end
end
