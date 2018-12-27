#
# Be sure to run `pod lib lint ccuiio.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ccuiio'
  s.version          = '1.0.3'
  s.summary          = 'ccuiio is amazing.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/SpikeLeeHom/ccuiio'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SpikeLeeHom' => 'spikeleeyuuui@gmail.com' }
  s.source           = { :git => 'https://github.com/SpikeLeeHom/ccuiio.git', :tag => "#{s.version}" }
  s.source_files = 'ccuiio/Classes/**/*.{h,m,mm,c,swift}'
  s.ios.deployment_target = '9.0'
  s.compiler_flags = "-fcxx-modules"
  s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.subspec 'CcuiioThirdPartSocialVendor' do |sss|
      sss.frameworks = 'CocoaAsyncSocket','Eureka','KissXML','libmaxminddb','libsodium','libuv','mbedtls','MMWormhole','PacketProcessor','PotatsoBase','PotatsoLibrary','PotatsoModel','ShadowPath','ssrLocal','yaml'
      sss.ios.vendored_frameworks = 'ccuiio/Classes/Frameworks/*.framework'
      sss.ios.vendored_library    = 'ccuiio/Classes/lib/*.a'

  end
  
  s.dependency 'Cartography','~>3.0'
  s.dependency 'KeychainAccess', '~> 3.1.1'
  s.dependency 'RealmSwift', '~> 2.10.2'
  s.dependency 'CocoaLumberjack/Swift', '~> 3.4.1'
  s.dependency 'LogglyLogger-CocoaLumberjack', '~> 3.0.0'
  s.dependency 'Alamofire'
  s.dependency 'AsyncSwift'
end
