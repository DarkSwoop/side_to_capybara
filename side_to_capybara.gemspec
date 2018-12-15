lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "side_to_capybara/version"

Gem::Specification.new do |spec|
  spec.name          = "side_to_capybara"
  spec.version       = SideToCapybara::VERSION
  spec.authors       = ["Benjamin Behr"]
  spec.email         = ["benny@digitalbehr.de"]

  spec.summary       = %q{Translate .side files to capybara tests}
  spec.homepage      = "https://github.com/DarkSwoop/side_to_capybara"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.post_install_message = <<-MESSAGE
  !    The 'side_to_capybara' gem has been deprecated and has been replaced by 'selenium_to_capybara'.
  !    See: https://rubygems.org/gems/selenium_to_capybara
  !    And: https://github.com/DarkSwoop/selenium_to_capybara
  MESSAGE
end
