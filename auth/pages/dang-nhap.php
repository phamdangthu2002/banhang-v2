<div class="login">
    <form action="./pages/action.php?req=dang-nhap" method="post">
    <a href="../index.php"><img src="../assets/images/1.png" alt="logo" class="img-fluid"></a><br><br>
        <h2>Hello!<br><span>Welcome Back!</span></h2>
        <div id="emailUsernameHelp" class="form-text">Nhập email của bạn.</div>
        <div class="inputBox">
            <input type="email" placeholder="Email"  id="emailUsername" name="emailUsername" aria-describedby="emailUsernameHelp" required autofocus/>
        </div>
        <div id="emailUsernameHelp" class="form-text">Nhập mật khẩu của bạn.</div>
        <div class="inputBox">
            <input type="password" placeholder="Password" id="password" name="password" required/>
        </div>
        <button type="submit" class="btn btn-primary">Đăng nhập</button>
        <div id="emailUsernameHelp" class="form-text">Bạn chưa có tài khoản?<a href='../auth?pages=dang-ky'>đăng ký
                ngay</a></div>
    </form>
</div>