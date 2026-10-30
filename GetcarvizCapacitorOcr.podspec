require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
    s.name = 'GetcarvizCapacitorOcr'
    s.version = package['version']
    s.summary = package['description']
    s.license = package['license']
    s.homepage = 'https://github.com/GetCarviz/capacitor-ocr'
    s.author = package['author']
    s.source = { :git => 'https://github.com/GetCarviz/capacitor-ocr.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target = '15.0'
    s.dependency 'Capacitor'
end
