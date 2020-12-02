require 'net/http'
require 'uri'
require 'msf/core'


$chat_id='' #your chat id
$bot_id='' #your bot token
$msg='New session opend!'

url = URI.parse('https://api.telegram.org/bot'+$bot_id+'/sendMessage?chat_id='+$chat_id+'&parse_mode=Markdown&text='+$msg)
response = Net::HTTP.get_response(url)
