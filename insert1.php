<?php

/**
 * 1. index.phpのフォームの部分がおかしいので、ここを書き換えて、
 * insert.phpにPOSTでデータが飛ぶようにしてください。
 * 2. insert.phpで値を受け取ってください。
 * 3. 受け取ったデータをバインド変数に与えてください。
 * 4. index.phpフォームに書き込み、送信を行ってみて、実際にPhpMyAdminを確認してみてください！
 */

//1. POSTデータ取得
$pet = $_POST['pet'];
$name = $_POST['name'];
$address = $_POST['address'];
$email = $_POST['email'];
$pname = $_POST['pname'];
$sex = $_POST['sex'];
$birth = $_POST['birth'];
$sp = $_POST['sp'];
$mhistory = $_POST['mhistory'];
$hospital = $_POST['hospital'];
$comment = $_POST['text'];
$image = $_FILES['image']['tmp_name'];


// echo $name;
// echo $email;
// echo $content;


//2. DB接続します
try {
  //ID:'root', Password: 'root'
  $pdo = new PDO('mysql:dbname=vet_db;charset=utf8;host=localhost','root','root');
} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage());
}
//例外処理を行っている。例外だと動かなくなるだけなので、tryで行ってダメならcatchでエラーを表示する。



//３．データ登録SQL作成


// 1. SQL文を用意
$stmt = $pdo->prepare("INSERT INTO honer_db(id, pet, name, address, email, pname, sex, birth, sp, mhistory, hospital, comment, image)
VALUES(NULL, :pet, :name, :address, :email, :pname, :sex, :birth, :sp, :mhistory, :hospital, :comment, :image)");

//  2. バインド変数を用意
$stmt->bindValue(':pet', $pet, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':name', $name, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':address', $address, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':email', $email, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':pname', $pname, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':sex', $sex, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':birth', $birth, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':sp', $sp, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':mhistory', $mhistory, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':hospital', $hospital, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':comment', $comment, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':image', $image, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
//bindValue:より安全に管理するためのもの。

//  3. 実行
$status = $stmt->execute();

//４．データ登録処理後
if($status==false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit("ErrorMessage:".$error[2]);
}else{
  //５．index.phpへリダイレクト
  header("Location: page2.php");
  exit;


}
?>
