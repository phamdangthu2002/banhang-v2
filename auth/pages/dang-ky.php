<div class="login">
    <form action="pages/action.php?req=dang-ky" method="post">
    <a href="../index.php"><img src="../assets/images/1.png" alt="logo" class="img-fluid"></a><br><br>
        <h2>Hello!<br><span>Welcome to T-shop!</span></h2>
        <div id="emailUsernameHelp" class="form-text">Nhập vào họ và tên của bạn.</div>
        <div class="inputBox">
            <input type="text" placeholder="Họ và tên" id="tenkh" name="tenkh" required autofocus />
        </div>

        <div id="emailUsernameHelp" class="form-text">Nhập email của bạn.</div>
        <div class="inputBox">
            <input type="email" placeholder="Email"  id="email" name="email" aria-describedby="email" required/>
        </div>

        <div id="emailUsernameHelp" class="form-text">Nhập mật khẩu của bạn.</div>
        <div class="inputBox">
            <input type="password" placeholder="Password" id="password" name="password" required />
        </div>
        <button type="submit" class="btn btn-primary">Đăng ký</button>
        <div id="emailUsernameHelp" class="form-text">Bạn đã có tài khoản?<a href='../auth?pages=dang-nhap'>đăng nhập ngay</a></div>
    </form>
</div>