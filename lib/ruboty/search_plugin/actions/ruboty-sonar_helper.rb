require 'ruboty-sonar'

module RubotySonarHelper
  def call_method(method_name, *args)
    if args.size == 0
      RubotySonar.send(method_name)
    else
      RubotySonar.send(method_name, args.first)
    end
  end

  def gem_name
    message[:gem_name]
  end

  def limit
    message[:limit].to_i
  end
end
