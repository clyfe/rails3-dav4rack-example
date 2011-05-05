if Rails.version < '3.0.2'

  %w(propfind proppatch mkcol copy move lock unlock).each do |method|
    ActionDispatch::Request::HTTP_METHODS << method.upcase
    ActionDispatch::Request::HTTP_METHOD_LOOKUP[method.upcase] = method.to_sym
  end

end

