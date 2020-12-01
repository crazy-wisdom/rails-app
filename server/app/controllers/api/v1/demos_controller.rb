module Api::V1
  class DemosController < ApiController
    def index
      origin = request.headers["Origin"] || '*'
      response.headers['Access-Control-Allow-Origin'] = origin
      response.headers['Access-Control-Request-Method'] = %w{GET HEAD POST OPTIONS}.join(",")
      response.headers['Access-Control-Allow-Credentials'] = 'true'

      data = Demo.all.map do |demo|
        {
          title: demo.title,
          content: demo.content
        }
      end
      render json: data
    end
  end
end
