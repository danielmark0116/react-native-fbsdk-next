require 'json'
package = JSON.parse(File.read(File.join(__dir__, './', 'package.json')))

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package['version']
  s.summary       = package['description']
  s.requires_arc  = true
  s.author        = { 'thebergamo' => 'marcos@thedon.com.br' }
  s.license       = package['license']
  s.homepage      = package['homepage']
  s.source        = { :git => 'https://github.com/danielmark0116/react-native-fbsdk-next.git' }
  s.platforms     = { :ios => "11.0", :tvos => "9.2" }
  s.dependency      'React-Core'

  s.subspec 'Core' do |ss|
    ss.dependency     'FBSDKCoreKit', '~> 11.0.1'
    ss.source_files = 'ios/RCTFBSDK/core/*.{h,m}'
  end

  s.subspec 'Login' do |ss|
    ss.dependency     'FBSDKLoginKit', '~> 11.0.1'
    ss.source_files = 'ios/RCTFBSDK/login/*.{h,m}'
  end

  s.subspec 'Share' do |ss|
    ss.dependency     'FBSDKShareKit', '~> 11.0.1'
    ss.source_files = 'ios/RCTFBSDK/share/*.{h,m}'
  end
end
