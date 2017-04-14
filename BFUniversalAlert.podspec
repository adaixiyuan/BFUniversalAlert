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
  s.exclude_files = "Classes/Exclude"

  s.requires_arc  = true
  s.default_subspec = 'UniversalAlert', 'LCActionSheet', 'RMUniversalAlert'

  # UniversalAlert
  s.subspec 'UniversalAlert' do |un|
    un.source_files  = "BFUniversalAlert/**/*.{h,m}"
    un.platform     = :ios, "8.0"
  end	

  # LCActionSheet
  s.subspec 'LCActionSheet' do |lc|
    lc.source_files  = "LCActionSheet/**/*.{h,m}"
    lc.platform     = :ios, "8.0"
    lc.dependency  'Masonry', '~> 1.0.2'
  end

  # RMUniversalAlert
  s.subspec 'RMUniversalAlert' do |rm|
    rm.source_files  = "RMUniversalAlert", "RMUniversalAlert/**/*.{h,m}"
    rm.platform     = :ios, "8.0"
    rm.dependency  'UIAlertView+Blocks', '>= 0.9'
    rm.dependency  'UIActionSheet+Blocks', '>= 0.9'
    rm.dependency  'UIAlertController+Blocks', '>= 0.9'
  end

end
