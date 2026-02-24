<!-- BEGIN: MAIN -->
<!DOCTYPE html>
<html lang="{PHP.cfg.defaultlang}">
<head>
<title>{MESSAGE_TITLE}</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="generator" content="Cotonti https://www.cotonti.com" />
{MESSAGE_BASEHREF}
{MESSAGE_STYLESHEET}
{MESSAGE_REDIRECT}
</head>

<body>
<div class="container min-vh-100 d-flex flex-column justify-content-center">
    <div class="row">
        <div class="col-12">
            <div class="card mb-4">
                <div class="card-header bg-warning text-dark">
                    <h2 class="h5 mb-0">{MESSAGE_TITLE}</h2>
                </div>
                <div class="card-body">
                    <div class="alert alert-warning mb-0" role="alert">
                        {MESSAGE_BODY}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<!-- END: MAIN -->
