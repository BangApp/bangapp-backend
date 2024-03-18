<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<div class="container-fluid bootstrap snippets bootdey d-flex align-items-center justify-content-center">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-th"></span>
                        Change password
                    </h3>
                </div>
                <form action="{{ route('password.update') }}" method="POST">
                    @csrf
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6 separator social-login-box"> <br>
                                <img alt="" class="img-thumbnail" src="{{ $imageUrl }}">
                            </div>
                            <div style="margin-top:80px;" class="col-xs-6 col-sm-6 col-md-6 login-box">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                        <input type="hidden" value="{{ $email }}" name="email">
                                        <input type="hidden" value="{{ $token }}" name="token">
                                        <input class="form-control" id="password" name="password" type="password" placeholder="New Password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                        <input class="form-control" id="confirm_password" name="confirm_password" type="password" placeholder="Confirm Password">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="password_error" style="display:none; color:red;">Passwords do not match</div>

                <div class="panel-footer">
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6"></div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <button onclick="return validatePassword()" class="btn icon-btn-save btn-success" type="submit">
                                <span class="btn-save-label"><i class="glyphicon glyphicon-floppy-disk"></i></span>Update</button>
                        </div>
                    </div>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>

<style>
    body{
    background:#eee;
    }
    .separator {
        border-right: 1px solid #dfdfe0;
    }
    .icon-btn-save {
        padding-top: 0;
        padding-bottom: 0;
    }
    .input-group {
        margin-bottom:10px;
    }
    .btn-save-label {
        position: relative;
        left: -12px;
        display: inline-block;
        padding: 6px 12px;
        background: rgba(0,0,0,0.15);
        border-radius: 3px 0 0 3px;
    }
    .bootdey {
    height: 100vh; /* Set height to 100% of viewport height */
}
</style>

<script>
    function validatePassword() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm_password").value;
        var errorDiv = document.getElementById("password_error");
        if (password !== confirmPassword) {
            errorDiv.style.display = "block";
            return false;
        } else {
            errorDiv.style.display = "none";
            return true;
        }
    }
</script>
