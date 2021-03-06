cask 'praat' do
  version '6.0.10'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 'f82242cc2fbc07ae5b9218e7707f842f0a428b0db019db04d0a0936dcb4c0298'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac32.dmg"
  else
    sha256 '966428494147c9c14e55fe77b6304e9ce400b2b4cb0866aec26ab79e851aec23'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: '70a27d1b503c65fb7e517864b19e56e53e90162f990bbb68bb8948f7667d06e4'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', target: 'praat'
end
