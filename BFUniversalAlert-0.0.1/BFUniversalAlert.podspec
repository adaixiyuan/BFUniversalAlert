Pod::Spec.new do |s|
  s.name = "BFUniversalAlert"
  s.version = "0.0.1"
  s.summary = "A short description of BFUniversalAlert."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"quanyan"=>"heng.luo@quncaotech.com"}
  s.homepage = "https://github.com/adaixiyuan/BFUniversalAlert"
  s.requires_arc = true
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/BFUniversalAlert.framework'
end
