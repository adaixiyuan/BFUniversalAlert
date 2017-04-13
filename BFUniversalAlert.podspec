#
#  Be sure to run `pod spec lint BFUniversalAlert.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

 
  s.name         = "BFUniversalAlert"
  s.version      = "0.0.1"
  s.platform     = :ios, "8.0"
  s.summary      = "A short description of BFUniversalAlert."
  s.homepage     = "https://github.com/adaixiyuan/BFUniversalAlert"
   s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "quanyan" => "heng.luo@quncaotech.com" }
  s.source       = { :git => "https://github.com/adaixiyuan/BFUniversalAlert.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  s.requires_arc  = true
 
  s.subspec 'Core' do |cs|
    cs.dependency  'RMUniversalAlert'
    cs.dependency  'LCActionSheet'
  end

end
