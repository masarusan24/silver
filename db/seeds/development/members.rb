names = %w(Masato Teiji Nakayama Osamu Ushiyama Fukuoka TanakaHiro TanakaHide Kacho)
fnames = ["伊藤","中山","下田","登利谷"]
gnames = ["真人","停司","祐輔","健一"]
0.upto(9) do |idx|
  Member.create(
    number: idx + 10,
    name: names[idx],
    full_name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
    email: "#{names[idx]}@example.com",
    birthday: "1981-12-01",
    gender: [0,0,1][idx % 3],
    administrator: (idx==0)
  )
end
