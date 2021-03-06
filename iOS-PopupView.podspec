#
# Be sure to run `pod lib lint iOS-PopupView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iOS-PopupView'
  s.version          = '0.1.2'
  s.summary          = 'This lib written by Swift 4 (iOS-PopupView).'

  s.homepage         = 'https://github.com/iAmSnow/iOS-PopupView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iAmSnow' => 'sarawoot@wewillapp.com' }
  s.source           = { :git => 'https://github.com/iAmSnow/iOS-PopupView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'iOS-PopupView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'iOS-PopupView' => ['iOS-PopupView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
