Pod::Spec.new do |s|
  s.name             = 'CardLinkSDK'
  s.version          = '0.0.11'
  s.summary          = 'A UI toolkit for beautiful and fast apps.'
  s.homepage         = 'https://flutter.dev'
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  s.author           = { 'Flutter Dev Team' => 'flutter-dev@googlegroups.com' }
  s.source           = { :http => 'https://github.com/DanijelHuis/TestRepo/releases/download/0.0.11/Archive.zip' }
  s.ios.deployment_target = '15.0'

  s.vendored_frameworks = [
    'CardLinkSDK.xcframework'  
  ]

  #s.xcconfig = { 'OTHER_LDFLAGS' => '-framework CardLinkSDK' }
end
