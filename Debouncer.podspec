Pod::Spec.new do |s|
  s.module_name = 'Debouncer'
  s.name = 'Debouncer'
  s.version = '0.0.2'
  s.license = 'MIT'
  s.summary = 'Debouncer for @levantAJ team'
  s.homepage = 'https://github.com/levantAJ'
  s.authors = { 'Le Tai' => 'sirlevantai@gmail.com' }
  s.source = { :git => 'https://github.com/levantAJ/Debouncer.git', :tag => s.version }
  s.source_files = 'Debouncer/**/*.{h,swift}'
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
end
