Pod::Spec.new do |s|
  s.name = "ccuiio"
  s.version = "1.0.4"
  s.summary = "ccuiio is amazing."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"SpikeLeeHom"=>"spikeleeyuuui@gmail.com"}
  s.homepage = "https://github.com/SpikeLeeHom/ccuiio"
  s.description = "TODO: Add long description of the pod here."
  s.xcconfig = {"OTHER_LDFLAGS"=>"-ObjC"}
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/ccuiio.framework'
end
