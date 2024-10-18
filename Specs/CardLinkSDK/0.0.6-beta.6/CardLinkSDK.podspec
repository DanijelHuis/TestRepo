Pod::Spec.new do |s|
  s.name             = 'CardLinkSDK'
  s.version          = '0.0.6-beta.6'
  s.summary          = 'Podspec for distributing CardLinkSDK.'
  s.homepage         = 'https://4ofthem.eu/'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Four of them LLC' => 'https://4ofthem.eu/' }
  s.source           = { :http => 'https://github.com/DanijelHuis/TestRepo/releases/download/0.0.6-beta.6/CardLinkSDK.xcframework.zip' }
  s.ios.deployment_target = '15.0'
  s.vendored_frameworks = ['CardLinkSDK.xcframework']
  s.dependency 'GematikOpenSSL'
end