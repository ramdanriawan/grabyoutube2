$(document).ready(function() {
  var tambah_chanel = $("#tambah_chanel");
  
  tambah_chanel.submit(function(event) {
    event.preventDefault();
    var This = $(this);
    This.css('background-color', 'red');
    
    var data = This.serialize();
    
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
                if(response == "success"){
                  alert("success menambah data, semua data videos dan playlists akan autoupdate setiap 10 menit, klik tombol get data untuk mendapatkan data secara manual");
                  window.location.href = window.location.href;
                }else {
                  alert("Gagal menambah url chanel, mungkin terjadi duplicate, atau mungkin salah memasukkan url atau koneksi internet terputus");
                }
              }
            });
          
        }else{
          alert("Gagal menambah url chanel, mungkin terjadi duplicate, atau mungkin salah memasukkan url atau koneksi internet terputus");
        }
      }
      
    })
  
});

var btn_get_data = $("#btn-get-data");

  btn_get_data.click(function(event) {
    event.preventDefault();
    var This = $(this);
    This.css("background-color", "yellow");
    
    $.ajax({
      url: "http://localhost/index.php/Cserveryoutube/cserveryoutubef",
      data: {update : "active"},
      success: function(response){
        alert("Berhasil mengupdate data chanel");
        This.css('background-color');
      }
    }).fail(function(){
      alert("Gagal mengupdate data chanel");
    })
    
  });
  
  var a_delete = $("a.delete");
  
  a_delete.click(function(event){
    event.preventDefault();
    var This = $(this);
    var href = This.attr("href");
    var id = This.attr("data-id");
    var media = This.attr("data-media");
    var nilai = window.confirm(`Apakah Anda Yakin Akan Menghapus media ${media}`);
    
    if(nilai){
      $.ajax({
        url : href,
        success: function(response){
          if(response == "success"){
            alert("Data Berhasil Di Hapus");
            window.location.href = window.location.href;
          }else {
            alert("Gagal Menghapus Data, Silakan Coba Lagi!");
          }
        }
      }).fail(function(){
        alert("Gagal Terhubung Ke Server")
      })
    }
    
  })
})

