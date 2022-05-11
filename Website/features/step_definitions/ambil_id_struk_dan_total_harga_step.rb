Given('User berada di halaman laporan penjualan dtp') do
    expect(@pusathalaman.dashboard.has_txt_toko_ikan?).to be true
    masuk_laporan_dtp()
    sleep 2
  end
  
  When('User set filter hari ini dan terapkan') do
    find('#reportrange > span').click
    #7 hari terakhir
    find('div.ranges ul li:nth-child(3)').click
    find('div.filter-action-button div:nth-child(1)').click
    tanggalfilter = find('#reportrange > span').text
    p tanggalfilter
    #expect(tanggalfilter).to eql '21-04-2022 - 27-04-2022'
    expect(tanggalfilter).to eql find('#reportrange > span').text
  end
  
  Then('User dapat id struk beserta total amount order terbaru') do
    sleep 5
    @adaDataGa = page.has_text?('Data Tidak Ditemukan')
    if @adaDataGa = true
      p "Ga ada data"
    else
      #dapetin id struk dan total, lalu jadiin variable
      @idStrukStr = find('tbody.tbody-striped tr:nth-child(1) td:nth-child(3)').text
      @totalHargaStr = find('tbody.tbody-striped tr:nth-child(1) td:nth-child(6)').text
      p 'Id Struk = ' + @idStrukStr
      p 'Total Harga = ' + @totalHargaStr
      #buka detail struk dan dapetin 
      find('tbody.tbody-striped tr:nth-child(1) td:nth-child(4)').click
      @adaMarkupStr= find('div.my-fee li:nth-child(2)').text
      p 'Markup Sebesar = ' + @adaMarkupStr
      #hapus karakter Rp dan titik .
      @totalHargaStr.delete!("Rp.")
      @adaMarkupStr.delete!("Rp.")
      #convert ke integer
      @totalHargaInt = @totalHargaStr.to_i
      @adaMarkupInt = @adaMarkupStr.to_i
      #setelah convert, dijumlahin
      @totalSemuaInt = @totalHargaInt + @adaMarkupInt
      #dijadikan ke string lagi
      @totalSemuaStr = @totalSemuaInt.to_s
      #tambahin . dari 3 angka dibelakang
      p "Total semuanya = Rp." + @totalSemuaStr.insert(-4,'.')
    end
  end