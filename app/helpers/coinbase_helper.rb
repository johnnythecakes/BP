module CoinbaseHelper

    def login_url
        redirect_uri = ApplicationController::BASEURL + 'oauth2callback'

        url = 'https://accounts.google.com/o/oauth2/auth?' +
            'scope=' + ApplicationController::CLIENT_SCOPE + '&' +
            'redirect_uri=' + redirect_uri + '&' +
            'response_type=code&' +
            'client_id=' + ApplicationController::CLIENT_ID + '&' +
            'access_type=offline'

        URI.parse(URI.encode(url.strip))
    end

    def get_tokens(code)

        params['code'] = code
        params['client_id'] = ApplicationController::CLIENT_ID
        params['client_secret'] = ApplicationController::CLIENT_SECRET
        params['redirect_uri'] = ApplicationController::BASEURL + 'oauth2callback'
        params['grant_type'] = 'authorization_code'
    end