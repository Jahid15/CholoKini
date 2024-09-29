<?php
require_once('vendor/autoload.php');

$callbackURL = '';

$app_key = '4f6o0cjiki2rfm34kfdadl1eqq';
$app_secret = '2is7hdktrekvrbljjh44ll3d9l1dtjo4pasmjvs5vl5qr3fug4b';
$username = 'sandboxTokenizedUser02';
$password = 'sandboxTokenizedUser02@12345';
$base_url = 'index.php';

// Start Grant Token
$client = new \GuzzleHttp\Client();
$response = $client->request(
    'POST',
    $base_url . '/v1.2.0-beta/tokenized/checkout/token/grant',
    [
        'body' => "{'app_key':$app_key, 'app_secret':$app_secret}",
        'headers' => [
            'accept' => 'application/json',
            'content-type' => 'application/json',
            'password' => $password,
            'username' => $username,
        ],
    ]
);
$response = json_decode($response->getBody());
$id_token = $response->id_token;
// End Grant Token





if (isset($_GET['paid_amount'])) {
    $amount = $_GET['paid_amount'];

    $InvoiceNumber = 'shop' . rand();


    // Strat Create Payment
    $auth = $id_token;
    $requestbody = array(
        'mode' => '0011',
        'amount' => $amount,
        'currency' => 'BDT',
        'intent' => 'sale',
        'payerReference' => $InvoiceNumber,
        'merchantInvoiceNumber' => $InvoiceNumber,
        'callbackURL' => $callbackURL
    );
    $url = curl_init($base_url . '/v1.2.0-beta/tokenized/checkout/create');
    $requestbodyJson = json_encode($requestbody);
    $header = array(
        'Content-Type:application/json',
        'Authorization:' . $auth,
        'X-APP-Key:' . $app_key
    );
    curl_setopt($url, CURLOPT_HTTPHEADER, $header);
    curl_setopt($url, CURLOPT_CUSTOMREQUEST, "POST");
    curl_setopt($url, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($url, CURLOPT_POSTFIELDS, $requestbodyJson);
    curl_setopt($url, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($url, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
    $resultdata = curl_exec($url);
    curl_close($url);
    $obj = json_decode($resultdata);
    header("Location: " . $obj->{'bkashURL'});
    // End Create Payment
}






// execute payment
if (isset($_GET['paymentID'], $_GET['status']) && $_GET['status'] == 'success') {
    $paymentID = $_GET['paymentID'];
    $auth = $id_token;
    $post_token = array('paymentID' => $paymentID);
    $url = curl_init($base_url . '/v1.2.0-beta/tokenized/checkout/execute');
    $posttoken = json_encode($post_token);
    $header = array(
        'Content-Type:application/json',
        'Authorization:' . $auth,
        'X-APP-Key:' . $app_key
    );
    curl_setopt($url, CURLOPT_HTTPHEADER, $header);
    curl_setopt($url, CURLOPT_CUSTOMREQUEST, "POST");
    curl_setopt($url, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($url, CURLOPT_POSTFIELDS, $posttoken);
    curl_setopt($url, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($url, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
    $resultdata = curl_exec($url);
    curl_close($url);
    $obj = json_decode($resultdata);

    $customerMsisdn = $obj->customerMsisdn;
    $paymentID = $obj->paymentID;
    $trxID = $obj->trxID;
    $merchantInvoiceNumber = $obj->merchantInvoiceNumber;
    $time = $obj->paymentExecuteTime;
    $transactionStatus = $obj->transactionStatus;
    $amount = $obj->amount;

    print_r($obj);
}
// execute payment
