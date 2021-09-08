" START NOVOCHAT

function! NclStart()
	:execute Redis()
  :execute NovocallServer()
  :execute NovocallSidekiq()
  " :execute NovocallWebpack()
  :let timerDelayOpenBrowser = timer_start(15000, 'OpenNovocallInBrowser')
endfunction

function! OpenNovocallInBrowser(timerDelayOpenBrowser)
  " let domainUrl = system('curl --silent http://127.0.0.1:4040/api/tunnels | jq ".tunnels[0].public_url"')
  " let domainUrl = substitute(domainUrl, '"', '', '')
  " let domainUrl =  substitute(domainUrl, '"', '', '')
  " let domainUrl =  substitute(domainUrl, 'https://', '', '')
  " let domainUrl =  substitute(domainUrl, 'http://', '', '')
  " let domainUrl =  substitute(domainUrl, '\n', '', '')
  " :execute "silent! !google-chrome-stable \https://" . domainUrl
  :execute "silent! !google-chrome-stable http://localhost:3000"
endfunction

function! Redis()
	:split | terminal bash -c "redis-server"
  :set ma
endfunction

function! NovocallNgrok()
  "open file
  :e ~/dev/novocall_app/.env

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

function! NovocallServer()
	:vsplit | terminal bash -c "cd ~/dev/novocall_app && rails server"
  :set ma
endfunction

function! NovocallSidekiq()
	:vsplit | terminal bash -c "cd ~/dev/novocall_app && bundle exec sidekiq"
  :set ma
endfunction

function! NovocallWebpack()
	:vsplit | terminal bash -c "cd ~/dev/novocall_app && bin/webpack-dev-server"
  :set ma
endfunction
