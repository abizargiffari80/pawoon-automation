Given('User berada di halaman produk') do
    verify_dashboard()
    masuk_halaman_produk()
  end
  
  When('Nama dan harga diambil') do
    #dipakein @ agar variable bisa dipanggil di blok lain
    @namaProduk = find('tbody.tbody-striped tr:nth-child(1) td:nth-child(1)').text
    p @namaProduk 
    @hargaProduk = find('tbody.tbody-striped tr:nth-child(1) td:nth-child(3)').text
    p @hargaProduk
  end
  
  Then('Nama dan harga success diambil') do
    expect(@namaProduk).to eql 'PPPocco phone'
    expect(@hargaProduk).to eql 'Rp10.000.000'
  end