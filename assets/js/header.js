// Khai báo biến
let searchInput = document.querySelector("#search-box");
let searchIcon = document.querySelector(".navbar-search .icon");

// Hàm tìm kiếm
function search() {
  searchInput.value.length &&
    (window.location.href = "index.php?pages=tim-kiem&tu-khoa=" + slugify(searchInput.value));
}

// Hàm chuyển đổi chuỗi thành dạng slug
function slugify(str) {
  let slug = str.toString().toLowerCase();
  // Chuyển đổi ký tự có dấu thành không dấu
  slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, "a");
  slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, "e");
  slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, "i");
  slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, "o");
  slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, "u");
  slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, "y");
  slug = slug.replace(/đ/gi, "d");

  // Xóa các ký tự đặc biệt
  slug = slug.replace(
    /\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi,
    ""
  );

  // Đổi khoảng trắng thành ký tự gạch ngang
  slug = slug.replace(/ /gi, " - ");

  // Đổi nhiều ký tự gạch ngang liên tiếp thành 1 ký tự gạch ngang
  slug = slug.replace(/\-\-\-\-\-/gi, "-");
  slug = slug.replace(/\-\-\-\-/gi, "-");
  slug = slug.replace(/\-\-\-/gi, "-");
  slug = slug.replace(/\-\-/gi, "-");

  // Xóa các ký tự gạch ngang ở đầu và cuối
  slug = "@" + slug + "@";
  slug = slug.replace(/\@\-|\-\@|\@/gi, "");
  return slug;
}


// Bắt sự kiện nhấn phím Enter khi đang nhập vào ô tìm kiếm
searchInput.onkeydown = function (event) {
  if (event.which === 13) search();
};

// Bắt sự kiện click vào biểu tượng tìm kiếm
searchIcon.onclick = function () {
  search();
};