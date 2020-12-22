function! Term()
	:terminal
	:set ma
endfunction

function NgrokStart()
	:terminal bash -c "cd ~ && ./ngrok http 3000"
	:set ma
	:execute Redis()
endfunction

function! Redis()
	:split | terminal bash -c "redis-server"
  :set ma
endfunction

" START NOVOCHAT

function! NchStart()
  :execute NovochatNgrok()
  :execute NovochatServer()
  :execute NovochatSidekiq()
  :execute NovochatWebpack()
  :let timerDelayOpenBrowser = timer_start(15000, 'OpenNovochatInBrowser')
endfunction

function! OpenNovochatInBrowser(timerDelayOpenBrowser)
  let domainUrl = system('curl --silent http://127.0.0.1:4040/api/tunnels | jq ".tunnels[0].public_url"')
  let domainUrl = substitute(domainUrl, '"', '', '')
  let domainUrl =  substitute(domainUrl, '"', '', '')
  let domainUrl =  substitute(domainUrl, 'https://', '', '')
  let domainUrl =  substitute(domainUrl, 'http://', '', '')
  let domainUrl =  substitute(domainUrl, '\n', '', '')
  :execute "silent! !google-chrome-stable \https://" . domainUrl
  :execute "silent! !google-chrome-stable http://localhost:3000"
endfunction


function! NovochatNgrok()
  "open file
  :e ~/dev/novochat_app/.env

  "Set domain url variable
  let domainUrl = system('curl --silent http://127.0.0.1:4040/api/tunnels | jq ".tunnels[0].public_url"')

  let domainUrl = substitute(domainUrl, '"', '', '')
  let domainUrl =  substitute(domainUrl, '"', '', '')
  let domainUrl =  substitute(domainUrl, 'https://', '', '')
  let domainUrl =  substitute(domainUrl, 'http://', '', '')
  let domainUrl =  substitute(domainUrl, '\n', '', '')

  "replace DOMAIN_URL value
  :%s/DOMAIN_URL=\zs.*/\=domainUrl/g
  :w
endfunction

function! NovochatServer()
	:vsplit | terminal bash -c "cd ~/dev/novochat_app && rails server"
  :set ma
endfunction

function! NovochatSidekiq()
	:vsplit | terminal bash -c "cd ~/dev/novochat_app && bundle exec sidekiq"
  :set ma
endfunction

function! NovochatWebpack()
	:vsplit | terminal bash -c "cd ~/dev/novochat_app && bin/webpack-dev-server"
  :set ma
endfunction
