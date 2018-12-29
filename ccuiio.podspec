#
# Be sure to run `pod lib lint ccuiio.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ccuiio'
  s.version          = '1.0.9'
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
  s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
  s.static_framework  =  true
  s.subspec 'CcuiioThirdPartSocialVendor' do |sss|
      sss.frameworks = 'CocoaAsyncSocket','KissXML','libmaxminddb','libsodium','libuv','mbedtls','MMWormhole','PacketProcessor','PotatsoBase','PotatsoLibrary','PotatsoModel','ShadowPath','ssrLocal','yaml','Realm','RealmSwift','KeychainAccess'
      sss.ios.vendored_frameworks = 'ccuiio/Classes/Frameworks/*.framework'
      sss.ios.vendored_library    = 'ccuiio/Classes/lib/*.a'

  end
  
  
end
