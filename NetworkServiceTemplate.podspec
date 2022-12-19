Pod::Spec.new do |s|
	s.name = 'NetworkServiceTemplate'
	s.summary = 'Network Service Template'
	s.version = '1.0'
	s.author = { 'NaughtySquire' => 'https://github.com/NaughtySquire' }
	s.license = { :type => 'BSD' }
	s.homepage = 'https://github.com/NaughtySquire'
	s.source = { tag: 'git@github.com:NaughtySquire/NetworkServiceTemplate.git' }
	s.source_files = 'Sources/*.swift'
end