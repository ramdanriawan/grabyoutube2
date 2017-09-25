$(document).ready(function() {
  var tambah_chanel = $("#tambah_chanel");
  
  tambah_chanel.submit(function(event) {
    event.preventDefault();
    var This = $(This);
    This.css('background-color', 'red');
    
    var data = $(This).serialize();
    
    $.ajax({
      url     : "/index.php/Ctesturl/ctesturlf",
      data    : data,
      success : function(response){
        
        This.css('background-color');
        
        if(response == "success"){
            
            $.ajax({
              url    : "/index.php/Csavedb/csavedbcolumn",
              data   : data,
              success: function(response){
                alert("success menambah data, semua data videos dan playlists akan autoupdate setiap 10 menit, klik tombol get data untuk mendapatkan data secara manual");
              }
            });
          
        }else{
          alert("Gagal menambah url chanel, mungkin salah memasukkan url atau koneksi internet terputus");
        }
      }
      
    })
  
});

var btn_get_data = $("#btn-get-data");

  btn_get_data.click(function(event) {
    event.preventDefault();
    var This = $(This);
    This.css("background-color", "yellow");
    
    $.ajax({
      url: "http://localhost/index.php/Cserveryoutube/cserveryoutubef",
      success: function(response){
        alert("Berhasil mengupdate data chanel");
        This.css('background-color');
      }
    }).fail(function(){
      alert("Gagal mengupdate data chanel");
    })
    
  });
})

