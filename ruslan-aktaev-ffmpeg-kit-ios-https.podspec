Pod::Spec.new do |s|
  s.name             = 'ruslan-aktaev-ffmpeg-kit-ios-https'
  s.version          = '6.0.2'
  s.summary          = 'FFmpeg iOS Binaries'
  s.homepage         = 'https://github.com/RuslanAktaev/ffmpeg'
  s.license          = { :type => "LGPL-3.0" }
  s.authors          = 'ruslan-aktaev'
  s.platform         = :ios, '12.1'
  s.static_framework = true
  s.requires_arc     = true

  # Link to the zip file on your GitHub release
  s.source = {
    :http => 'https://github.com/RuslanAktaev/ffmpeg/releases/download/v6.0.2/ffmpegkit-ios.xcframework.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = [
    'ffmpegkit.xcframework',
    'libavcodec.xcframework',
    'libavdevice.xcframework',
    'libavfilter.xcframework',
    'libavformat.xcframework',
    'libavutil.xcframework',
    'libswresample.xcframework',
    'libswscale.xcframework'
  ]

  s.libraries = [ "z", "bz2", "c++", "iconv" ]
  s.frameworks = [ "AudioToolbox", "AVFoundation", "CoreMedia", "VideoToolbox" ]
end
