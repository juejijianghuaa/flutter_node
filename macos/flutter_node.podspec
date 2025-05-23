#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_node.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_node'
  s.version          = '0.0.1'
  s.summary          = 'Node.js for Flutter.'
  s.description      = <<-DESC
Node.js for Flutter.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  # Node
  s.vendored_libraries = 'Frameworks/libnode.79.dylib'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
