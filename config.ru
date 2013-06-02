require 'bundler/setup'
require 'sinatra/base'
require 'rack-rewrite'

use Rack::Rewrite do
 
 r301 '/wp/Archive/2012/01/04/mendeley-vs-bookends-no-contest/', '/2012/01/04/mendeley-vs-bookends-no-contest/'
 r301 '/wp/', 'jeremycherfas.net'
 r301 '/wp/about/', 'about/'
 r301 '/wp/Archive/2006/09/24/a-taste-of-big-mike/', '/2006/09/24/a-taste-of-big-mike/'
 r301 '/wp/Archive/2013/04/04/more-mentuccia-mistakes/', '/2013/04/04/more-mentuccia-mistakes/'
 r301 '/wp/Archive/2009/12/03/everything-old-is-new-again-cold-start-cloche-baking/', '/2009/12/03/everything-old-is-new-again-cold-start-cloche-baking/'
 r301 '/wp/Archive/2013/02/23/mentuccia-is-not-pennyroyal/', '/2013/02/23/mentuccia-is-not-pennyroyal/'
 r301 '/wp/Archive/2013/03/28/whats-wrong-with-kiva/', '/2013/03/28/whats-wrong-with-kiva/'
 r301 '/wp/Archive/2006/04/26/free-at-last-free-at-last/', '/2006/04/26/free-at-last-free-at-last/'
 r301 '/wp/Archive/2011/11/09/imovie-11-tip-static-framing-after-ken-burns-zoom/', '/2011/11/09/imovie-11-tip-static-framing-after-ken-burns-zoom/'
 r301 '/wp/Archive/2012/01/15/benefits-of-a-baking-cloche/', '/2012/01/15/benefits-of-a-baking-cloche/'
 r301 '/wp/Archive/2012/01/05/what-is-farro-an-ancient-italian-grain-sorting-out-the-confusion/', '/2012/01/05/what-is-farro-an-ancient-italian-grain-sorting-out-the-confusion/'

end

# The project root directory
$root = ::File.dirname(__FILE__)

class SinatraStaticServer < Sinatra::Base

  get(/.+/) do
    send_sinatra_file(request.path) {404}
  end

  not_found do
    send_file(File.join(File.dirname(__FILE__), 'public', '404.html'), {:status => 404})
  end

  def send_sinatra_file(path, &missing_file_block)
    file_path = File.join(File.dirname(__FILE__), 'public',  path)
    file_path = File.join(file_path, 'index.html') unless file_path =~ /\.[a-z]+$/i
    File.exist?(file_path) ? send_file(file_path) : missing_file_block.call
  end

end

run SinatraStaticServer
