<!-- IF config.loggedIn -->
<!-- IMPORT partials/breadcrumbs.tpl -->
<!-- ENDIF config.loggedIn -->

<div class="row">
	<!-- IF allowLocalLogin -->
	<div class="<!-- IF alternate_logins -->col-md-6<!-- ELSE -->col-md-6 col-md-offset-3<!-- ENDIF alternate_logins -->">
		<div class="login-block">
			<div class="login-logo-container col-lg-12">
				<img src="assets/images/login-logo.jpg">
			</div>
			<div class="alert alert-danger col-lg-12" id="login-error-notify" <!-- IF error -->style="display:block"<!-- ELSE -->style="display: none;"<!-- ENDIF error -->>
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>[[login:failed_login_attempt]]</strong>
				<p>{error}</p>
			</div>

			<form class="form-horizontal col-lg-12" role="form" method="post" id="login-form">
				<div class="form-group">
					<label for="username">{allowLoginWith}</label>
					<input class="form-control" type="text" placeholder="{allowLoginWith}" name="username" id="username" autocorrect="off" autocapitalize="off" value="{username}"/>
				</div>
				<div class="form-group">
					<label for="password">[[user:password]]</label>
					<input class="form-control" type="password" placeholder="[[user:password]]" name="password" id="password" <!-- IF username -->autocomplete="off"<!-- ENDIF username -->/>
				</div>
				<div class="form-group">
					<div class="checkbox">
						<label>
							<input type="checkbox" name="remember" id="remember" checked /> [[login:remember_me]]
						</label>
					</div>
				</div>
				<input type="hidden" name="_csrf" value="{config.csrf_token}" />
				<input type="hidden" name="noscript" id="noscript" value="true" />
				<div class="form-group">
					<button class="btn btn-primary btn-lg btn-block" id="login" type="submit">[[global:login]]</button>
					<!-- IF allowRegistration -->
					<span>[[login:dont_have_account]] <a href="{config.relative_path}/register">[[register:register]]</a></span>
					<!-- ENDIF allowRegistration -->
					&nbsp; <a id="reset-link" href="{config.relative_path}/reset">[[login:forgot_password]]</a>
				</div>
			</form>

		</div>
	</div>
	<!-- ENDIF allowLocalLogin -->

	<!-- IF alternate_logins -->
	<div class="<!-- IF allowLocalLogin -->col-md-6<!-- ELSE -->col-md-12<!-- ENDIF allowLocalLogin -->">
		<div class="alt-login-block">
			<h4>[[login:alternative_logins]]</h4>
			<ul class="alt-logins">
				<!-- BEGIN authentication -->
				<li class="{authentication.name}"><a rel="nofollow noopener noreferrer" target="_top" href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-3x"></i></a></li>
				<!-- END authentication -->
			</ul>
		</div>
	</div>
	<!-- ENDIF alternate_logins -->
</div>
