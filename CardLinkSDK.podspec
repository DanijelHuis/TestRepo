Pod::Spec.new do |s|
  s.name             = 'CardLinkSDK'
  s.version          = '0.0.3'
  s.summary          = 'A UI toolkit for beautiful and fast apps.'
  s.homepage         = 'https://flutter.dev'
  s.license          = { :type => 'BSD' }
  s.author           = { 'Flutter Dev Team' => 'flutter-dev@googlegroups.com' }
  s.source           = { :http => 'https://github.com/DanijelHuis/TestRepo/releases/download/0.0.3/CardLinkSDK.xcframework.zip' }
  s.ios.deployment_target = '12.0'
  # Framework linking is handled by Flutter tooling, not CocoaPods.
  # Add a placeholder to satisfy `s.dependency 'Flutter'` plugin podspecs.
  s.vendored_frameworks = 'CardLinkSDK'
  #s.xcconfig = { 'OTHER_LDFLAGS' => '-framework CardLinkSDK' }
end
