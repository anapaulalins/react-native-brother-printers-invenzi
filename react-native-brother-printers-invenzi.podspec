require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-brother-printers-invenzi"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = "Wrapper React Native para impressoras Brother sem bitcode"
  s.homepage     = "https://github.com/anapaulalins/react-native-brother-printers-invenzi"
  s.license      = "MIT"
  s.author       = { "Seu Nome" => "seu@email.com" }
  s.platforms    = { :ios => "9.0" }

  s.source       = { :git => "https://github.com/anapaulalins/react-native-brother-printers-invenzi.git", :tag => "#{s.version}" }

  s.source_files  = "ios/**/*.{h,m,mm}"
  s.requires_arc  = true
  s.resources     = "ios/**/*.plist"

  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  s.user_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }

  # Aqui você define a dependência do SDK da Brother (sem bitcode)
 s.dependency "BRLMPrinterKit", '4.3.1'

  s.dependency "React"
end
