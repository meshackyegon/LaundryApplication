<?php
  include('phpqrcode/qrlib.php');
  
    // $text="meshack";
    // QRcode::png($text);
  
    if(isset($_REQUEST['pay'])){
      $path="img/";
      $qrcode= $path.time().".png";
      $qrimage=time().".png";
      $paymode=$_REQUEST['paymode'];
      $payid=$_REQUEST['payid'];
      $payname=$_REQUEST['payname'];
      $paydate=$_REQUEST['paydate'];
      $paytime=$_REQUEST['paytime'];
      $query=mysqli_query($db, "INSERT INTO payment SET paymode='$paymode', payid='$payid', payname='$payname', paydate='$paydate', paytime='$paytime', qrimage='$qrimage'");
      if($query){
        echo"payment successfull";
        ?>
        <script>
          alert("Payment successfull");
        </script>
        <?php
      }else
      {
        echo"payment not successfull";
        ?>
        <script>
          alert("Payment not complete");
        </script>
        <?php
      }
     

    }
    QRcode::png($paymode, $payid, $payname,$paydate, $paytime, $qrcode, 'H',4 ,4);
    echo "<img src='".$qrcode."'>";
 
 ?>