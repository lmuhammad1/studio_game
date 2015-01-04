
Gem::Specification.new do |s|
  s.name         = "lmuhammad1_studio_game"
  s.version      = "1.0.0"
  s.author       = "Louis Muhammad"
  s.email        = "louis.muhammad@gmail.com"
  s.homepage     = "http://www.louismuhammad.com/studio_game"
  s.summary      = "A game that you are welcomed to try out"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.licenses     = ['MIT']

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'studio_game' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end

