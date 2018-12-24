echo -n "Inputkan hari yang anda inginkan : "
read hari

echo -n "Inputkan Pasaran yang anda inginkan : "
read pasaran

case $hari in
	senin | Senin )
    hari_prim=4
		;;
  selasa | Selasa )
    hari_prim=3
    ;;
  rabu | Rabu )
    hari_prim=7
  	;;
  kamis | Kamis  )
    hari_prim=8
    ;;
  jum.at | Jum.at )
    hari_prim=6
  	;;
  sabtu | Sabtu )
    hari_prim=9
    ;;
  minggu | Minggu )
    hari_prim=5
    ;;

	*)
		echo "Hari, tidak dikenali"
		;;
esac

case $pasaran in
	Pon | pon )
    pasaran_prim=7
		;;
  Wage | wage )
    pasaran_prim=4
    ;;
  Kliwon | kliwon )
    pasaran_prim=8
    ;;
  Legi | legi )
    pasaran_prim=5
    ;;
  Paing | paing )
    pasaran_prim=9
    ;;

	*)
		echo "Pasaran, tidak dikenali"
		;;
esac

jawaban=$((pasaran_prim + hari_prim))

case $jawaban in
	1 | 5 | 9 | 13 | 17 )
    echo "Guru"
		;;
  2 | 6 | 10 | 14 | 18 )
    echo "Ratu"
  	;;
  3 | 7 | 11 | 15 | 19 )
    echo "Sempoyong"
    ;;
  4 | 8 | 12 | 16 )
    echo "Rogo"
    ;;

	*)
		echo "Pasaran, tidak dikenali"
		;;
esac
