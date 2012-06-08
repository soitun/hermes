require 'sinatra/base'

module Hermes
  class Frontend < Sinatra::Base
    before do
      begin
        @website = Domain.find(uri).website
      rescue
        halt 404, "Website with domain `#{uri}` not found."
      end
    end

    get %r{^*+$} do
      
      # Website.find(:'domain.uri' => )
      # uri = 
      # p uri.host
      # p Resource.where(:uri => uri)
    end
  end
end

# require 'mongo' 
# class GridfsController < ActionController::Metal
#   def serve
#     gridfs_path = env["PATH_INFO"].gsub("/images/", "")
#     begin
#       gridfs_file = Mongo::GridFileSystem.new(Mongoid.database).open(gridfs_path, 'r')
#       self.response_body = gridfs_file.read
#       self.content_type = gridfs_file.content_type
#     rescue
#       self.status = :file_not_found
#       self.content_type = 'text/plain'
#       self.response_body = ''
#     end
#   end
# end