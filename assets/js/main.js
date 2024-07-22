function checkLogin() {
  const Toast = Swal.mixin({
    toast: true,
    position: "top-end",
    showConfirmButton: false,
    timer: 2000,
    timerProgressBar: true,
    didOpen: (toast) => {
      toast.onmouseenter = Swal.stopTimer;
      toast.onmouseleave = Swal.resumeTimer;
    },
  });
  Toast.fire({
    icon: "warning",
    title: "Bạn cần đăng nhập trước!",
  });
}

// card

$(document).ready(function() {
  $('.card').hover(function() {
      $(this).addClass('shadow');
  }, function() {
      $(this).removeClass('shadow');
  });
});

