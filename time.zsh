function now() {
    PT=`env TZ=US/Pacific date -R`
    SH=`env TZ=Asia/Shanghai date -R`
    BP=`env TZ=Europe/Budapest date -R`
    LD=`env TZ=Europe/London date -R`
    TK=`env TZ=Asia/Tokyo date -R`

    echo "Shenzhen       $SH"
    echo "London         $LD"
    echo "Budapest       $BP"
    echo "Pacific        $PT"
    echo "Tokyo          $TK"
}
